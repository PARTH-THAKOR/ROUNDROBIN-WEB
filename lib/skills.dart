import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:websiteroundrobin/contact.dart';
import 'package:websiteroundrobin/projects.dart';
import 'package:websiteroundrobin/services.dart';
import 'homescreenbody.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: const Text(
          "Skills",
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
                      TypewriterAnimatedText('My Skills...',
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
                                  onPressed: () async {
                                    var url = Uri.parse(
                                        "https://docs.google.com/document/d/1hGzNad7ydyitCqlIvyBN01EIbuP07mu2oq4A636_wqM/edit?usp=drivesdk");
                                    if (await canLaunchUrl(url)) {
                                      await launchUrl(url);
                                    } else {
                                      throw 'Could not launch $url';
                                    }
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
                                      "Download CV",
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
                              TypewriterAnimatedText('Contact & Services...',
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
                                        '> If you like my skills and projects\n   then keep connected with me\n   and my services.',
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
                                                const ContactPage()));
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
                                      "Contacts",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.black),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const ServicesPage()));
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
                                      "My Services",
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
                              TypewriterAnimatedText('Skills by Priority...',
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
                                Container(
                                  child: pieChart(context),
                                )
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

pieChart(BuildContext context) {
  Map<String, double> dataMap = {
    "Flutter Development ": 3.5,
    "Java": 1.5,
    "Web Development": 3,
    "Backend Development": 2
  };
  final colorList = <Color>[
    Colors.blue,
    Colors.deepPurpleAccent,
    Colors.red,
    Colors.green
  ];
  return Padding(
    padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
    child: PieChart(
      dataMap: dataMap,
      animationDuration: const Duration(milliseconds: 800),
      chartLegendSpacing: 32,
      chartRadius: MediaQuery.of(context).size.width / 4.5,
      colorList: colorList,
      chartType: ChartType.disc,
      centerText: "",
      legendOptions: const LegendOptions(
        showLegendsInRow: false,
        legendPosition: LegendPosition.right,
        showLegends: true,
        legendShape: BoxShape.circle,
        legendTextStyle:
            TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      ),
      chartValuesOptions: const ChartValuesOptions(
        showChartValueBackground: true,
        showChartValues: true,
        showChartValuesInPercentage: true,
        showChartValuesOutside: false,
      ),
      // gradientList: ---To add gradient colors---
      // emptyColorGradient: ---Empty Color gradient---
    ),
  );
}
