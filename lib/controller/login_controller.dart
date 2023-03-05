import 'package:flutter/material.dart';
import 'package:noviindus_test/helpers/preference_manager.dart';
import 'package:noviindus_test/services/login_service.dart';
import 'package:noviindus_test/view/home/home_screen.dart';

class LoginController extends ChangeNotifier {
  final TextEditingController nameController = TextEditingController();
  final passwordController = TextEditingController();

  LoginServiceClass loginServiceClass = LoginServiceClass();
  bool isLoading = false;

  void login(BuildContext context) async {
    isLoading = true;
    notifyListeners();
    await loginServiceClass
        .login(
      username: nameController.text,
      password: passwordController.text,
    )
        .then((loginResponse) {
      if (loginResponse != null) {
        PreferenceManager().saveData(
          token: loginResponse.access,
          userId: loginResponse.urlId,
        );
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Successfully logged in'),
            backgroundColor: Colors.green,
          ),
        );
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            ),
            (route) => false);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Invalid credentials'),
            backgroundColor: Colors.red,
          ),
        );
      }
    });
    isLoading = false;
    notifyListeners();
  }

  void goHome(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      ),
    );
  }
}
