// THE WEBSITE PROJECT OF ROUNDROBIN

import 'package:flutter/material.dart';
import 'package:websiteroundrobin/projects.dart';
import 'package:websiteroundrobin/splashscreen.dart';

void main() {
  runApp(const WebRoundRobin());
}

class WebRoundRobin extends StatelessWidget {
  const WebRoundRobin({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "ROUNDROBIN",
      debugShowCheckedModeBanner: false,
      home: ProjectsPage(),
    );
  }
}