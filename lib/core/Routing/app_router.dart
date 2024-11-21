// app_router.dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:projectfci/core/Routing/routes.dart';

import '../../features/allPrankSounds/presentation/screens/all_pranks_sounds_view.dart';
import '../../features/home/presentation/screens/home_screen_view.dart';
import '../../features/splash/screens/splash_view.dart';




abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: Routes.home,
        builder: (context, state) => const HomeScreenView(),
      ),
      GoRoute(
        path: Routes.allPranksSound,
        builder: (context, state) => const AllPranksSoundsView(),
      ),
      // GoRoute(
      //   path: '/quran',
      //   builder: (context, state) => const Placeholder(),
      // ),
      // GoRoute(
      //   path: '/lamp',
      //   builder: (context, state) => const Placeholder(),
      // ),
      // GoRoute(
      //   path: '/pray',
      //   builder: (context, state) => const Placeholder(),
      // ),
      // GoRoute(
      //   path: '/doa',
      //   builder: (context, state) => const Placeholder(),
      // ),
      // GoRoute(
      //   path: '/bookmark',
      //   builder: (context, state) => const Placeholder(),
      // ),
    ],
  );
}
