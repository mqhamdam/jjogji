import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:jjogji/application/pers_nav_bar/pers_nav_bar_bloc.dart';
import 'package:jjogji/presentation/router/pers_bottom_sheet/pers_bottom_nav_bar_base.dart';
import 'package:jjogji/presentation/screens/intro_pages/welcome_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String routeName = "/";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 
  

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<PersNavBarBloc>(context).add(const PersNavBarEvent.show());
    return WelcomePage(
      child: KeyboardVisibilityBuilder(
        builder: (context, isVisibile) {
          if (isVisibile) {
            BlocProvider.of<PersNavBarBloc>(context)
                .add(const PersNavBarEvent.hide());
          } else {
            BlocProvider.of<PersNavBarBloc>(context)
                .add(const PersNavBarEvent.show());
          }
          return const Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.transparent,
            body: PersNavBarBase(),
          );
        },
      ),
    );
  }
}
