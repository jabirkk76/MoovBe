import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:noviindus_test/model/login_model.dart';

class LoginServiceClass {
  Future<LoginResponse?> login({
    required String username,
    required String password,
  }) async {
    try {
      const url = 'http://flutter.noviindus.co.in/api/LoginApi';
      final response = await http.post(Uri.parse(url),
          body: {"username": username, "password": password});

      final data = json.decode(response.body);

      if (data["status"] == true) {
        return LoginResponse.fromJson(data);
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}
