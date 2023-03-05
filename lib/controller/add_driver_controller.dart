import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:noviindus_test/services/add_driver_service.dart';

class AddDriverController extends ChangeNotifier {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController licenseController = TextEditingController();
  AddDriverService addDriverService = AddDriverService();

  void navigatePreviousScreen(BuildContext context) {
    Navigator.pop(context);
  }

  void addNewDriver(BuildContext context) async {
    await addDriverService
        .addDriver(
      name: nameController.text,
      licenseNo: licenseController.text,
    )
        .then((status) {
      if (status == true) {
        navigatePreviousScreen(context);
      } else {
        log('error');
      }
    });
  }
}
