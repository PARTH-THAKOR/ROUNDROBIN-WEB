import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'contact.dart';
import 'homescreenbody.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: const Text(
          "Services",
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
                            TypewriterAnimatedText('My Services...',
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
                                border: Border.all(
                                    color: Colors.cyanAccent, width: 4),
                                borderRadius: BorderRadius.circular(50)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                AnimatedTextKit(
                                  animatedTexts: [
                                    TypewriterAnimatedText(
                                        'Hybrid Application Development...',
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
                                      AnimatedTextKit(
                                        animatedTexts: [
                                          TypewriterAnimatedText(
                                              '> Using Flutter Framework\n   I shall build your\n   Hybrid Application\n   with Firebase services.\n   If you interested then Email me.',
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
                                      TextButton(
                                        onPressed: () async {
                                          var url = Uri(
                                              scheme: 'mailto',
                                              path:
                                                  "developers.roundrobin@gmail.com");
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
                                            "Business Email",
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
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.height * 0.6,
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
                                        'WebApps Development...',
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
                                      AnimatedTextKit(
                                        animatedTexts: [
                                          TypewriterAnimatedText(
                                              '> Using Flutter Framework. I shall build \n   your WebApps with Firebase services & \n   Backend.If you interested then Email me.',
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
                                      TextButton(
                                        onPressed: () async {
                                          var url = Uri(
                                              scheme: 'mailto',
                                              path:
                                                  "developers.roundrobin@gmail.com");
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
                                            "Business Email",
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
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.height * 0.8,
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
                                        'Backend Development...',
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
                                      AnimatedTextKit(
                                        animatedTexts: [
                                          TypewriterAnimatedText(
                                              '> Using SpringBoot Framework. I shall \n   build your backend with link \n   it with Databases,APIs,Firebase.\n   If you interested then Email me.',
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
                                      TextButton(
                                        onPressed: () async {
                                          var url = Uri(
                                              scheme: 'mailto',
                                              path:
                                                  "developers.roundrobin@gmail.com");
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
                                            "Business Email",
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
                                border: Border.all(
                                    color: Colors.cyanAccent, width: 4),
                                borderRadius: BorderRadius.circular(50)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                AnimatedTextKit(
                                  animatedTexts: [
                                    TypewriterAnimatedText('API Development...',
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
                                      AnimatedTextKit(
                                        animatedTexts: [
                                          TypewriterAnimatedText(
                                              '> Using SpringBoot Framework. I shall build your \n   APIs and link it with your Databases.\n   If you interested then Email me.',
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
                                      TextButton(
                                        onPressed: () async {
                                          var url = Uri(
                                              scheme: 'mailto',
                                              path:
                                                  "developers.roundrobin@gmail.com");
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
                                            "Business Email",
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
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.height * 0.9,
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
                                        'Web Frontend Development...',
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
                                      AnimatedTextKit(
                                        animatedTexts: [
                                          TypewriterAnimatedText(
                                              '> Using React.Js Framework and other \n   technologies.I shall build your Web\n   Frontend responsive and attractive\n   If you interested then Email me.',
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
                                      TextButton(
                                        onPressed: () async {
                                          var url = Uri(
                                              scheme: 'mailto',
                                              path:
                                                  "developers.roundrobin@gmail.com");
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
                                            "Business Email",
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
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.height * 0.7,
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
                                    TypewriterAnimatedText('Contacts...',
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
                                      AnimatedTextKit(
                                        animatedTexts: [
                                          TypewriterAnimatedText(
                                              '> If you like my work then keep connected\n   with me and my services.',
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
                                                        BorderRadius.circular(
                                                            27)))),
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
                                      TextButton(
                                        onPressed: () async {
                                          var url = Uri(
                                              scheme: 'mailto',
                                              path:
                                                  "developers.roundrobin@gmail.com");
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
                                            "Business Email",
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
          : ListView(
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
                            TypewriterAnimatedText('  My Services...',
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
                    width: MediaQuery.of(context).size.width * 0.98,
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
                                    'Hybrid Application\nDevelopment...',
                                    textStyle: const TextStyle(
                                      fontSize: 27,
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
                                          '> Using Flutter Framework\n   I shall build your\n   Hybrid Application\n   with Firebase services.\n   If you interested then\n   Email me.',
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
                                  TextButton(
                                    onPressed: () async {
                                      var url = Uri(
                                          scheme: 'mailto',
                                          path:
                                              "developers.roundrobin@gmail.com");
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
                                        "Business Email",
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
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.98,
                    height: MediaQuery.of(context).size.height * 0.78,
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
                                TypewriterAnimatedText('API\nDevelopment...',
                                    textStyle: const TextStyle(
                                      fontSize: 27,
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
                                          '> Using SpringBoot \n   Framework. I shall build\n   your APIs and link\n   it with your \n   Databases. If you\n   interested then Email\n   me.',
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
                                  TextButton(
                                    onPressed: () async {
                                      var url = Uri(
                                          scheme: 'mailto',
                                          path:
                                              "developers.roundrobin@gmail.com");
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
                                        "Business Email",
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
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.98,
                    height: MediaQuery.of(context).size.height * 0.81,
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
                                    'WebApps\nDevelopment...',
                                    textStyle: const TextStyle(
                                      fontSize: 27,
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
                                          '> Using Flutter\n   Framework. I shall \n   build your WebApps\n   with Firebase services\n   & Backend.If you\n   interested then Email\n   me.',
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
                                  TextButton(
                                    onPressed: () async {
                                      var url = Uri(
                                          scheme: 'mailto',
                                          path:
                                              "developers.roundrobin@gmail.com");
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
                                        "Business Email",
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
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.98,
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
                                    'Backend\nDevelopment...',
                                    textStyle: const TextStyle(
                                      fontSize: 27,
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
                                          '> Using SpringBoot\n   Framework. I shall build\n   your backend with link \n   it with Databases,APIs,\n   Firebase.If you interested\n   then Email me.',
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
                                  TextButton(
                                    onPressed: () async {
                                      var url = Uri(
                                          scheme: 'mailto',
                                          path:
                                              "developers.roundrobin@gmail.com");
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
                                        "Business Email",
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
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.98,
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
                                TypewriterAnimatedText(
                                    'Web Frontend\nDevelopment...',
                                    textStyle: const TextStyle(
                                      fontSize: 27,
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
                                          '> Using React.Js Framework\n   and other technologies.\n   I shall build your\n   Web Frontend responsive\n   and attractive  If you\n   interested then Email me.',
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
                                  TextButton(
                                    onPressed: () async {
                                      var url = Uri(
                                          scheme: 'mailto',
                                          path:
                                              "developers.roundrobin@gmail.com");
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
                                        "Business Email",
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
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.98,
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
                                TypewriterAnimatedText('Contacts...',
                                    textStyle: const TextStyle(
                                      fontSize: 27,
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
                                          '> If you like my\n   work then keep connected\n   with me and my services.',
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
                                                    BorderRadius.circular(
                                                        27)))),
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
                                  TextButton(
                                    onPressed: () async {
                                      var url = Uri(
                                          scheme: 'mailto',
                                          path:
                                              "developers.roundrobin@gmail.com");
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
                                        "Business Email",
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
                  Container(
                    margin: const EdgeInsets.only(top: 60),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.4,
                    color: Colors.black,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          pageEndBottamSheet(context),
                        ]),
                  ),
                ]),
              ],
            ),
    );
  }
}
