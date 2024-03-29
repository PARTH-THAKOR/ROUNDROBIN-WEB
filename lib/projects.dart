import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:websiteroundrobin/appbar.dart';
import 'homescreenbody.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = const AssetImage('Images/kk.jpg');
    Image image = Image(image: assetImage);
    AssetImage assetImage2 = const AssetImage('Images/uu.png');
    Image image2 = Image(image: assetImage2);
    AssetImage assetImage3 = const AssetImage('Images/88.png');
    Image image3 = Image(image: assetImage3);
    AssetImage assetImage4 = const AssetImage('Images/oo.png');
    Image image4 = Image(image: assetImage4);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: const Text(
          "Projects",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
        ),
        leading: const BackButton(
          color: Colors.black,
        ),
      ),
      body: (MediaQuery.of(context).size.width > 1200 &&
              MediaQuery.of(context).size.height > 580)
          ? ListView(
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
                            TypewriterAnimatedText('My Projects...',
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
                        height: MediaQuery.of(context).size.height * 1.2,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.black,
                                border: Border.all(
                                    color: Colors.cyanAccent, width: 4),
                                borderRadius: BorderRadius.circular(50)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                AnimatedTextKit(
                                  animatedTexts: [
                                    TypewriterAnimatedText('ChatOFi...',
                                        textStyle: const TextStyle(
                                          fontSize: 35,
                                          color: Colors.greenAccent,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ],
                                  totalRepeatCount: 1,
                                ),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                6,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                3,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: Colors.cyanAccent,
                                                width: 4)),
                                        child: FittedBox(
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(40000),
                                            child: image,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 50,
                                      ),
                                      AnimatedTextKit(
                                        animatedTexts: [
                                          TypewriterAnimatedText(
                                              '> Chatting Hybrid Application',
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
                                              '> by Flutter Framework',
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
                                              '> Technologies : Flutter + Firebase + Zegocloud',
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
                                        onPressed: () async {
                                          var url = Uri.parse(
                                              "https://drive.google.com/file/d/15QxCTKKddfZCWZx5-mpc6OuGcejpSmhb/view?usp=drivesdk");
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
                                                        BorderRadius.circular(
                                                            27)))),
                                        child: const Padding(
                                          padding: EdgeInsets.all(20.0),
                                          child: Text(
                                            "Download",
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
                                        onPressed: () async {
                                          var url = Uri.parse(
                                              "https://github.com/PARTH-THAKOR/ChatOFi");
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
                                                        BorderRadius.circular(
                                                            27)))),
                                        child: const Padding(
                                          padding: EdgeInsets.all(20.0),
                                          child: Text(
                                            "Github Project Link",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                                color: Colors.black),
                                          ),
                                        ),
                                      )
                                    ]),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ]),
                    Column(children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.height * 1.2,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.black,
                                border: Border.all(
                                    color: Colors.cyanAccent, width: 4),
                                borderRadius: BorderRadius.circular(50)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                AnimatedTextKit(
                                  animatedTexts: [
                                    TypewriterAnimatedText(
                                        'Portfolio Website (This)...',
                                        textStyle: const TextStyle(
                                          fontSize: 35,
                                          color: Colors.greenAccent,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ],
                                  totalRepeatCount: 1,
                                ),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                6,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                3,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: Colors.cyanAccent,
                                                width: 4)),
                                        child: FittedBox(
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(40000),
                                            child: image2,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 50,
                                      ),
                                      AnimatedTextKit(
                                        animatedTexts: [
                                          TypewriterAnimatedText(
                                              '> Portfolio Web Application',
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
                                              '> by Flutter Web',
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
                                              '> Technologies : Flutter Web + netlify.com ',
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
                                        onPressed: () async {
                                          Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const HomeScreen()));
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
                                                        BorderRadius.circular(
                                                            27)))),
                                        child: const Padding(
                                          padding: EdgeInsets.all(20.0),
                                          child: Text(
                                            "Website Link",
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
                                        onPressed: () async {
                                          var url = Uri.parse(
                                              "https://github.com/PARTH-THAKOR/ROUNDROBIN-WEB");
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
                                                        BorderRadius.circular(
                                                            27)))),
                                        child: const Padding(
                                          padding: EdgeInsets.all(20.0),
                                          child: Text(
                                            "Github Project Link",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                                color: Colors.black),
                                          ),
                                        ),
                                      )
                                    ]),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ])
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.height * 1.2,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.black,
                                border: Border.all(
                                    color: Colors.cyanAccent, width: 4),
                                borderRadius: BorderRadius.circular(50)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                AnimatedTextKit(
                                  animatedTexts: [
                                    TypewriterAnimatedText('Hyphen',
                                        textStyle: const TextStyle(
                                          fontSize: 35,
                                          color: Colors.greenAccent,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ],
                                  totalRepeatCount: 1,
                                ),
                                Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width:
                                        MediaQuery.of(context).size.width /
                                            6,
                                        height:
                                        MediaQuery.of(context).size.height /
                                            3,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: Colors.cyanAccent,
                                                width: 4)),
                                        child: FittedBox(
                                          child: ClipRRect(
                                            borderRadius:
                                            BorderRadius.circular(40000),
                                            child: image3,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 50,
                                      ),
                                      AnimatedTextKit(
                                        animatedTexts: [
                                          TypewriterAnimatedText(
                                              '> Chat API',
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
                                              '> by SpringBoot Framework',
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
                                              '> Technologies : SpringBoot + MySQL + Render',
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
                                        onPressed: () async {
                                          var url = Uri.parse(
                                              "https://github.com/PARTH-THAKOR/HYPHEN");
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
                                                    BorderRadius.circular(
                                                        27)))),
                                        child: const Padding(
                                          padding: EdgeInsets.all(20.0),
                                          child: Text(
                                            "Github Project Link",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                                color: Colors.black),
                                          ),
                                        ),
                                      )
                                    ]),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ]),
                    Column(children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.height * 1.2,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.black,
                                border: Border.all(
                                    color: Colors.cyanAccent, width: 4),
                                borderRadius: BorderRadius.circular(50)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                AnimatedTextKit(
                                  animatedTexts: [
                                    TypewriterAnimatedText(
                                        'Hyphen Desktop',
                                        textStyle: const TextStyle(
                                          fontSize: 35,
                                          color: Colors.greenAccent,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ],
                                  totalRepeatCount: 1,
                                ),
                                Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width:
                                        MediaQuery.of(context).size.width /
                                            6,
                                        height:
                                        MediaQuery.of(context).size.height /
                                            3,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: Colors.cyanAccent,
                                                width: 4)),
                                        child: FittedBox(
                                          child: ClipRRect(
                                            borderRadius:
                                            BorderRadius.circular(40000),
                                            child: image4,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 50,
                                      ),
                                      AnimatedTextKit(
                                        animatedTexts: [
                                          TypewriterAnimatedText(
                                              '> API distribution Application',
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
                                              '> by Flutter Windows',
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
                                              '> Technologies : Flutter + Firedart ',
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
                                        onPressed: () async {
                                          var url = Uri.parse(
                                              "https://drive.google.com/file/d/1j_qm4w_skuUQWmkgObJ-pp9jn0YXFJLS/view?usp=share_link");
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
                                                    BorderRadius.circular(
                                                        27)))),
                                        child: const Padding(
                                          padding: EdgeInsets.all(20.0),
                                          child: Text(
                                            "Download",
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
                                        onPressed: () async {
                                          var url = Uri.parse(
                                              "https://github.com/PARTH-THAKOR/Hyphen-Desktop");
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
                                                    BorderRadius.circular(
                                                        27)))),
                                        child: const Padding(
                                          padding: EdgeInsets.all(20.0),
                                          child: Text(
                                            "Github Project Link",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                                color: Colors.black),
                                          ),
                                        ),
                                      )
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
            )
          : (MediaQuery.of(context).size.width > 260 &&
                  MediaQuery.of(context).size.height > 490)
              ? ListView(
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
                                TypewriterAnimatedText('  My Projects...',
                                    textStyle: const TextStyle(
                                      fontSize: 45,
                                      color: Colors.cyanAccent,
                                      fontWeight: FontWeight.bold,
                                    )),
                              ],
                              totalRepeatCount: 1,
                            ),
                          ]),
                    ),
                    Column(children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 1.4,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.black,
                                border: Border.all(
                                    color: Colors.cyanAccent, width: 4),
                                borderRadius: BorderRadius.circular(50)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                AnimatedTextKit(
                                  animatedTexts: [
                                    TypewriterAnimatedText('ChatOFi...',
                                        textStyle: const TextStyle(
                                          fontSize: 27,
                                          color: Colors.greenAccent,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ],
                                  totalRepeatCount: 1,
                                ),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.5,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.4,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: Colors.cyanAccent,
                                                width: 4)),
                                        child: FittedBox(
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(40000),
                                            child: image,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 50,
                                      ),
                                      AnimatedTextKit(
                                        animatedTexts: [
                                          TypewriterAnimatedText(
                                              '> Chatting Hybrid\n   Application',
                                              textStyle: const TextStyle(
                                                fontSize: 18,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ))
                                        ],
                                        totalRepeatCount: 1,
                                      ),
                                      AnimatedTextKit(
                                        animatedTexts: [
                                          TypewriterAnimatedText(
                                              '> by Flutter Framework',
                                              textStyle: const TextStyle(
                                                fontSize: 18,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ))
                                        ],
                                        totalRepeatCount: 1,
                                      ),
                                      AnimatedTextKit(
                                        animatedTexts: [
                                          TypewriterAnimatedText(
                                              '> Technologies : Flutter\n   + Firebase + Zegocloud',
                                              textStyle: const TextStyle(
                                                fontSize: 18,
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
                                        onPressed: () async {
                                          var url = Uri.parse(
                                              "https://drive.google.com/file/d/15QxCTKKddfZCWZx5-mpc6OuGcejpSmhb/view?usp=drivesdk");
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
                                                        BorderRadius.circular(
                                                            27)))),
                                        child: const Padding(
                                          padding: EdgeInsets.all(20.0),
                                          child: Text(
                                            "Download",
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
                                        onPressed: () async {
                                          var url = Uri.parse(
                                              "https://github.com/PARTH-THAKOR/ChatOFi");
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
                                                        BorderRadius.circular(
                                                            27)))),
                                        child: const Padding(
                                          padding: EdgeInsets.all(20.0),
                                          child: Text(
                                            "Github Project Link",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                                color: Colors.black),
                                          ),
                                        ),
                                      )
                                    ]),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ]),
                    Column(children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 1.4,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.black,
                                border: Border.all(
                                    color: Colors.cyanAccent, width: 4),
                                borderRadius: BorderRadius.circular(50)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                AnimatedTextKit(
                                  animatedTexts: [
                                    TypewriterAnimatedText(
                                        'Portfolio Website\n(This)...',
                                        textStyle: const TextStyle(
                                          fontSize: 27,
                                          color: Colors.greenAccent,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ],
                                  totalRepeatCount: 1,
                                ),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.5,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.4,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: Colors.cyanAccent,
                                                width: 4)),
                                        child: FittedBox(
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(40000),
                                            child: image2,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 50,
                                      ),
                                      AnimatedTextKit(
                                        animatedTexts: [
                                          TypewriterAnimatedText(
                                              '> Portfolio Web\n   Application',
                                              textStyle: const TextStyle(
                                                fontSize: 18,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ))
                                        ],
                                        totalRepeatCount: 1,
                                      ),
                                      AnimatedTextKit(
                                        animatedTexts: [
                                          TypewriterAnimatedText(
                                              '> by Flutter Web',
                                              textStyle: const TextStyle(
                                                fontSize: 18,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ))
                                        ],
                                        totalRepeatCount: 1,
                                      ),
                                      AnimatedTextKit(
                                        animatedTexts: [
                                          TypewriterAnimatedText(
                                              '> Technologies : Flutter\n   Web + netlify.com ',
                                              textStyle: const TextStyle(
                                                fontSize: 18,
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
                                        onPressed: () async {
                                          Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const HomeScreen()));
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
                                                        BorderRadius.circular(
                                                            27)))),
                                        child: const Padding(
                                          padding: EdgeInsets.all(20.0),
                                          child: Text(
                                            "Website Link",
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
                                        onPressed: () async {
                                          var url = Uri.parse(
                                              "https://github.com/PARTH-THAKOR/ROUNDROBIN-WEB");
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
                                                        BorderRadius.circular(
                                                            27)))),
                                        child: const Padding(
                                          padding: EdgeInsets.all(20.0),
                                          child: Text(
                                            "Github Project Link",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                                color: Colors.black),
                                          ),
                                        ),
                                      )
                                    ]),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ]),
                    Column(children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 1.4,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.black,
                                border: Border.all(
                                    color: Colors.cyanAccent, width: 4),
                                borderRadius: BorderRadius.circular(50)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                AnimatedTextKit(
                                  animatedTexts: [
                                    TypewriterAnimatedText('Hyphen',
                                        textStyle: const TextStyle(
                                          fontSize: 27,
                                          color: Colors.greenAccent,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ],
                                  totalRepeatCount: 1,
                                ),
                                Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width:
                                        MediaQuery.of(context).size.width *
                                            0.5,
                                        height:
                                        MediaQuery.of(context).size.height *
                                            0.4,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: Colors.cyanAccent,
                                                width: 4)),
                                        child: FittedBox(
                                          child: ClipRRect(
                                            borderRadius:
                                            BorderRadius.circular(40000),
                                            child: image3,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 50,
                                      ),
                                      AnimatedTextKit(
                                        animatedTexts: [
                                          TypewriterAnimatedText(
                                              '> Chat API',
                                              textStyle: const TextStyle(
                                                fontSize: 18,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ))
                                        ],
                                        totalRepeatCount: 1,
                                      ),
                                      AnimatedTextKit(
                                        animatedTexts: [
                                          TypewriterAnimatedText(
                                              '> by SpringBoot',
                                              textStyle: const TextStyle(
                                                fontSize: 18,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ))
                                        ],
                                        totalRepeatCount: 1,
                                      ),
                                      AnimatedTextKit(
                                        animatedTexts: [
                                          TypewriterAnimatedText(
                                              '> Technologies : SpringBoot\n   + MySQL + Render',
                                              textStyle: const TextStyle(
                                                fontSize: 18,
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
                                        onPressed: () async {
                                          var url = Uri.parse(
                                              "https://github.com/PARTH-THAKOR/HYPHEN");
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
                                                    BorderRadius.circular(
                                                        27)))),
                                        child: const Padding(
                                          padding: EdgeInsets.all(20.0),
                                          child: Text(
                                            "Github Project Link",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                                color: Colors.black),
                                          ),
                                        ),
                                      )
                                    ]),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ]),
                    Column(children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 1.4,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.black,
                                border: Border.all(
                                    color: Colors.cyanAccent, width: 4),
                                borderRadius: BorderRadius.circular(50)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                AnimatedTextKit(
                                  animatedTexts: [
                                    TypewriterAnimatedText(
                                        'Hyphen Desktop',
                                        textStyle: const TextStyle(
                                          fontSize: 27,
                                          color: Colors.greenAccent,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ],
                                  totalRepeatCount: 1,
                                ),
                                Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width:
                                        MediaQuery.of(context).size.width *
                                            0.5,
                                        height:
                                        MediaQuery.of(context).size.height *
                                            0.4,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: Colors.cyanAccent,
                                                width: 4)),
                                        child: FittedBox(
                                          child: ClipRRect(
                                            borderRadius:
                                            BorderRadius.circular(40000),
                                            child: image4,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 50,
                                      ),
                                      AnimatedTextKit(
                                        animatedTexts: [
                                          TypewriterAnimatedText(
                                              '> API distribution\n   Application',
                                              textStyle: const TextStyle(
                                                fontSize: 18,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ))
                                        ],
                                        totalRepeatCount: 1,
                                      ),
                                      AnimatedTextKit(
                                        animatedTexts: [
                                          TypewriterAnimatedText(
                                              '> by Flutter Windows',
                                              textStyle: const TextStyle(
                                                fontSize: 18,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ))
                                        ],
                                        totalRepeatCount: 1,
                                      ),
                                      AnimatedTextKit(
                                        animatedTexts: [
                                          TypewriterAnimatedText(
                                              '> Technologies : Flutter\n   + Firedart ',
                                              textStyle: const TextStyle(
                                                fontSize: 18,
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
                                        onPressed: () async {
                                          var url = Uri.parse(
                                              "https://drive.google.com/file/d/1j_qm4w_skuUQWmkgObJ-pp9jn0YXFJLS/view?usp=share_link");
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
                                                    BorderRadius.circular(
                                                        27)))),
                                        child: const Padding(
                                          padding: EdgeInsets.all(20.0),
                                          child: Text(
                                            "Download",
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
                                        onPressed: () async {
                                          var url = Uri.parse(
                                              "https://github.com/PARTH-THAKOR/Hyphen-Desktop");
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
                                                    BorderRadius.circular(
                                                        27)))),
                                        child: const Padding(
                                          padding: EdgeInsets.all(20.0),
                                          child: Text(
                                            "Github Project Link",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                                color: Colors.black),
                                          ),
                                        ),
                                      )
                                    ]),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ]),
                    Container(
                      margin: const EdgeInsets.only(top: 100),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.43,
                      color: Colors.black,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            pageEndBottamSheet(context),
                          ]),
                    ),
                  ],
                )
              : Container(
                  color: Colors.black,
                  child: const Center(
                    child: Text(
                      "Desktop view only for this site",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.cyanAccent),
                    ),
                  ),
                ),
    );
  }
}
