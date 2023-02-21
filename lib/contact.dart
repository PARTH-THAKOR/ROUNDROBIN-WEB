import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:websiteroundrobin/services.dart';
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
                  height: MediaQuery.of(context).size.height,
                  color: Colors.black,
                  child: Row(
                    children: [
                      pageFourLeftSideContainer(context),
                      Container(
                        margin: const EdgeInsets.only(top: 70),
                        height: MediaQuery.of(context).size.height * 0.8,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            border:
                                Border.all(color: Colors.cyanAccent, width: 4),
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
            )
          : ListView(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.3,
                  color: Colors.black,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        AnimatedTextKit(
                          animatedTexts: [
                            TypewriterAnimatedText('  Contact Me...',
                                textStyle: const TextStyle(
                                  fontSize: 50,
                                  color: Colors.cyanAccent,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                          totalRepeatCount: 1,
                        ),
                      ]),
                ),
                SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.86,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AnimatedTextKit(
                              animatedTexts: [
                                TypewriterAnimatedText('How can I help you ?',
                                    textStyle: const TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    )),
                              ],
                              totalRepeatCount: 1,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            AnimatedTextKit(
                              animatedTexts: [
                                TypewriterAnimatedText('Contact Me...',
                                    textStyle: const TextStyle(
                                      fontSize: 45,
                                      color: Colors.cyanAccent,
                                      fontWeight: FontWeight.bold,
                                    )),
                              ],
                              totalRepeatCount: 1,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            AnimatedTextKit(
                              animatedTexts: [
                                TypewriterAnimatedText('Stay connected with me',
                                    textStyle: const TextStyle(
                                      fontSize: 30,
                                      color: Colors.greenAccent,
                                      fontWeight: FontWeight.bold,
                                    )),
                              ],
                              totalRepeatCount: 1,
                            ),
                            const SizedBox(
                              height: 80,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        backgroundColor: Colors.transparent,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            side: const BorderSide(
                                                color: Colors.cyanAccent,
                                                width: 2)),
                                        title: const Text(
                                          "Email...",
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.cyanAccent),
                                        ),
                                        content: const Text("Send mail to...",
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.greenAccent)),
                                        actions: [
                                          ElevatedButton(
                                            onPressed: () async {
                                              var url = Uri(
                                                  scheme: 'mailto',
                                                  path:
                                                      "parththakor38269@gmail.com");
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
                                                shape:
                                                    MaterialStateProperty.all(
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        27)))),
                                            child: const Padding(
                                              padding: EdgeInsets.all(20.0),
                                              child: Text(
                                                "Personal Email",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 17,
                                                    color: Colors.black),
                                              ),
                                            ),
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
                                                shape:
                                                    MaterialStateProperty.all(
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        27)))),
                                            child: const Padding(
                                              padding: EdgeInsets.all(20.0),
                                              child: Text(
                                                "Business Email",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 17,
                                                    color: Colors.black),
                                              ),
                                            ),
                                          )
                                        ],
                                      );
                                    });
                              },
                              style: ButtonStyle(
                                  overlayColor: const MaterialStatePropertyAll(
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
                                  "Email",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
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
                                  overlayColor: const MaterialStatePropertyAll(
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
                          ],
                        ),
                      ],
                    )),
                ElevatedButton(
                  onPressed: () async {
                    var url = Uri.parse(
                        "https://instagram.com/parth_thakor_24?igshid=YzgyMTM2MGM=");
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.transparent),
                      overlayColor:
                          MaterialStatePropertyAll(Colors.deepOrange)),
                  child: ListTile(
                    title: const Text(
                      "Instagram",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    subtitle: const Text(
                      "https://instagram.com/parth_thakor",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    leading: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesome.instagram,
                          color: Colors.pinkAccent,
                        )),
                  ),
                ),
                ElevatedButton(
                  onPressed: () async {
                    var url = Uri.parse("https://github.com/PARTH-THAKOR");
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.transparent),
                      overlayColor:
                          MaterialStatePropertyAll(Colors.deepOrange)),
                  child: ListTile(
                    title: const Text(
                      "Github",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    subtitle: const Text(
                      "https://github.com/PARTH-THAKOR",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    leading: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesome.github,
                          color: Colors.white,
                        )),
                  ),
                ),
                ElevatedButton(
                  onPressed: () async {
                    var url = Uri.parse(
                        "https://chat.whatsapp.com/DVFQzFwsljMGGrfeKzqO2i");
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.transparent),
                      overlayColor:
                          MaterialStatePropertyAll(Colors.deepOrange)),
                  child: ListTile(
                    title: const Text(
                      "WhatsApp",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    subtitle: const Text(
                      "https://chat.whatsapp.com/ROUNDROBIN_SE",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    leading: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesome.whatsapp,
                          color: Colors.green,
                        )),
                  ),
                ),
                ElevatedButton(
                  onPressed: () async {
                    var url = Uri.parse(
                        "https://www.linkedin.com/in/parth-thakor-4a469b25b");
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.transparent),
                      overlayColor:
                          MaterialStatePropertyAll(Colors.deepOrange)),
                  child: ListTile(
                    title: const Text(
                      "LinkedIn",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    subtitle: const Text(
                      "https://www.linkedin.com/in/parth-thakor",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    leading: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesome.linkedin_square,
                          color: Colors.blue,
                        )),
                  ),
                ),
                ElevatedButton(
                  onPressed: () async {
                    var url = Uri.parse(
                        "https://www.facebook.com/profile.php?id=100090491466004&mibextid=ZbWKwL");
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.transparent),
                      overlayColor:
                          MaterialStatePropertyAll(Colors.deepOrange)),
                  child: ListTile(
                    title: const Text(
                      "Facebook",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    subtitle: const Text(
                      "https://www.facebook.com/Parth_thakor",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    leading: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesome.facebook_square,
                          color: Colors.blue,
                        )),
                  ),
                ),
                ElevatedButton(
                  onPressed: () async {
                    var url = Uri(
                        scheme: 'mailto',
                        path: "developers.roundrobin@gmail.com");
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.transparent),
                      overlayColor:
                          MaterialStatePropertyAll(Colors.deepOrange)),
                  child: ListTile(
                    title: const Text(
                      "Gmail",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    subtitle: const Text(
                      "developers.roundrobin@gmail.com",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    leading: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.mail_outline,
                          color: Colors.white,
                        )),
                  ),
                ),
                ElevatedButton(
                  onPressed: () async {
                    var url = Uri.parse("https://twitter.com/ROUNDROBIN_SE");
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.transparent),
                      overlayColor:
                          MaterialStatePropertyAll(Colors.deepOrange)),
                  child: ListTile(
                    title: const Text(
                      "Twitter",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    subtitle: const Text(
                      "https://twitter.com/ROUNDROBIN_SE",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    leading: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesome.twitter_square,
                          color: Colors.blue,
                        )),
                  ),
                ),
                ElevatedButton(
                  onPressed: () async {
                    var url =
                        Uri.parse("https://t.me/ROUNDROBIN_SE_PARTH_THAKOR");
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.transparent),
                      overlayColor:
                          MaterialStatePropertyAll(Colors.deepOrange)),
                  child: ListTile(
                    title: const Text(
                      "Telegram",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    subtitle: const Text(
                      "https://t.me/ROUNDROBIN_SE_PARTH_THAKOR",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    leading: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesome.telegram,
                          color: Colors.blue,
                        )),
                  ),
                ),
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
            ),
    );
  }
}
