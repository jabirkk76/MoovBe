import 'package:flutter/material.dart';
import 'package:noviindus_test/controller/add_driver_controller.dart';
import 'package:noviindus_test/controller/bus_details_controller.dart';
import 'package:noviindus_test/controller/driver_list_screen_controller.dart';
import 'package:noviindus_test/controller/home_controller.dart';

import 'package:noviindus_test/controller/on_board_controller.dart';
import 'package:noviindus_test/controller/login_controller.dart';
import 'package:noviindus_test/controller/splash_controller.dart';
import 'package:noviindus_test/view/splash/splash_screen.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => OnBoardController(),
        ),
        ChangeNotifierProvider(
          create: (context) => LoginController(),
        ),
        ChangeNotifierProvider(
          create: (context) => BusDetailsController(),
        ),
        ChangeNotifierProvider(
          create: (context) => HomeController(),
        ),
        ChangeNotifierProvider(
          create: (context) => DriverListController(),
        ),
        ChangeNotifierProvider(
          create: (context) => AddDriverController(),
        ),
        ChangeNotifierProvider(
          create: (context) => SplashController(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Axiforma',
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
