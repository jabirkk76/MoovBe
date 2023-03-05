import 'package:flutter/material.dart';
import 'package:noviindus_test/model/bus_model.dart';
import 'package:noviindus_test/view/bus_details_screen/bus_details_screen.dart';
import 'package:noviindus_test/view/driver_list_screen/driver_list_screen.dart';

class HomeController extends ChangeNotifier {
  void goBustDetailsScreen(
    BuildContext context, {
    required BusModel busModel,
  }) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => BusDetailsScreen(
          busModel: busModel,
        ),
      ),
    );
  }

  void goDriverListScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const DriverListScreen(),
    ));
  }

  List<BusModel> busmodelList = [
    BusModel(
      busType: 'KSRTC',
      series: 'Swift Scania P-series',
      image: 'assets/image 3.png',
    ),
    BusModel(
      busType: 'KSRTC',
      series: 'Swift Scania P-series',
      image: 'assets/image 3.png',
    ),
    BusModel(
      busType: 'KSRTC',
      series: 'Swift Scania P-series',
      image: 'assets/image 3.png',
    ),
    BusModel(
      busType: 'KSRTC',
      series: 'Swift Scania P-series',
      image: 'assets/image 3.png',
    ),
    BusModel(
      busType: 'KSRTC',
      series: 'Swift Scania P-series',
      image: 'assets/image 3.png',
    ),
    BusModel(
      busType: 'KSRTC',
      series: 'Swift Scania P-series',
      image: 'assets/image 3.png',
    ),
    BusModel(
      busType: 'KSRTC',
      series: 'Swift Scania P-series',
      image: 'assets/image 3.png',
    ),
    BusModel(
      busType: 'KSRTC',
      series: 'Swift Scania P-series',
      image: 'assets/image 3.png',
    ),
    BusModel(
      busType: 'KSRTC',
      series: 'Swift Scania P-series',
      image: 'assets/image 3.png',
    ),
    BusModel(
      busType: 'KSRTC',
      series: 'Swift Scania P-series',
      image: 'assets/image 3.png',
    ),
    BusModel(
      busType: 'KSRTC',
      series: 'Swift Scania P-series',
      image: 'assets/image 3.png',
    ),
    BusModel(
      busType: 'KSRTC',
      series: 'Swift Scania P-series',
      image: 'assets/image 3.png',
    ),
  ];
}
