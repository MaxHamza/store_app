import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:task7_store_app/pages/category.dart';
import 'package:task7_store_app/pages/details_page.dart';
import 'package:task7_store_app/pages/mybag_page.dart';
import 'package:task7_store_app/pages/specific_cat_screen.dart';
final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const Category();
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
            return const DetailsPage();
          },
        ),
        GoRoute(
          path: 'specategory',
          builder: (BuildContext context, GoRouterState state) {
            return  SpecificCatScreen();
          },
        ),
      ],
    ),
  ],
);