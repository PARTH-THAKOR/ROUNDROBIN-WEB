import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:websiteroundrobin/projects.dart';
import 'package:websiteroundrobin/services.dart';
import 'package:websiteroundrobin/skills.dart';
import 'about.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = const AssetImage('Images/ll.jpg');
    Image image = Image(image: assetImage);
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
    return (MediaQuery.of(context).size.width > 1200 &&
            MediaQuery.of(context).size.height > 580)
        ? ListView(children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.black,
              child: Row(
                children: [
                  pageOneLeftSideContainer(context),
                  pageOneRightSideContainer(context),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.8,
              color: Colors.black,
              child: Row(
                children: [
                  pageTwoLeftSideContainer(context),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.cyanAccent, width: 4),
                        borderRadius: BorderRadius.circular(50)),
                    child: pageTwoRightSideContainer(context),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 70),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.8,
              color: Colors.black,
              child: Row(
                children: [
                  pageThreeLeftSideContainer(context),
                  pageThreeRightSideContainer(context),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.black,
              child: Row(
                children: [
                  pageFourLeftSideContainer(context),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.8,
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
          ])
        : (MediaQuery.of(context).size.width > 260 &&
                MediaQuery.of(context).size.height > 490)
            ? ListView(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.333,
                              width: MediaQuery.of(context).size.width * 0.6,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.cyanAccent, width: 4)),
                              child: FittedBox(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(40000),
                                  child: image,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.7,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AnimatedTextKit(
                                animatedTexts: [
                                  TypewriterAnimatedText('Hello !',
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
                                  TypewriterAnimatedText('There, It\'s me...',
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
                                  TypewriterAnimatedText('PARTH THAKOR',
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
                                  TypewriterAnimatedText('Flutter Developer',
                                      textStyle: const TextStyle(
                                        fontSize: 30,
                                        color: Colors.greenAccent,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TypewriterAnimatedText('Web Developer',
                                      textStyle: const TextStyle(
                                        fontSize: 30,
                                        color: Colors.greenAccent,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TypewriterAnimatedText('Backend Developer',
                                      textStyle: const TextStyle(
                                        fontSize: 30,
                                        color: Colors.greenAccent,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TypewriterAnimatedText('Java Developer',
                                      textStyle: const TextStyle(
                                        fontSize: 30,
                                        color: Colors.greenAccent,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ],
                                repeatForever: true,
                              ),
                              const SizedBox(
                                height: 60,
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
                            ],
                          )
                        ],
                      )),
                  SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.7,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AnimatedTextKit(
                                animatedTexts: [
                                  TypewriterAnimatedText('Introduction',
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
                                  TypewriterAnimatedText('About Me...        ',
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
                                  TypewriterAnimatedText('More about me ⬇️',
                                      textStyle: const TextStyle(
                                        fontSize: 30,
                                        color: Colors.greenAccent,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ],
                                totalRepeatCount: 1,
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const AboutPage()));
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
                                    "About",
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
                            ],
                          ),
                        ],
                      )),
                  Container(
                    margin: const EdgeInsets.all(15),
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: MediaQuery.of(context).size.height * 1.2,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.cyanAccent, width: 4),
                        borderRadius: BorderRadius.circular(50)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AnimatedTextKit(
                              animatedTexts: [
                                TypewriterAnimatedText(
                                  "Hello ! \n"
                                  "I am the student of\nIT Engineering.\n"
                                  "I have a good knowledge \nin Flutter, Spring,\n"
                                  "SpringBoot and \nBackend with Java and\n"
                                  "I have also a good \nknowledge in Web\n"
                                  "Development and \nWebApps Development.\n"
                                  "Hybrid Application \nDevelopment\n"
                                  "is my primary skill.\n"
                                  "I have good \nknowledge in Java,\n"
                                  "Python, JavaScript, \nDart programming\n"
                                  "Languages.I made my \nprojects using\n"
                                  "this skills.If you \nwant to know all\n"
                                  "about me then \ngo to About page.",
                                  textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                              totalRepeatCount: 1,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.6,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AnimatedTextKit(
                                animatedTexts: [
                                  TypewriterAnimatedText('About',
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
                                  TypewriterAnimatedText('My Skills...',
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
                                  TypewriterAnimatedText(
                                      'More about my skills ⬇️',
                                      textStyle: const TextStyle(
                                        fontSize: 30,
                                        color: Colors.greenAccent,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ],
                                totalRepeatCount: 1,
                              ),
                              const SizedBox(
                                height: 40,
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
                            ],
                          ),
                        ],
                      )),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.4,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          bottom: 20, left: 20, right: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            border:
                                Border.all(color: Colors.cyanAccent, width: 4),
                            borderRadius: BorderRadius.circular(50)),
                        child: PieChart(
                          dataMap: dataMap,
                          animationDuration: const Duration(milliseconds: 800),
                          chartLegendSpacing: 32,
                          chartRadius: MediaQuery.of(context).size.width / 3.5,
                          colorList: colorList,
                          chartType: ChartType.disc,
                          centerText: "",
                          legendOptions: const LegendOptions(
                            showLegendsInRow: false,
                            legendPosition: LegendPosition.right,
                            showLegends: true,
                            legendShape: BoxShape.circle,
                            legendTextStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
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
                      ),
                    ),
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.8,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                                  TypewriterAnimatedText(
                                      'Stay connected with me',
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
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14,
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
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14,
                                                      color: Colors.black),
                                                ),
                                              ),
                                            )
                                          ],
                                        );
                                      });
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
                    height: MediaQuery.of(context).size.height * 0.42,
                    color: Colors.black,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
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
              );
  }
}

pageOneLeftSideContainer(BuildContext context) {
  return SizedBox(
      width: MediaQuery.of(context).size.width / 2,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText('Hello !',
                      textStyle: const TextStyle(
                        fontSize: 40,
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
                  TypewriterAnimatedText('There, It\'s me...',
                      textStyle: const TextStyle(
                        fontSize: 40,
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
                  TypewriterAnimatedText('PARTH THAKOR',
                      textStyle: const TextStyle(
                        fontSize: 60,
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
                  TypewriterAnimatedText('Flutter Developer',
                      textStyle: const TextStyle(
                        fontSize: 40,
                        color: Colors.greenAccent,
                        fontWeight: FontWeight.bold,
                      )),
                  TypewriterAnimatedText('Web Developer',
                      textStyle: const TextStyle(
                        fontSize: 40,
                        color: Colors.greenAccent,
                        fontWeight: FontWeight.bold,
                      )),
                  TypewriterAnimatedText('Backend Developer',
                      textStyle: const TextStyle(
                        fontSize: 40,
                        color: Colors.greenAccent,
                        fontWeight: FontWeight.bold,
                      )),
                  TypewriterAnimatedText('Java Developer',
                      textStyle: const TextStyle(
                        fontSize: 40,
                        color: Colors.greenAccent,
                        fontWeight: FontWeight.bold,
                      )),
                ],
                repeatForever: true,
              ),
              const SizedBox(
                height: 100,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProjectsPage()));
                },
                style: ButtonStyle(
                    overlayColor:
                        const MaterialStatePropertyAll(Colors.deepOrange),
                    backgroundColor:
                        const MaterialStatePropertyAll(Colors.cyanAccent),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(27)))),
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
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Scroll Down for more...",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              )
            ],
          )
        ],
      ));
}

