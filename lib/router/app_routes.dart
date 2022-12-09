import 'package:iseneca/models/models.dart';
import 'package:flutter/material.dart';
import 'package:iseneca/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'loging';

  static final menuOption = <MenuOption>[
    MenuOption(
        route: 'home',
        icon: Icons.home,
        name: 'Home Screen',
        screen: const HomeScreen()),
    MenuOption(
        route: 'login',
        icon: Icons.inbox,
        name: 'Login',
        screen: const LoginScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'login': (BuildContext context) => const LoginScreen()});

    for (final option in menuOption) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  /*
  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listView1': (BuildContext context) => const ListViewlScreen(),
    'listView2': (BuildContext context) => const ListViewl2Screen(),
    'card': (BuildContext context) => const CardScreen(),
    'alert': (BuildContext context) => const AlertScreen(),
  };
  */

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const LoginScreen());
  }
}
