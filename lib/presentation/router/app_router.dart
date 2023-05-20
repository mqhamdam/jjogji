import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jjogji/application/auth/auth_bloc.dart';
import 'package:jjogji/application/forms/user_form/user_form_bloc.dart';
import 'package:jjogji/application/post/post_bloc.dart';
import 'package:jjogji/application/user/user_bloc.dart';
import 'package:jjogji/domain/comment/comment.dart';
import 'package:jjogji/domain/core/value_object.dart';
import 'package:jjogji/infrastructure/post/post_repo.dart';
import 'package:jjogji/infrastructure/user/user_repo.dart';
import 'package:jjogji/presentation/router/route_names.dart';
import 'package:jjogji/presentation/screens/achievements_screen.dart';
import 'package:jjogji/presentation/screens/edit_user_data_screen.dart';
import 'package:jjogji/presentation/screens/home_screen.dart';
import 'package:jjogji/presentation/screens/main/profile_screen.dart';
import 'package:jjogji/presentation/screens/notifications/notifications_screen.dart';
import 'package:jjogji/presentation/screens/saved_posts_screen.dart';
import 'package:jjogji/presentation/screens/search/search_screen.dart';
import 'package:jjogji/presentation/screens/settings/account_settings_screen.dart';
import 'package:jjogji/presentation/screens/settings/app_settings_screen.dart';
import 'package:jjogji/presentation/views/comments_list_view.dart';
import 'package:jjogji/presentation/views/followers_list_view.dart';

class RouteArguments {
  final Map<String, dynamic> args;
  const RouteArguments(this.args);
}

class AppRouter {
  final UserRepo _userRepo = UserRepo.instance;
  final PostRepo _postRepo = PostRepo.instance;
  BuildContext? context;
  Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case HomeScreen.routeName:
        return pageBuilder(const HomeScreen(), settings);

      case ProfileScreen.routeName:
        final routeArgs = settings.arguments as RouteArguments?;

        return pageBuilder(
          ProfileScreen(
            routeArgs!.args['userUUID'] as String,
            routeArgs.args['isCurrentUser'] as bool,
          ),
          settings,
        );

      case EditUserDataScreen.routeName:
        return pageBuilder(
          BlocProvider(
            create: (context) =>
                UserFormBloc()..add(const UserFormEvent.getInitialData()),
            child: const EditUserDataScreen(),
          ),
          settings,
        );

      ///
      case SavedPostsScreen.routeName:
        return pageBuilder(const SavedPostsScreen(), settings);

      ///
      case RouteNames.likes:
        final args = settings.arguments! as RouteArguments;
        return pageBuilder(
          UsersListView(
            'Likes',
            UUID.fromDB(args.args['uuid'] as String),
            _postRepo.getLikes,
          ),
          settings,
        );
      case AchievementsScreen.routeName:
        final args = settings.arguments! as RouteArguments;

        return pageBuilder(
          AchievementsScreen(args.args['userBloc'] as UserBloc),
          settings,
        );
      case RouteNames.following:
        final args = settings.arguments as RouteArguments?;
        return pageBuilder(
          UsersListView(
            'Subscriptions',
            UUID.fromDB(args!.args['uuid'] as String),
            _userRepo.getSubscriptions,
          ),
          settings,
        );

      case RouteNames.followers:
        final args = settings.arguments! as RouteArguments;
        return pageBuilder(
          UsersListView(
            'Followers',
            UUID.fromDB(args.args['uuid'] as String),
            _userRepo.getSubscribers,
          ),
          settings,
        );
      case RouteNames.besties:
        final args = settings.arguments! as RouteArguments;
        return pageBuilder(
          UsersListView(
            'Besties',
            UUID.fromDB(args.args['uuid'] as String),
            _userRepo.getBesties,
          ),
          settings,
        );
      case CommentsListView.routeName:
        final a = settings.arguments! as RouteArguments;
        return pageBuilder(
          CommentsListView(
            a.args['postblocOrAppComment'] as Either<PostBloc, AppComment>,
          ),
          settings,
        );
      case NotificationScreen.routeName:
        return pageBuilder(const NotificationScreen(), settings);
      case AccountSettingsScreen.routeName:
        return pageBuilder(const AccountSettingsScreen(), settings);
      case AppSettings.routeName:
        return pageBuilder(const AppSettings(), settings);
      case AppSearchScreen.routeName:
        return pageBuilder(const AppSearchScreen(), settings);
      default:
        return pageBuilder(Container(), settings);
    }
  }

  // push to user page
  static void pushToUserPage(
    UUID useruuid, {
    required BuildContext context,
  }) {
    final String userid = useruuid.getOrCrash();
    final bool isCurrentUser =
        BlocProvider.of<AuthBloc>(context).isCurrentUser(useruuid);
    Navigator.of(context).pushNamed(
      ProfileScreen.routeName,
      arguments: RouteArguments(
        {
          'userUUID': userid,
          'isCurrentUser': isCurrentUser,
        },
      ),
    );
  }
}

MaterialPageRoute<dynamic> pageBuilder(
  Widget screenWidget,
  RouteSettings routeSettings,
) {
  //print("router");

  return MaterialPageRoute(
    allowSnapshotting: false,
    settings: routeSettings,
    builder: (context) {
      return screenWidget;
    },
  );
}
