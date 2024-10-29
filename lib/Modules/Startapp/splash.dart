import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../shared/Assets/image.dart';

class StartedApp extends StatefulWidget {
  const StartedApp({super.key});

  @override
  State<StartedApp> createState() => _StartedAppState();
}

class _StartedAppState extends State<StartedApp>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    _animation = CurvedAnimation(
        parent: _controller,
        curve: Curves.bounceInOut,
        reverseCurve: Curves.bounceInOut);

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  List<MaterialColor> colorizeColors = [
    Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedBuilder(
                animation: _controller,
                builder: (context, child) => SlideTransition(
                  position: Tween<Offset>(
                          begin: const Offset(0, .5), end: const Offset(0, .0))
                      .animate(_animation),
                  child: child,
                ),
                child: Image.asset(AppPhoto.logo,
                    fit: BoxFit.contain, height: 700, width: 75),
              ),
              AnimatedTextKit(
                animatedTexts: [
                  ColorizeAnimatedText(
                    'News',
                    textStyle: const TextStyle(fontSize: 30, height: 5),
                    colors: colorizeColors,
                    speed: const Duration(milliseconds: 2500),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
