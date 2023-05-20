import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jjogji/application/app_tts/app_tts_bloc.dart';
import 'package:marquee/marquee.dart';

class TTSPlayer extends StatefulWidget {
  const TTSPlayer({super.key});

  @override
  State<TTSPlayer> createState() => _TTSPlayerState();
}

class _TTSPlayerState extends State<TTSPlayer> with TickerProviderStateMixin {
  late final AnimationController _animationController = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 250),
  );
  late final Animation<double> _animation = CurvedAnimation(
    parent: _animationController,
    curve: Curves.easeInOut,
  );
  @override
  void initState() {
    _animationController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  bool close = false;
  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppTtsBloc, AppTtsState>(
      builder: (context, state) {
        if (state.ttsPlayState == TTSPlayState.play) {
          _animationController.forward();
        } else if (state.ttsPlayState == TTSPlayState.pause) {
          _animationController.reverse();
        } else if (state.ttsPlayState == TTSPlayState.stop) {
          _animationController.reverse();
        }
        if (state.ttsPlayState == TTSPlayState.none) {
          close = true;
        } else {
          close = false;
        }
        if (close) {
          return Container();
        } else {
          return Material(
            color: Colors.transparent,
            elevation: 20,
            child: AnimatedContainer(
              // width: MediaQuery.of(context).size.width * 0.912,
              decoration: BoxDecoration(
                color: Colors.tealAccent,
                borderRadius: BorderRadius.circular(23),
              ),
              duration: const Duration(milliseconds: 500),
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: AnimatedContainer(
                  // width: MediaQuery.of(context).size.width * 0.912,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(225, 0, 0, 0),
                    borderRadius: BorderRadius.circular(23),
                  ),
                  duration: const Duration(milliseconds: 500),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: IntrinsicHeight(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ///
                          GestureDetector(
                            onTap: () {
                              BlocProvider.of<AppTtsBloc>(context)
                                  .add(const AppTtsEvent.stop());
                              // setState(() {
                              //   close = true;
                              // });
                            },
                            child: Card(
                              color: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(23),
                              ),
                              child: const Padding(
                                  padding: EdgeInsets.all(2.0),
                                  child: Icon(
                                    FontAwesomeIcons.xmark,
                                    size: 20,
                                    color: Colors.white,
                                  ),),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AnimatedContainer(
                                height: 15,
                                duration: kThemeAnimationDuration,
                                width:
                                    MediaQuery.of(context).size.width * 0.280,
                                child: Marquee(
                                  text: state.textsToSpeech.isEmpty
                                      ? "No text to speech"
                                      : state.textsToSpeech[
                                          state.currentTextIndex],
                                  style: const TextStyle(
                                      fontSize: 12, color: Colors.white,),
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  blankSpace: 20.0,
                                  velocity: 100.0,
                                  pauseAfterRound: const Duration(seconds: 1),
                                  startPadding: 10.0,
                                  accelerationDuration: const Duration(seconds: 1),
                                  accelerationCurve: Curves.linear,
                                  decelerationDuration:
                                      const Duration(milliseconds: 500),
                                  decelerationCurve: Curves.easeOut,
                                ),
                              ),
                            ],
                          ),
                          const VerticalDivider(
                            color: Colors.black,
                            thickness: 1,
                          ),
                          GestureDetector(
                            onTap: () {
                              BlocProvider.of<AppTtsBloc>(context)
                                  .add(const AppTtsEvent.playButtonPressed());
                            },
                            child: Card(
                              color: Colors.tealAccent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(23),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: AnimatedIcon(
                                  icon: AnimatedIcons.play_pause,
                                  progress: _animation,
                                  size: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          //
                          //next Icon button
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
