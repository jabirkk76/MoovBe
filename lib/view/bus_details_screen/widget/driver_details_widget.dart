import 'package:flutter/material.dart';
import 'package:noviindus_test/helpers/app_colors.dart';
import 'package:noviindus_test/model/driver_model.dart';

class DriverDetailsWidget extends StatelessWidget {
  const DriverDetailsWidget({
    super.key,
    required this.driverModel,
  });

  final DriverModel driverModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 116,
          width: 335,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            color: AppColors.homeAppBarColor,
          ),
          child: Padding(
            padding: const EdgeInsets.all(22),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      driverModel.driver,
                      style: const TextStyle(
                          fontSize: 26, color: AppColors.loginButtonBgColor),
                    ),
                    Row(
                      children: [
                        const Text(
                          'License no:',
                          style: TextStyle(
                              fontSize: 10,
                              color: AppColors.loginButtonBgColor,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          driverModel.licenseNumber,
                          style: const TextStyle(
                              fontSize: 10,
                              color: AppColors.loginButtonBgColor,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 210,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    driverModel.image,
                  ),
                  fit: BoxFit.cover),
            ),
            height: 116,
            width: 94,
          ),
        ),
      ],
    );
  }
}
