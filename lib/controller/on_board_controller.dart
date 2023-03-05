import 'package:flutter/material.dart';
import 'package:noviindus_test/view/login_screen/login_screen.dart';

class OnBoardController extends ChangeNotifier {
  void goLoginScreen(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      ),
    );
  }
}
