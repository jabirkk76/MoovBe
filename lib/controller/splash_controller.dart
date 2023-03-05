import 'dart:async';

import 'package:flutter/material.dart';
import 'package:noviindus_test/helpers/preference_manager.dart';
import 'package:noviindus_test/view/home/home_screen.dart';
import 'package:noviindus_test/view/login_screen/login_screen.dart';

class SplashController extends ChangeNotifier {
  PreferenceManager preferenceManager = PreferenceManager();

  void checkTokenStoredorNot(BuildContext context) async {
    final token = await preferenceManager.getToken();
    final urlId = await preferenceManager.getUrlId();
    await Future.delayed(
      const Duration(seconds: 2),
      () {
        if (token != null && urlId != null) {
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
              (route) => false);
        } else {
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => const LoginScreen(),
              ),
              (route) => false);
        }
      },
    );
  }
}