pageOneRightSideContainer(BuildContext context) {
  AssetImage assetImage = const AssetImage('Images/ll.jpg');
  Image image = Image(image: assetImage);
  return SizedBox(
    width: MediaQuery.of(context).size.width / 2,
    height: MediaQuery.of(context).size.height,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 3.5,
              height: MediaQuery.of(context).size.height / 1.75,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.cyanAccent, width: 7)),
              child: FittedBox(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40000),
                  child: image,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 40),
              child: const Text(
                "Development is Love ❣️...",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            )
          ],
        )
      ],
    ),
  );
}

pageTwoLeftSideContainer(BuildContext context) {
  return SizedBox(
      width: MediaQuery.of(context).size.width / 2,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText('Introduction',
                      textStyle: const TextStyle(
                        fontSize: 40,
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
                  TypewriterAnimatedText('About Me...',
                      textStyle: const TextStyle(
                        fontSize: 60,
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
                  TypewriterAnimatedText('More about me ⬇️',
                      textStyle: const TextStyle(
                        fontSize: 40,
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AboutPage()));
                },
                style: ButtonStyle(
                    overlayColor:
                        const MaterialStatePropertyAll(Colors.deepOrange),
                    backgroundColor:
                        const MaterialStatePropertyAll(Colors.cyanAccent),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(27)))),
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "About",
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
                        const MaterialStatePropertyAll(Colors.deepOrange),
                    backgroundColor:
                        const MaterialStatePropertyAll(Colors.cyanAccent),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(27)))),
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
            ],
          ),
        ],
      ));
}

pageTwoRightSideContainer(BuildContext context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width / 2.2,
    height: MediaQuery.of(context).size.height * 0.7,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  "Hello ! \n"
                  "I am the student of IT Engineering.\n"
                  "I have a good knowledge in Flutter, Spring,\n"
                  "SpringBoot and Backend with Java and\n"
                  "I have also a good knowledge in Web\n"
                  "Development and WebApps Development.\n"
                  "Hybrid Application Development\n"
                  "is my primary skill.\n"
                  "I have good knowledge in Java,\n"
                  "Python, JavaScript, Dart programming\n"
                  "Languages.I made my projects using\n"
                  "this skills.If you want to know all\n"
                  "about me then go to About page.",
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
              ],
              totalRepeatCount: 1,
            ),
          ],
        ),
      ],
    ),
  );
}

pageThreeLeftSideContainer(BuildContext context) {
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
  return SizedBox(
    width: MediaQuery.of(context).size.width / 2,
    height: MediaQuery.of(context).size.height,
    child: Padding(
      padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.black,
            border: Border.all(color: Colors.cyanAccent, width: 4),
            borderRadius: BorderRadius.circular(50)),
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
      ),
    ),
  );
}

