import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jjogji/application/app_notifications/app_notifications_bloc.dart';
import 'package:jjogji/domain/notifications/notification.dart';
import 'package:jjogji/infrastructure/notifications/app_notification_dto.dart';
import 'package:jjogji/presentation/screens/notifications/widgets/n_alert.dart';
import 'package:jjogji/presentation/screens/notifications/widgets/n_comment.dart';
import 'package:jjogji/presentation/screens/notifications/widgets/n_comment_reply.dart';
import 'package:jjogji/presentation/screens/notifications/widgets/n_follow.dart';
import 'package:jjogji/presentation/screens/notifications/widgets/n_info.dart';
import 'package:jjogji/presentation/screens/notifications/widgets/n_like.dart';
import 'package:jjogji/presentation/screens/settings/view/notification_settings_view.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';
import 'package:sliver_tools/sliver_tools.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  static const routeName = '/notifications';

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    _scrollController.addListener(_onScroll);
    BlocProvider.of<AppNotificationsBloc>(context)
        .add(const AppNotificationsEvent.pullNotifications());

    super.initState();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent) {
      BlocProvider.of<AppNotificationsBloc>(context)
          .add(const AppNotificationsEvent.loadMoreNotifications());
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        BlocProvider.of<AppNotificationsBloc>(context)
            .add(const AppNotificationsEvent.setZeroNotReadCount());
        return true;
      },
      child: BlocBuilder<AppNotificationsBloc, AppNotificationsState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColorScheme.backgroundColor,
            body: RefreshIndicator(
              onRefresh: () async {
                BlocProvider.of<AppNotificationsBloc>(context)
                    .add(const AppNotificationsEvent.refreshList());
              },
              child: Scrollbar(
                child: CustomScrollView(
                  controller: _scrollController,
                  physics: const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics(),),
                  slivers: [
                    SliverAppBar(
                      backgroundColor: Colors.transparent,
                      title:
                          const UIText('Notifications', style: UITextStyles.headLine),
                      actions: [
                        IconButton(
                          onPressed: () {
                            showModalBottomSheet(
                              backgroundColor: Colors.transparent,
                              isScrollControlled: true,
                              context: context,
                              builder: (context) {
                                return BackdropFilter(
                                  filter:
                                      ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                                  child: NotificationSettingsView(),
                                );
                              },
                            );
                          },
                          icon: const Icon(FontAwesomeIcons.sliders),
                          color: Colors.white,
                        )
                      ],
                    ),
                    SliverPadding(
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      sliver: buildSlivers(
                        state.appNotifications,
                      ),
                    ),
                    if (state.isFetchingNew)
                      SliverToBoxAdapter(
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: const Center(
                            child: UIText(
                              'Fetching new notifications',
                              style: UITextStyles.headLine,
                            ),
                          ),
                        ),
                      ),
                    if (state.hasReachedMax)
                      SliverToBoxAdapter(
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: const Center(
                            child: UIText(
                              'No more notifications',
                              style: UITextStyles.headLine,
                            ),
                          ),
                        ),
                      )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget buildSlivers(List<AppNotification> nfsAll) {
    final notReadNfs =
        nfsAll.where((element) => element.hasRead == false).toList();
    final readNfs = nfsAll.where((element) => element.hasRead == true).toList();
    if (notReadNfs.isEmpty) {
      return _buildSlivers(nfsAll);
    } else {
      return MultiSliver(
        children: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70.0),
              child: Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      // gradient that indicates something new with green color
                      colors: [
                        Colors.green,
                        Colors.greenAccent,
                        Colors.cyanAccent
                      ],),
                  borderRadius: BorderRadius.circular(23),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(23),
                      color: Colors.black87,
                    ),
                    child: Center(
                      child: UIText(
                        'New!',
                        style: UITextStyles.headLine.copyWith(
                          fontSize: 30,
                          shadows: [
                            const Shadow(
                              blurRadius: 5.0,
                              offset: Offset(1.0, 1.0),
                            ),
                          ],
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          _buildSlivers(notReadNfs),
          const SliverToBoxAdapter(
            child: Divider(
              color: Colors.grey,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: const UIText(
                'Earlier',
                style: UITextStyles.headLine,
              ),
            ),
          ),
          _buildSlivers(readNfs),
        ],
      );
    }
  }

  SliverList _buildSlivers(List<AppNotification> nfs) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                Builder(
                  builder: (_) {
                    switch (nfs[index].payload.type) {
                      case NotificationType.alert:
                        return NAlert(nfs[index]);
                      case NotificationType.info:
                        return NInfo(nfs[index]);
                      case NotificationType.like:
                        return NLike(nfs[index]);
                      case NotificationType.comment:
                        return NComment(nfs[index]);
                      case NotificationType.commentReply:
                        return NCommenReply(nfs[index]);
                      case NotificationType.follow:
                        return NFollow(nfs[index]);
                      default:
                        return Container();
                    }
                  },
                ),
                const Divider(
                  color: Colors.grey,
                )
              ],
            ),
          );
        },
        childCount: nfs.length,
      ),
    );
  }
}
