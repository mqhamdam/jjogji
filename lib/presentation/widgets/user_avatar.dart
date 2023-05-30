import 'dart:io';
import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polygon/flutter_polygon.dart';
import 'package:jjogji/domain/core/value_object.dart';
import 'package:jjogji/domain/user/user.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';
import 'package:json_annotation/json_annotation.dart';

Widget resolveProfilePic(
  ProfilePic profile, {
  bool isLarge = false,
  File? fileImage,
}) {
  switch (profile.choosedPolygon) {
    case Polygons.triangle:
      return SizedBox(
        height: isLarge ? 100 : 70,
        child: TrianglePolygon.fromStyle(
          profile.styles.trianglePPStyle,
          profile.imageUrl,
          isLarge ? 100 : 70,
          fileImage,
        ),
      );
    case Polygons.pentagon:
      return SizedBox(
        height: isLarge ? 100 : 70,
        child: Pentagon.fromStyle(
          profile.styles.pentagonPPStyle,
          profile.imageUrl,
          isLarge ? 100 : 70,
          fileImage,
        ),
      );
    case Polygons.heptagon:
      return SizedBox(
        height: isLarge ? 100 : 70,
        child: Heptagon.fromStyle(
          profile.styles.heptagonPPStyle,
          profile.imageUrl,
          fileImage,
        ),
      );
    default:
      return UserSimpleAvatar(
        isLarge ? 45 : 25,
        imageUrl: profile.imageUrl,
        fileImage: fileImage,
      );
  }
}

@JsonEnum()
enum Polygons { triangle, pentagon, heptagon }

class Polygon {}

class UserSimpleAvatar extends StatelessWidget {
  const UserSimpleAvatar(this.size, {this.imageUrl, this.fileImage, super.key});
  final double size;
  final NetworkImageURL? imageUrl;
  final File? fileImage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        left: 5,
        right: 5,
        bottom: 5,
      ),
      child: CircleAvatar(
        radius: size,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: SizedBox.fromSize(
            size: Size.fromRadius(size),
            child: fileImage != null
                ? Image.file(
                    fileImage!,
                    fit: BoxFit.cover,
                  )
                : imageUrl != null
                    ? CachedNetworkImage(
                        progressIndicatorBuilder:
                            (context, url, downloadProgress) =>
                                CircularProgressIndicator(
                          value: downloadProgress.progress,
                        ),
                        imageUrl: imageUrl!.getOrCrash(),
                        fit: BoxFit.cover,
                      )
                    : Image.asset(
                        'assets/images/avatar/02.png',
                        fit: BoxFit.cover,
                      ),
          ),
        ),
      ),
    );
  }
}

class TrianglePolygon extends StatelessWidget with Polygon {
  const TrianglePolygon(
    this.radius, {
    this.colors,
    this.radialGradius,
    this.imageUrl,
    this.fileImage,
    super.key,
  });

  factory TrianglePolygon.regular({
    List<Color>? colors,
    double? radialGradius,
    NetworkImageURL? imageUrl,
  }) {
    return TrianglePolygon(
      70,
      colors: colors,
      imageUrl: imageUrl,
      radialGradius: radialGradius,
    );
  }
  factory TrianglePolygon.fromStyle(
    TrianglePPStyle style,
    NetworkImageURL? imageUrl,
    double size,
    File? fileImage,
  ) {
    return TrianglePolygon(
      size,
      colors: style.colors.map((element) {
        return Color(element.value.getOrElse(() => 0));
      }).toList(),
      radialGradius: style.radius,
      imageUrl: imageUrl,
      fileImage: fileImage,
    );
  }

  factory TrianglePolygon.large() {
    return const TrianglePolygon(100);
  }
  final double radius;
  final double? radialGradius;
  final List<Color>? colors;
  final NetworkImageURL? imageUrl;
  final File? fileImage;

