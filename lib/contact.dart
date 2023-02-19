import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'homescreenbody.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: const Text(
          "Contact",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
        ),
        leading: const BackButton(
          color: Colors.black,
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.2,
            color: Colors.black,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText('Contact Me...',
                          textStyle: const TextStyle(
                            fontSize: 60,
                            color: Colors.cyanAccent,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                    totalRepeatCount: 1,
                  ),
                ]),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.8,
            color: Colors.black,
            child: Row(
              children: [
                pageFourLeftSideContainer(context),
                Container(
                  margin: const EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(color: Colors.cyanAccent, width: 4),
                      borderRadius: BorderRadius.circular(50)),
                  child: Row(
                    children: [
                      pageFourRightSideContainer(context),
                      pageFourEndSideContainer(context)
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 70),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.5,
            color: Colors.black,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  pageEndBottamSheet(context),
                ]),
          ),
        ],
      ),
    );
  }
}
