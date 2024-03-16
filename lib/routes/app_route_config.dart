import 'package:adronall/pages/%E1%B8%B7oginPage.dart';
import 'package:adronall/pages/home.dart';
import 'package:adronall/pages/signupPage.dart';
import 'package:adronall/routes/app_route_const.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../pages/errorPage.dart';
import '../pages/profile.dart';

class AppRouters{
  GoRouter router=GoRouter(
    routes: [
    GoRoute(
      name: AdronAllRouteNames.homeRouteName,
      path: '/',
      pageBuilder: (context, state) {
        return const MaterialPage(child: Home());
      },
      ),
      GoRoute(
      name: AdronAllRouteNames.loginRouteName,
      path: '/login',
      pageBuilder: (context, state) {
        return const MaterialPage(child: loginPage());
      },
      ),
      GoRoute(
      name: AdronAllRouteNames.signUpRouteName,
      path: '/signUp',
      pageBuilder: (context, state) {
        return const MaterialPage(child: signUpPage());
      },
      ),
      GoRoute(
      name: AdronAllRouteNames.profileRouteName,
      path: '/profile',
      pageBuilder: (context, state) {
        return const MaterialPage(child: Profile());
      },
      )
  ],
  errorPageBuilder: (context, state) {
    return const MaterialPage(child: errorPage());
  },
  );
}