import 'package:flutter/material.dart';

import '../../features/home/presentation/pages/home.dart';


class Routes {
  static const String home = "home";
}

class AppRoutes {
  static Route onGenerate(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.home:
        // Map<String,dynamic> args=routeSettings.arguments as Map<String,dynamic>;
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => unDefineRoute(),
        );
    }
  }

  static Widget unDefineRoute() => const Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [Center(child: Text("Undefine Route"))],
        ),
      );
}
