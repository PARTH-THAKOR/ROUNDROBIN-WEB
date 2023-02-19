import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:websiteroundrobin/projects.dart';
import 'package:websiteroundrobin/skills.dart';
import 'homescreenbody.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: const Text(
          "About",
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText('About Me...',
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
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          border:
                              Border.all(color: Colors.cyanAccent, width: 4),
                          borderRadius: BorderRadius.circular(50)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText('Education...',
                                  textStyle: const TextStyle(
                                    fontSize: 35,
                                    color: Colors.greenAccent,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ],
                            totalRepeatCount: 1,
                          ),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AnimatedTextKit(
                                  animatedTexts: [
                                    TypewriterAnimatedText(
                                        '> 12th Pass-out (Science stream)',
                                        textStyle: const TextStyle(
                                          fontSize: 25,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ))
                                  ],
                                  totalRepeatCount: 1,
                                ),
                                AnimatedTextKit(
                                  animatedTexts: [
                                    TypewriterAnimatedText(
                                        '> Cleared JEE with good rank',
                                        textStyle: const TextStyle(
                                          fontSize: 25,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ))
                                  ],
                                  totalRepeatCount: 1,
                                ),
                                AnimatedTextKit(
                                  animatedTexts: [
                                    TypewriterAnimatedText(
                                        '> Cleared GUJCAT with good rank',
                                        textStyle: const TextStyle(
                                          fontSize: 25,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ))
                                  ],
                                  totalRepeatCount: 1,
                                ),
                                AnimatedTextKit(
                                  animatedTexts: [
                                    TypewriterAnimatedText(
                                        '> Studying B.E in Information Technology',
                                        textStyle: const TextStyle(
                                          fontSize: 25,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ],
                                  totalRepeatCount: 1,
                                ),
                              ]),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          border:
                              Border.all(color: Colors.cyanAccent, width: 4),
                          borderRadius: BorderRadius.circular(50)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText('Programming Languages...',
                                  textStyle: const TextStyle(
                                    fontSize: 35,
                                    color: Colors.greenAccent,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ],
                            totalRepeatCount: 1,
                          ),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AnimatedTextKit(
                                  animatedTexts: [
                                    TypewriterAnimatedText('> Java',
                                        textStyle: const TextStyle(
                                          fontSize: 25,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ))
                                  ],
                                  totalRepeatCount: 1,
                                ),
                                AnimatedTextKit(
                                  animatedTexts: [
                                    TypewriterAnimatedText('> Python',
                                        textStyle: const TextStyle(
                                          fontSize: 25,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ))
                                  ],
                                  totalRepeatCount: 1,
                                ),
                                AnimatedTextKit(
                                  animatedTexts: [
                                    TypewriterAnimatedText('> C & C++',
                                        textStyle: const TextStyle(
                                          fontSize: 25,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ],
                                  totalRepeatCount: 1,
                                ),
                                AnimatedTextKit(
                                  animatedTexts: [
                                    TypewriterAnimatedText('> JavaScript',
                                        textStyle: const TextStyle(
                                          fontSize: 25,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ],
                                  totalRepeatCount: 1,
                                ),
                                AnimatedTextKit(
                                  animatedTexts: [
                                    TypewriterAnimatedText('> Dart',
                                        textStyle: const TextStyle(
                                          fontSize: 25,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ],
                                  totalRepeatCount: 1,
                                ),
                                AnimatedTextKit(
                                  animatedTexts: [
                                    TypewriterAnimatedText('> Kotlin',
                                        textStyle: const TextStyle(
                                          fontSize: 25,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ],
                                  totalRepeatCount: 1,
                                ),
                              ]),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          border:
                              Border.all(color: Colors.cyanAccent, width: 4),
                          borderRadius: BorderRadius.circular(50)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText(
                                  'What technologies I learnt...',
                                  textStyle: const TextStyle(
                                    fontSize: 35,
                                    color: Colors.greenAccent,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ],
                            totalRepeatCount: 1,
                          ),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AnimatedTextKit(
                                  animatedTexts: [
                                    TypewriterAnimatedText(
                                        '> Flutter Framework',
                                        textStyle: const TextStyle(
                                          fontSize: 25,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ))
                                  ],
                                  totalRepeatCount: 1,
                                ),
                                AnimatedTextKit(
                                  animatedTexts: [
                                    TypewriterAnimatedText('> Spring Framework',
                                        textStyle: const TextStyle(
                                          fontSize: 25,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ))
                                  ],
                                  totalRepeatCount: 1,
                                ),
                                AnimatedTextKit(
                                  animatedTexts: [
                                    TypewriterAnimatedText('> SpringBoot',
                                        textStyle: const TextStyle(
                                          fontSize: 25,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ))
                                  ],
                                  totalRepeatCount: 1,
                                ),
                                AnimatedTextKit(
                                  animatedTexts: [
                                    TypewriterAnimatedText(
                                        '> MySQL & Other Databases',
                                        textStyle: const TextStyle(
                                          fontSize: 25,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ],
                                  totalRepeatCount: 1,
                                ),
                                AnimatedTextKit(
                                  animatedTexts: [
                                    TypewriterAnimatedText(
                                        '> React Js Framework',
                                        textStyle: const TextStyle(
                                          fontSize: 25,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ],
                                  totalRepeatCount: 1,
                                ),
                              ]),
                        ],
                      ),
                    ),
                  ),
                )
              ]),
              Column(children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          border:
                              Border.all(color: Colors.cyanAccent, width: 4),
                          borderRadius: BorderRadius.circular(50)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText('Schools & Colleges...',
                                  textStyle: const TextStyle(
                                    fontSize: 35,
                                    color: Colors.greenAccent,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ],
                            totalRepeatCount: 1,
                          ),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AnimatedTextKit(
                                  animatedTexts: [
                                    TypewriterAnimatedText(
                                        '> St Joseph\'s school & GSFC High school',
                                        textStyle: const TextStyle(
                                          fontSize: 25,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ))
                                  ],
                                  totalRepeatCount: 1,
                                ),
                                AnimatedTextKit(
                                  animatedTexts: [
                                    TypewriterAnimatedText(
                                        '> Government Engineering College Gandhinagar (GEC) ',
                                        textStyle: const TextStyle(
                                          fontSize: 25,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ],
                                  totalRepeatCount: 1,
                                ),
                              ]),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.9,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          border:
                              Border.all(color: Colors.cyanAccent, width: 4),
                          borderRadius: BorderRadius.circular(50)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText('Development Skills...',
                                  textStyle: const TextStyle(
                                    fontSize: 35,
                                    color: Colors.greenAccent,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ],
                            totalRepeatCount: 1,
                          ),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AnimatedTextKit(
                                  animatedTexts: [
                                    TypewriterAnimatedText(
                                        '> Hybrid Application Development',
                                        textStyle: const TextStyle(
                                          fontSize: 25,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ))
                                  ],
                                  totalRepeatCount: 1,
                                ),
                                AnimatedTextKit(
                                  animatedTexts: [
                                    TypewriterAnimatedText(
                                        '> Java Backend Development',
                                        textStyle: const TextStyle(
                                          fontSize: 25,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ))
                                  ],
                                  totalRepeatCount: 1,
                                ),
                                AnimatedTextKit(
                                  animatedTexts: [
                                    TypewriterAnimatedText('> Web Development',
                                        textStyle: const TextStyle(
                                          fontSize: 25,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ],
                                  totalRepeatCount: 1,
                                ),
                                AnimatedTextKit(
                                  animatedTexts: [
                                    TypewriterAnimatedText(
                                        '> WebApps Development',
                                        textStyle: const TextStyle(
                                          fontSize: 25,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ],
                                  totalRepeatCount: 1,
                                ),
                                const SizedBox(
                                  height: 50,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const SkillsPage()));
                                  },
                                  style: ButtonStyle(
                                      overlayColor:
                                          const MaterialStatePropertyAll(
                                              Colors.deepOrange),
                                      backgroundColor:
                                          const MaterialStatePropertyAll(
                                              Colors.cyanAccent),
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(27)))),
                                  child: const Padding(
                                    padding: EdgeInsets.all(20.0),
                                    child: Text(
                                      "Skills",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.black),
                                    ),
                                  ),
                                ),
                              ]),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          border:
                              Border.all(color: Colors.cyanAccent, width: 4),
                          borderRadius: BorderRadius.circular(50)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText('My Projects...',
                                  textStyle: const TextStyle(
                                    fontSize: 35,
                                    color: Colors.greenAccent,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ],
                            totalRepeatCount: 1,
                          ),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AnimatedTextKit(
                                  animatedTexts: [
                                    TypewriterAnimatedText(
                                        '> I made my projects with using\n   Flutter, SpringBoot, React\n   and others...',
                                        textStyle: const TextStyle(
                                          fontSize: 25,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ))
                                  ],
                                  totalRepeatCount: 1,
                                ),
                                const SizedBox(
                                  height: 50,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const ProjectsPage()));
                                  },
                                  style: ButtonStyle(
                                      overlayColor:
                                          const MaterialStatePropertyAll(
                                              Colors.deepOrange),
                                      backgroundColor:
                                          const MaterialStatePropertyAll(
                                              Colors.cyanAccent),
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(27)))),
                                  child: const Padding(
                                    padding: EdgeInsets.all(20.0),
                                    child: Text(
                                      "My Projects",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.black),
                                    ),
                                  ),
                                ),
                              ]),
                        ],
                      ),
                    ),
                  ),
                ),
              ])
            ],
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
