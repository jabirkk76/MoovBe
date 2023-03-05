import 'package:flutter/material.dart';
import 'package:noviindus_test/model/driver_list_model.dart';
import 'package:noviindus_test/services/delete_driver_service.dart';
import 'package:noviindus_test/services/driver_list_service.dart';
import 'package:noviindus_test/view/add_driver_screen/add_driver_screen.dart';

class DriverListController with ChangeNotifier {
  DriverListController() {
    getDriverList();
  }
  bool isLoading = false;

  DeleteDriverService deleteDriverService = DeleteDriverService();

  void goAddDriverScreen(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const AddDriverScreen(),
      ),
    );
  }

  void goBack(BuildContext context) {
    Navigator.of(context).pop();
  }

  DriverListModel? driverListModel;

  void getDriverList() async {
    isLoading = true;
    notifyListeners();
    await DriverListService().getDriverList().then((value) {
      if (value.isNotEmpty) {
        driverListModel = DriverListModel(driverList: value);
      }
    });
    isLoading = false;

    notifyListeners();
  }

  void deleteDriver(int index, BuildContext context) async {
    await deleteDriverService
        .deleteService(
            driverId: driverListModel!.driverList![index].id.toString())
        .then((status) {
      if (status == true) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Driver deleted'),
          backgroundColor: Colors.green,
        ));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Driver not deleted'),
          backgroundColor: Colors.red,
        ));
      }
      getDriverList();
    });
  }

  void navigatePreviousScreen(BuildContext context) {
    Navigator.pop(context);
  }
}