  @override
  Widget build(BuildContext context) {
    final int n = colors!.length;
    final List<double> numbers = [];

    for (int i = 1; i <= n; i++) {
      final double pieceSize = i / n;
      numbers.add(pieceSize);
    }

    return Transform.translate(
      offset: const Offset(0, -5),
      child: Transform.scale(
        scale: radius >= 100 ? 5 : 1.2,
        child: ClipPolygon(
          boxShadows: [PolygonBoxShadow(color: Colors.black, elevation: 8)],
          sides: 3,
          rotate: 180,
          borderRadius: radius >= 100 ? 120 : 120,
          child: AnimatedContainer(
            duration: kThemeAnimationDuration,
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: colors ?? [Colors.red, Colors.yellow, Colors.green],
                radius: radialGradius ?? 1,
              ),
            ),
            padding: const EdgeInsets.all(2),
            child: Stack(
              children: [
                Transform.scale(
                  scale: radius >= 100 ? 0.80 : 0.85,
                  child: ClipPolygon(
                    sides: 3,
                    borderRadius: 120,
                    rotate: 180,
                    child: Container(
                      color: Colors.black87,
                    ),
                  ),
                ),
                Transform.scale(
                  scale: radius >= 100 ? 0.75 : 0.80,
                  child: ClipPolygon(
                    sides: 3,
                    borderRadius: 120,
                    rotate: 180,
                    child: Transform.scale(
                      scale: radius >= 100 ? 0.3 : 0.9,
                      child: Transform.scale(
                        scale: 0.8,
                        child: fileImage != null
                            ? Image.file(
                                fileImage!,
                                fit: BoxFit.cover,
                              )
                            : imageUrl != null
                                ? CachedNetworkImage(
                                    progressIndicatorBuilder:
                                        (context, url, downloadProgress) =>
                                            CircularProgressIndicator(
                                      value: downloadProgress.progress,
                                    ),
                                    imageUrl: imageUrl!.getOrCrash(),
                                    fit: BoxFit.cover,
                                  )
                                : Image.asset(
                                    'assets/images/avatar/02.png',
                                    fit: BoxFit.cover,
                                  ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Pentagon extends StatelessWidget with Polygon {
  const Pentagon(
    this.radius, {
    this.colors,
    this.begin,
    this.end,
    this.imageUrl,
    this.fileImage,
    super.key,
  });

  final double radius;
  final List<Color>? colors;
  final Alignment? begin;
  final Alignment? end;
  final NetworkImageURL? imageUrl;
  final File? fileImage;

  factory Pentagon.fromStyle(
    PentagonPPStyle style,
    NetworkImageURL? imageUrl,
    double size,
    File? fileImage,
  ) {
    return Pentagon(
      size,
      colors: style.colors.map((element) {
        return Color(element.value.getOrElse(() => 0));
      }).toList(),
      begin: Alignment(style.beginXY.value, style.beginXY.value2),
      end: Alignment(style.endXY.value, style.endXY.value2),
      imageUrl: imageUrl,
      fileImage: fileImage,
    );
  }

  factory Pentagon.regular({
    List<Color>? colors,
    Alignment? begin,
    Alignment? end,
    NetworkImageURL? imageUrl,
  }) {
    return Pentagon(
      70,
      colors: colors,
      begin: begin,
      end: end,
      imageUrl: imageUrl,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.1,
      child: ClipPolygon(
        boxShadows: [PolygonBoxShadow(color: Colors.black, elevation: 8)],
        sides: 5,
        borderRadius: 15,
        child: AnimatedContainer(
          duration: kThemeAnimationDuration,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: begin ?? Alignment.topLeft,
              end: end ?? Alignment.bottomRight,
              colors: colors ?? [Colors.red, Colors.green, Colors.blue],
            ),
          ),
          padding: const EdgeInsets.all(1.5),
          child: Stack(
            children: [
              Transform.scale(
                scale: 1.00,
                child: ClipPolygon(
                  sides: 5,
                  borderRadius: radius < 100 ? 15 : 15,
                  child: Container(
                    color: Colors.black87,
                  ),
                ),
              ),
              Transform.scale(
                scale: 0.92,
                child: ClipPolygon(
                  sides: 5,
                  borderRadius: radius < 100 ? 15 : 15,
                  child: fileImage != null
                      ? Image.file(
                          fileImage!,
                          fit: BoxFit.cover,
                        )
                      : imageUrl != null
                          ? CachedNetworkImage(
                              progressIndicatorBuilder:
                                  (context, url, downloadProgress) =>
                                      CircularProgressIndicator(
                                value: downloadProgress.progress,
                              ),
                              imageUrl: imageUrl!.getOrCrash(),
                              fit: BoxFit.cover,
                            )
                          : Image.asset(
                              'assets/images/avatar/02.png',
                              fit: BoxFit.cover,
                            ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Heptagon extends StatelessWidget with Polygon {
  const Heptagon({
    this.colors,
    this.imageUrl,
    this.epicenter,
    this.endAngle,
    this.startAngle,
    this.fileImage,
    super.key,
  });

  factory Heptagon.fromStyle(
    HeptagonPPStyle style,
    NetworkImageURL? imageUrl,
    File? fileImage,
  ) {
    return Heptagon(
      colors: style.colors.map((element) {
        return Color(element.value.getOrElse(() => 0));
      }).toList(),
      epicenter: Alignment(style.epicenter.value, style.epicenter.value2),
      endAngle: style.endAngle,
      startAngle: style.startAngle,
      imageUrl: imageUrl,
      fileImage: fileImage,
    );
  }

  final List<Color>? colors;
  final Alignment? epicenter;
  final double? startAngle;
  final double? endAngle;
  final NetworkImageURL? imageUrl;
  final File? fileImage;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.1,
      child: ClipPolygon(
        sides: 7,
        boxShadows: [PolygonBoxShadow(color: Colors.black, elevation: 8)],
        borderRadius: 15,
        child: AnimatedContainer(
          duration: kThemeAnimationDuration,
          decoration: BoxDecoration(
            gradient: SweepGradient(
              colors: colors ??
                  [
                    Colors.deepOrange,
                    Colors.amberAccent,
                    Colors.teal,
                    Colors.cyan,
                    Colors.pink,
                    Colors.purpleAccent,
                    Colors.red,
                    Colors.blue,
                    Colors.indigo
                  ],
              center: epicenter ?? Alignment.center,
              startAngle: startAngle ?? 0,
              endAngle: endAngle != null ? pi * endAngle! : pi * 2,
            ),
          ),
          padding: const EdgeInsets.all(1.5),
          child: Stack(
            children: [
              Transform.scale(
                scale: 0.98,
                child: ClipPolygon(
                  sides: 7,
                  borderRadius: 15,
                  child: Container(
                    color: Colors.black87,
                  ),
                ),
              ),
              Transform.scale(
                scale: 0.90,
                child: ClipPolygon(
                  sides: 7,
                  borderRadius: 15,
                  child: fileImage != null
                      ? Image.file(
                          fileImage!,
                          fit: BoxFit.cover,
                        )
                      : imageUrl != null
                          ? CachedNetworkImage(
                              progressIndicatorBuilder:
                                  (context, url, downloadProgress) =>
                                      CircularProgressIndicator(
                                value: downloadProgress.progress,
                              ),
                              imageUrl: imageUrl!.getOrCrash(),
                              fit: BoxFit.cover,
                            )
                          : Image.asset(
                              'assets/images/avatar/02.png',
                              fit: BoxFit.cover,
                            ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

////////////////////////////////////////////////

class RadialGradientTween extends Tween<Gradient> {
  RadialGradientTween({required Gradient begin, required Gradient end})
      : super(begin: begin, end: end);

  @override
  Gradient lerp(double t) {
    return Gradient.lerp(begin, end, t)!;
  }
}

class LinearGradientTween extends Tween<Gradient> {
  LinearGradientTween({required Gradient begin, required Gradient end})
      : super(begin: begin, end: end);

  @override
  Gradient lerp(double t) {
    return Gradient.lerp(begin, end, t)!;
  }
}

class SweepGradientTween extends Tween<Gradient> {
  SweepGradientTween({required Gradient begin, required Gradient end})
      : super(begin: begin, end: end);

  @override
  Gradient lerp(double t) {
    return Gradient.lerp(begin, end, t)!;
  }
}

class AnimatedContainerGradient extends StatefulWidget {
  const AnimatedContainerGradient(this.child, {super.key});
  final Widget child;
  @override
  State<AnimatedContainerGradient> createState() =>
      _AnimatedContainerGradientState();
}

class _AnimatedContainerGradientState extends State<AnimatedContainerGradient>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Gradient> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);
    _animation = LinearGradientTween(
      begin: const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Colors.blue, Colors.green],
      ),
      end: const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Colors.orange, Colors.pink],
      ),
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        gradient: _animation.value,
      ),
      child: widget.child, // your child widget here,
    );
  }
}

class AnimatedTrigon extends StatefulWidget {
  const AnimatedTrigon({super.key});

  @override
  State<AnimatedTrigon> createState() => _AnimatedTrigonState();
}

class _AnimatedTrigonState extends State<AnimatedTrigon>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Gradient> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat(reverse: true);
    _controller.addListener(() {
      setState(() {});
    });
    _animation = RadialGradientTween(
      begin: const RadialGradient(
        colors: [
          Colors.blue,
          Colors.green,
          Colors.yellow,
        ],
        radius: 0.9,
      ),
      end: const RadialGradient(
        colors: [
          Colors.purple,
          Colors.tealAccent,
          Colors.blue,
        ],
        center: Alignment.bottomCenter,
        radius: 0.9,
      ),
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Transform.scale(
            scale: 5,
            child: ClipPolygon(
              sides: 3,
              rotate: 180,
              borderRadius: 120,
              child: AnimatedContainer(
                duration: kThemeAnimationDuration,
                decoration: BoxDecoration(
                  gradient: _animation.value,
                ),
              ),
            ),
          ),
          Transform.scale(
            scale: 4.8,
            child: ClipPolygon(
              sides: 3,
              rotate: 180,
              borderRadius: 120,
              child: AnimatedContainer(
                duration: kThemeAnimationDuration,
                decoration: const BoxDecoration(
                  color: Colors.black54,
                ),
                child: const Center(
                  child: UIText('', style: UITextStyles.mainTitle),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AnimatedHeptagon extends StatefulWidget {
  const AnimatedHeptagon({super.key});

  @override
  State<AnimatedHeptagon> createState() => _AnimatedHeptagonState();
}

class _AnimatedHeptagonState extends State<AnimatedHeptagon>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Gradient> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);
    _controller.addListener(() {
      setState(() {});
    });
    _animation = LinearGradientTween(
      begin: const LinearGradient(
        colors: [Colors.yellow, Colors.amberAccent, Colors.orange],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      end: const LinearGradient(
        colors: [Colors.cyan, Colors.teal, Colors.cyanAccent],
        end: Alignment.topRight,
        begin: Alignment.bottomLeft,
      ),
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.1,
      child: SizedBox(
        height: 100,
        width: 100,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Transform.scale(
              scale: 1,
              child: ClipPolygon(
                sides: 7,
                borderRadius: 20,
                child: AnimatedContainer(
                  duration: kThemeAnimationDuration,
                  decoration: BoxDecoration(
                    gradient: _animation.value,
                  ),
                ),
              ),
            ),
            Transform.scale(
              scale: 0.96,
              child: ClipPolygon(
                sides: 7,
                borderRadius: 20,
                child: AnimatedContainer(
                  duration: kThemeAnimationDuration,
                  decoration: const BoxDecoration(
                    color: Colors.black54,
                  ),
                  child: const Center(
                    child: UIText('', style: UITextStyles.mainTitle),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AnimatedPentagon extends StatefulWidget {
  const AnimatedPentagon({super.key});

  @override
  State<AnimatedPentagon> createState() => _AnimatedPentagonState();
}

class _AnimatedPentagonState extends State<AnimatedPentagon>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Gradient> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);
    _controller.addListener(() {
      setState(() {});
    });
    _animation = LinearGradientTween(
      begin: const LinearGradient(
        colors: [
          Color.fromRGBO(101, 45, 144, 1.0),
          Color.fromRGBO(163, 89, 204, 1.0),
          Color.fromRGBO(119, 56, 152, 1.0)
        ],
        stops: [0.0, 0.5, 1.0],
        transform: GradientRotation(5),
        begin: Alignment.topLeft,
      ),
      end: const LinearGradient(
        colors: [
          Color.fromRGBO(1, 87, 155, 1.0),
          Color.fromRGBO(0, 168, 232, 1.0),
          Color.fromRGBO(0, 119, 168, 1.0)
        ],
        stops: [0.0, 0.5, 1.0],
        end: Alignment.bottomRight,
        transform: GradientRotation(5),
      ),
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.2,
      child: SizedBox(
        height: 100,
        width: 100,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Transform.scale(
              scale: 1,
              child: ClipPolygon(
                sides: 5,
                borderRadius: 20,
                child: AnimatedContainer(
                  duration: kThemeAnimationDuration,
                  decoration: BoxDecoration(
                    gradient: _animation.value,
                  ),
                ),
              ),
            ),
            Transform.scale(
              scale: 0.96,
              child: ClipPolygon(
                sides: 5,
                borderRadius: 20,
                child: AnimatedContainer(
                  duration: kThemeAnimationDuration,
                  decoration: const BoxDecoration(
                    color: Colors.black54,
                  ),
                  child: const Center(
                    child: UIText('', style: UITextStyles.mainTitle),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
