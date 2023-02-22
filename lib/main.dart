// THE WEBSITE PROJECT OF ROUNDROBIN

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:websiteroundrobin/about.dart';
import 'package:websiteroundrobin/appbar.dart';
import 'package:websiteroundrobin/contact.dart';
import 'package:websiteroundrobin/projects.dart';
import 'package:websiteroundrobin/services.dart';
import 'package:websiteroundrobin/skills.dart';
import 'package:websiteroundrobin/splashscreen.dart';

void main() {
  runApp(const WebRoundRobin());
}

final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      name: 'splash',
      path: '/',
      pageBuilder: (context, state) {
        return const MaterialPage(child: SplashScreen());
      },
    ),
    GoRoute(
      name: 'home',
      path: '/home',
      pageBuilder: (context, state) {
        return const MaterialPage(child: HomeScreen());
      },
    ),
    GoRoute(
      name: 'skills',
      path: '/skills',
      pageBuilder: (context, state) {
        return const MaterialPage(child: SkillsPage());
      },
    ),
    GoRoute(
      name: 'projects',
      path: '/projects',
      pageBuilder: (context, state) {
        return const MaterialPage(child: ProjectsPage());
      },
    ),
    GoRoute(
      name: 'contact',
      path: '/contact',
      pageBuilder: (context, state) {
        return const MaterialPage(child: ContactPage());
      },
    ),
    GoRoute(
      name: 'about',
      path: '/about',
      pageBuilder: (BuildContext context, GoRouterState state) {
        return const MaterialPage(child: AboutPage());
      },
    ),
    GoRoute(
      name: 'services',
      path: '/services',
      pageBuilder: (context, state) {
        return const MaterialPage(child: ServicesPage());
      },
    ),
  ],
);

class WebRoundRobin extends StatelessWidget {
  const WebRoundRobin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "ROUNDROBIN",
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
    );
  }
}
