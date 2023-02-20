import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:websiteroundrobin/appbar.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: DefaultTextStyle(
          style: const TextStyle(
              fontSize: 42.0,
              fontWeight: FontWeight.bold,
              color: Colors.cyanAccent),
          child: AnimatedTextKit(
            animatedTexts: [
              FadeAnimatedText('Welcome !'),
              FadeAnimatedText('The world of ...'),
              TypewriterAnimatedText('  ROUNDROBIN',
                  textStyle: const TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                  )),
            ],
            totalRepeatCount: 1,
            onFinished: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()));
            },
          ),
        ),
      ),
    );
  }
}
