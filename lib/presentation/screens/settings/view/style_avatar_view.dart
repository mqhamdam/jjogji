import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jjogji/application/profile_pic_styling/profile_pic_styling_bloc.dart';
import 'package:jjogji/domain/user/user.dart';
import 'package:jjogji/presentation/screens/settings/helpers/func.dart';
import 'package:jjogji/presentation/screens/settings/widgets/slider_list_tile.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';
import 'package:jjogji/presentation/widgets/disableale.dart';
import 'package:jjogji/presentation/widgets/user_avatar.dart';

class StyleAvatarView extends StatefulWidget {
  const StyleAvatarView(
    this.profilePic, {
    required this.currentReputation,
    super.key,
  });
  final ProfilePic profilePic;
  final int currentReputation;
  @override
  State<StyleAvatarView> createState() => _StyleAvatarViewState();
}

class _StyleAvatarViewState extends State<StyleAvatarView>
    with TickerProviderStateMixin {
  final ProfilePicStylingBloc _bloc = ProfilePicStylingBloc();

  late final TabController _tabController =
      TabController(length: 3, vsync: this);

  @override
  void initState() {
    _bloc.add(ProfilePicStylingEvent.started(widget.profilePic));
    _tabController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _bloc.close();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _bloc,
      child: Builder(
        builder: (context) {
          return BlocBuilder<ProfilePicStylingBloc, ProfilePicStylingState>(
            builder: (context, state) {
              return SizedBox(
                height: MediaQuery.of(context).size.height - 150,
                child: ClipRRect(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(33)),
                  child: Scaffold(
                    backgroundColor: AppColorScheme.cardColor,
                    appBar: TabBar(
                      controller: _tabController,
                      tabs: [
                        Tab(
                          height: 70,
                          child: TrianglePolygon.regular(
                            radialGradius:
                                state.profilePic.styles.trianglePPStyle.radius,
                            colors: state
                                .profilePic.styles.trianglePPStyle.colors
                                .map((element) {
                              return Color(element.getOrCrash());
                            }).toList(),
                          ),
                        ),
                        Tab(
                          height: 70,
                          child: Pentagon.regular(
                            begin: state
                                .profilePic.styles.pentagonPPStyle.beginXY
                                .toAlignment(),
                            end: state.profilePic.styles.pentagonPPStyle.endXY
                                .toAlignment(),
                            colors: _bloc.mapColors(
                              state.profilePic.styles.pentagonPPStyle.colors,
                            ),
                          ),
                        ),
                        Tab(
                          height: 70,
                          child: Heptagon(
                            epicenter: state
                                .profilePic.styles.heptagonPPStyle.epicenter
                                .toAlignment(),
                            startAngle: state
                                .profilePic.styles.heptagonPPStyle.startAngle,
                            endAngle: state
                                .profilePic.styles.heptagonPPStyle.endAngle,
                            colors: _bloc.mapColors(
                              state.profilePic.styles.heptagonPPStyle.colors,
                            ),
                          ),
                        ),
                      ],
                    ),
                    body: Stack(
                      children: [
                        TabBarView(
                          physics: const BouncingScrollPhysics(),
                          controller: _tabController,
                          children: [
                            Disableable(
                              disable: widget.currentReputation < 3000,
                              disabledWidget: const Padding(
                                padding: EdgeInsets.all(15.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: UIText(
                                        'Reputation not enough\n earn 3000 reputation to get access to this feature',
                                        style: UITextStyles.headLine,
                                        maxLines: 5,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              child: buildFirstView(state, context),
                            ),
                            Disableable(
                              disable: widget.currentReputation < 5000,
                              disabledWidget: const Padding(
                                padding: EdgeInsets.all(15.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: UIText(
                                        'Reputation not enough\n earn 5000 reputation to get access to this feature',
                                        style: UITextStyles.headLine,
                                        maxLines: 5,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              child: buildSecondView(state, context),
                            ),
                            Disableable(
                              disable: widget.currentReputation < 7000,
                              disabledWidget: const Padding(
                                padding: EdgeInsets.all(15.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: UIText(
                                        'Reputation not enough\n earn 7000 reputation to get access to this feature',
                                        style: UITextStyles.headLine,
                                        maxLines: 5,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              child: buildThirdView(state, context),
                            ),
                          ],
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Builder(
                                  builder: (_) {
                                    if (_tabController.index == 0 &&
                                        widget.currentReputation < 3000) {
                                      return const SizedBox();
                                    } else if (_tabController.index == 1 &&
                                        widget.currentReputation < 5000) {
                                      return const SizedBox();
                                    } else if (_tabController.index == 2 &&
                                        widget.currentReputation < 7000) {
                                      return const SizedBox();
                                    }
                                    return AnimatedCrossFade(
                                      duration: kThemeAnimationDuration,
                                      crossFadeState: _tabController.index !=
                                              _bloc.getIndexOfChoosedStyle
                                          ? CrossFadeState.showFirst
                                          : CrossFadeState.showSecond,
                                      secondChild: const SizedBox(),
                                      firstChild: ElevatedButton(
                                        style: UITextButtonStyles.simpleButton,
                                        onPressed: () {
                                          _bloc.add(
                                            ProfilePicStylingEvent
                                                .changeChoosedPolygonStyle(
                                              _tabController.index,
                                            ),
                                          );
                                        },
                                        child: const UIText(
                                          'Choose This Style',
                                          style: UITextStyles.mainTitle,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                AnimatedCrossFade(
                                  duration: kThemeAnimationDuration,
                                  crossFadeState: _bloc.isChanged
                                      ? CrossFadeState.showFirst
                                      : CrossFadeState.showSecond,
                                  secondChild: const SizedBox(),
                                  firstChild: ElevatedButton(
                                    style: UITextButtonStyles.simpleButton,
                                    onPressed: () {
                                      Navigator.of(context).pop(
                                        _bloc.state.profilePic,
                                      );
                                    },
                                    child: const UIText(
                                      'Save Changes',
                                      style: UITextStyles.mainTitle,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  ListView buildThirdView(ProfilePicStylingState state, BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        ListTile(
          title:
              const UIText('Epicenter Position', style: UITextStyles.mainTitle),
          subtitle: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SliderListTile(
                min: -1.0,
                max: 1.0,
                title: 'X Position',
                value: state.profilePic.styles.heptagonPPStyle.epicenter.value,
                onChanged: (v) {
                  _bloc.add(
                    ProfilePicStylingEvent.changeSGXEpicenterPosition(v),
                  );
                },
              ),
              SliderListTile(
                min: -1.0,
                max: 1.0,
                title: 'Y Position',
                value: state.profilePic.styles.heptagonPPStyle.epicenter.value2,
                onChanged: (v) {
                  _bloc.add(
                    ProfilePicStylingEvent.changeSGYEpicenterPosition(v),
                  );
                },
              ),
            ],
          ),
        ),
        SliderListTile(
          min: 0.0,
          max: 3,
          title: 'Start Angle',
          value: state.profilePic.styles.heptagonPPStyle.startAngle,
          onChanged: (v) {
            _bloc.add(ProfilePicStylingEvent.changeSGStartAngle(v));
          },
        ),
        SliderListTile(
          min: 1.0,
          max: state.profilePic.styles.heptagonPPStyle.colors.length.toDouble(),
          title: 'End Angle',
          value: state.profilePic.styles.heptagonPPStyle.endAngle,
          onChanged: (v) {
            _bloc.add(ProfilePicStylingEvent.changeSGSEndAngle(v));
          },
        ),
        colorListTile(
          context,
          _bloc.mapColors(state.profilePic.styles.heptagonPPStyle.colors),
          (oldIndex, newIndex) => _bloc
              .add(ProfilePicStylingEvent.changeSGOrder(oldIndex, newIndex)),
          (picked) =>
              _bloc.add(ProfilePicStylingEvent.addSGColor(picked.value)),
          (index) => _bloc.add(
            ProfilePicStylingEvent.deleteSGColor(index),
          ),
        ),
        const SizedBox(
          height: 140,
        ),
      ],
    );
  }

  ListView buildSecondView(ProfilePicStylingState state, BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        const SizedBox(
          height: 10,
        ),
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(33)),
          color: Colors.black12,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ListTile(
                  title: const UIText(
                    'Start Position',
                    style: UITextStyles.mainTitle,
                  ),
                  subtitle: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SliderListTile(
                        min: -1.0,
                        max: 1.0,
                        title: 'X Position',
                        value: state
                            .profilePic.styles.pentagonPPStyle.beginXY.value,
                        onChanged: (x) {
                          _bloc.add(
                            ProfilePicStylingEvent.changeLGXStartPosition(x),
                          );
                        },
                      ),
                      SliderListTile(
                        min: -1.0,
                        max: 1.0,
                        title: 'Y Position',
                        value: state
                            .profilePic.styles.pentagonPPStyle.beginXY.value2,
                        onChanged: (v) {
                          _bloc.add(
                            ProfilePicStylingEvent.changeLGYStartPosition(v),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                ListTile(
                  title: const UIText(
                    'End Position',
                    style: UITextStyles.mainTitle,
                  ),
                  subtitle: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SliderListTile(
                        min: -1.0,
                        max: 1.0,
                        title: 'X Position',
                        value:
                            state.profilePic.styles.pentagonPPStyle.endXY.value,
                        onChanged: (v) {
                          _bloc.add(
                            ProfilePicStylingEvent.changeLGXEndPosition(v),
                          );
                        },
                      ),
                      SliderListTile(
                        min: -1.0,
                        max: 1.0,
                        title: 'Y Position',
                        value: state
                            .profilePic.styles.pentagonPPStyle.endXY.value2,
                        onChanged: (v) {
                          _bloc.add(
                            ProfilePicStylingEvent.changeLGYEndPosition(v),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const Divider(
          color: Colors.black,
        ),
        colorListTile(
          context,
          _bloc.mapColors(state.profilePic.styles.pentagonPPStyle.colors),
          (oldIndex, newIndex) => _bloc.add(
            ProfilePicStylingEvent.changeLGOrder(oldIndex, newIndex),
          ),
          (picked) => _bloc.add(
            ProfilePicStylingEvent.addLGColor(
              picked.value,
            ),
          ),
          (index) => _bloc.add(
            ProfilePicStylingEvent.deleteLGColor(index),
          ),
        ),
        const SizedBox(
          height: 140,
        ),
      ],
    );
  }

  ListView buildFirstView(ProfilePicStylingState state, BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        SliderListTile(
          max: 1.0,
          min: 0.1,
          title: "Radius",
          value: state.profilePic.styles.trianglePPStyle.radius,
          onChanged: (d) {
            BlocProvider.of<ProfilePicStylingBloc>(context).add(
              ProfilePicStylingEvent.changeRGRadius(d),
            );
          },
        ),
        const Divider(
          color: Colors.black,
        ),
        colorListTile(
          context,
          _bloc.mapColors(state.profilePic.styles.trianglePPStyle.colors),
          (oldIndex, newIndex) {
            _bloc.add(ProfilePicStylingEvent.changeRGOrder(oldIndex, newIndex));
          },
          (c) {
            _bloc.add(ProfilePicStylingEvent.addRGColor(c.value));
          },
          (index) {
            _bloc.add(ProfilePicStylingEvent.deleteRGColor(index));
          },
        ),
        const SizedBox(
          height: 140,
        ),
      ],
    );
  }
}
