import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:websiteroundrobin/about.dart';
import 'package:websiteroundrobin/contact.dart';
import 'package:websiteroundrobin/projects.dart';
import 'package:websiteroundrobin/services.dart';
import 'package:websiteroundrobin/skills.dart';
import 'homescreenbody.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: (MediaQuery.of(context).size.width > 1200)
            ? Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                appBarTitle(),
                centreAppBarButtons(context),
                traillingAppBarButtons(),
              ])
            : Container(),
      ),
      body: const HomeScreenBody(),
    );
  }
}

appBarTitle() {
  return AnimatedTextKit(totalRepeatCount: 1, animatedTexts: [
    TyperAnimatedText(
      "ROUNDROBIN",
      textStyle: const TextStyle(
          color: Colors.cyanAccent,
          fontSize: 40,
          fontWeight: FontWeight.bold,
          decorationColor: Colors.cyanAccent),
    ),
  ]);
}

centreAppBarButtons(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
        border: Border.all(color: Colors.cyanAccent, width: 2),
        borderRadius: BorderRadius.circular(25)),
    child: Row(
      children: [
        Container(
            margin:
                const EdgeInsets.only(top: 10, bottom: 10, right: 20, left: 20),
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(5)),
            child: TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              },
              style: const ButtonStyle(
                  overlayColor: MaterialStatePropertyAll(Colors.deepOrange)),
              child: const Text(
                "Home",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.white),
              ),
            )),
        Container(
            margin: const EdgeInsets.only(top: 10, bottom: 10, right: 20),
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(5)),
            child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const AboutPage()));
              },
              style: const ButtonStyle(
                  overlayColor: MaterialStatePropertyAll(Colors.deepOrange)),
              child: const Text(
                "About",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.white),
              ),
            )),
        Container(
            margin: const EdgeInsets.only(top: 10, bottom: 10, right: 20),
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(5)),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProjectsPage()));
              },
              style: const ButtonStyle(
                  overlayColor: MaterialStatePropertyAll(Colors.deepOrange)),
              child: const Text(
                "Projects",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.white),
              ),
            )),
        Container(
            margin: const EdgeInsets.only(top: 10, bottom: 10, right: 20),
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(5)),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SkillsPage()));
              },
              style: const ButtonStyle(
                  overlayColor: MaterialStatePropertyAll(Colors.deepOrange)),
              child: const Text(
                "Skills",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.white),
              ),
            )),
        Container(
            margin: const EdgeInsets.only(top: 10, bottom: 10, right: 20),
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(5)),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ServicesPage()));
              },
              style: const ButtonStyle(
                  overlayColor: MaterialStatePropertyAll(Colors.deepOrange)),
              child: const Text(
                "Services",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.white),
              ),
            )),
        Container(
            margin: const EdgeInsets.only(top: 10, bottom: 10, right: 20),
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(5)),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ContactPage()));
              },
              style: const ButtonStyle(
                  overlayColor: MaterialStatePropertyAll(Colors.deepOrange)),
              child: const Text(
                "Contact",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.white),
              ),
            )),
      ],
    ),
  );
}

traillingAppBarButtons() {
  return Row(
    children: [
      Container(
        margin: const EdgeInsets.only(bottom: 10),
        child: IconButton(
            hoverColor: Colors.deepOrange,
            onPressed: () async {
              var url = Uri.parse(
                  "https://instagram.com/parth_thakor_24?igshid=YzgyMTM2MGM=");
              if (await canLaunchUrl(url)) {
                await launchUrl(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            icon: const Icon(
              FontAwesome.instagram,
              size: 35,
              color: Colors.pinkAccent,
            )),
      ),
      const SizedBox(
        width: 5,
      ),
      Container(
        margin: const EdgeInsets.only(bottom: 10),
        child: IconButton(
            hoverColor: Colors.deepOrange,
            onPressed: () async {
              var url = Uri.parse("https://github.com/PARTH-THAKOR");
              if (await canLaunchUrl(url)) {
                await launchUrl(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            icon: const Icon(
              FontAwesome.github,
              size: 35,
              color: Colors.white,
            )),
      ),
      const SizedBox(
        width: 5,
      ),
      Container(
        margin: const EdgeInsets.only(bottom: 10),
        child: IconButton(
            hoverColor: Colors.deepOrange,
            onPressed: () async {
              var url =
                  Uri.parse("https://chat.whatsapp.com/DVFQzFwsljMGGrfeKzqO2i");
              if (await canLaunchUrl(url)) {
                await launchUrl(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            icon: const Icon(
              FontAwesome.whatsapp,
              size: 35,
              color: Colors.greenAccent,
            )),
      ),
      const SizedBox(
        width: 5,
      ),
      Container(
        margin: const EdgeInsets.only(bottom: 10),
        child: IconButton(
            hoverColor: Colors.deepOrange,
            onPressed: () async {
              var url = Uri.parse(
                  "https://www.linkedin.com/in/parth-thakor-4a469b25b");
              if (await canLaunchUrl(url)) {
                await launchUrl(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            icon: const Icon(
              FontAwesome.linkedin_square,
              size: 35,
              color: Colors.blueAccent,
            )),
      ),
    ],
  );
}