pageThreeRightSideContainer(BuildContext context) {
  return SizedBox(
      width: MediaQuery.of(context).size.width / 2,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText('About',
                      textStyle: const TextStyle(
                        fontSize: 40,
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
                  TypewriterAnimatedText('My Skills...',
                      textStyle: const TextStyle(
                        fontSize: 60,
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
                  TypewriterAnimatedText('More about my skills ⬇️',
                      textStyle: const TextStyle(
                        fontSize: 40,
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SkillsPage()));
                },
                style: ButtonStyle(
                    overlayColor:
                        const MaterialStatePropertyAll(Colors.deepOrange),
                    backgroundColor:
                        const MaterialStatePropertyAll(Colors.cyanAccent),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(27)))),
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
            ],
          ),
        ],
      ));
}

pageFourLeftSideContainer(BuildContext context) {
  return SizedBox(
      width: MediaQuery.of(context).size.width / 2,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 100,
              ),
              AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText('How can I help you ?',
                      textStyle: const TextStyle(
                        fontSize: 40,
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
                        fontSize: 60,
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
                        fontSize: 40,
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
                              borderRadius: BorderRadius.circular(25),
                              side: const BorderSide(
                                  color: Colors.cyanAccent, width: 2)),
                          title: const Text(
                            "Email...",
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Colors.cyanAccent),
                          ),
                          content: const Text("Send mail to...",
                              style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.greenAccent)),
                          actions: [
                            ElevatedButton(
                              onPressed: () async {
                                var url = Uri(
                                    scheme: 'mailto',
                                    path: "parththakor38269@gmail.com");
                                if (await canLaunchUrl(url)) {
                                  await launchUrl(url);
                                } else {
                                  throw 'Could not launch $url';
                                }
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
                                  "Personal Email",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            TextButton(
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
                                  "Business Email",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.black),
                                ),
                              ),
                            )
                          ],
                        );
                      });
                },
                style: ButtonStyle(
                    overlayColor:
                        const MaterialStatePropertyAll(Colors.deepOrange),
                    backgroundColor:
                        const MaterialStatePropertyAll(Colors.cyanAccent),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(27)))),
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
                          builder: (context) => const ServicesPage()));
                },
                style: ButtonStyle(
                    overlayColor:
                        const MaterialStatePropertyAll(Colors.deepOrange),
                    backgroundColor:
                        const MaterialStatePropertyAll(Colors.cyanAccent),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(27)))),
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
      ));
}

pageFourRightSideContainer(BuildContext context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width / 4.2,
    height: MediaQuery.of(context).size.height,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
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
                  backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                  overlayColor: MaterialStatePropertyAll(Colors.deepOrange)),
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
                  backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                  overlayColor: MaterialStatePropertyAll(Colors.deepOrange)),
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
                  backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                  overlayColor: MaterialStatePropertyAll(Colors.deepOrange)),
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
                  backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                  overlayColor: MaterialStatePropertyAll(Colors.deepOrange)),
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
          ],
        )
      ],
    ),
  );
}

pageFourEndSideContainer(BuildContext context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width / 4.2,
    height: MediaQuery.of(context).size.height,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
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
                  backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                  overlayColor: MaterialStatePropertyAll(Colors.deepOrange)),
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
                    scheme: 'mailto', path: "developers.roundrobin@gmail.com");
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                  overlayColor: MaterialStatePropertyAll(Colors.deepOrange)),
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
                  backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                  overlayColor: MaterialStatePropertyAll(Colors.deepOrange)),
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
                var url = Uri.parse("https://t.me/ROUNDROBIN_SE_PARTH_THAKOR");
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                  overlayColor: MaterialStatePropertyAll(Colors.deepOrange)),
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
          ],
        )
      ],
    ),
  );
}

pageEndBottamSheet(BuildContext context) {
  return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AnimatedTextKit(
          animatedTexts: [
            TypewriterAnimatedText('  ROUNDROBIN',
                textAlign: TextAlign.center,
                textStyle: const TextStyle(
                  fontSize: 50,
                  color: Colors.cyanAccent,
                  fontWeight: FontWeight.bold,
                )),
          ],
          totalRepeatCount: 1,
        ),
        const SizedBox(
          height: 20,
        ),
        AnimatedTextKit(
          animatedTexts: [
            TyperAnimatedText(' Development is Love ❣️',
                textAlign: TextAlign.center,
                textStyle: const TextStyle(
                  fontSize: 30,
                  color: Colors.greenAccent,
                  fontWeight: FontWeight.bold,
                )),
          ],
          totalRepeatCount: 1,
        ),
        const SizedBox(
          height: 20,
        ),
        AnimatedTextKit(
          animatedTexts: [
            TyperAnimatedText(
                'Copyright © 2023 developers-roundrobin.netlify.app March-2023/+3:23 UTC',
                textAlign: TextAlign.center,
                textStyle: const TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )),
          ],
          totalRepeatCount: 1,
        ),
      ]);
}
