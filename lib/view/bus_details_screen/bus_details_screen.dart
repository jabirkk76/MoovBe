// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:noviindus_test/model/bus_model.dart';
import 'package:noviindus_test/model/driver_model.dart';
import 'package:noviindus_test/view/bus_details_screen/widget/booking_seat_widget.dart';
import 'package:noviindus_test/view/bus_details_screen/widget/driver_details_widget.dart';

import '../../helpers/app_colors.dart';

class BusDetailsScreen extends StatelessWidget {
  const BusDetailsScreen({
    super.key,
    required this.busModel,
  });
  final BusModel busModel;
  @override
  Widget build(BuildContext context) {
    DriverModel driverModel = DriverModel(
      driver: 'Rohit sharma',
      licenseNumber: 'PJ515196161655',
      image: 'assets/image3.png',
    );
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(375, 119),
        child: Center(
          child: Container(
            color: AppColors.homeAppBarColor,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 24.5),
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 33.7),
                          child: Text(
                            busModel.busType,
                            style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                height: 18 / 16,
                                fontSize: 16,
                                color: AppColors.loginButtonBgColor),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            busModel.series,
                            style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                height: 18 / 16,
                                fontSize: 16,
                                color: AppColors.loginButtonBgColor),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 28,
              ),
              child: Center(
                child: DriverDetailsWidget(driverModel: driverModel),
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            Row(
              children: const [
                BookingSeatWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
