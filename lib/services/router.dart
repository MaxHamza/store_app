import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:task7_store_app/pages/details_page.dart';
import 'package:task7_store_app/pages/mybag_page.dart';
import 'package:task7_store_app/pages/profile_page.dart';
final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const ProfilePage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'mybag',
          builder: (BuildContext context, GoRouterState state) {
            return const MybagPage();
          },
        ),
        GoRoute(
          path: 'details',
          builder: (BuildContext context, GoRouterState state) {
            return const  DetailsPage();
          },
        ),
      ],
    ),
  ],
);