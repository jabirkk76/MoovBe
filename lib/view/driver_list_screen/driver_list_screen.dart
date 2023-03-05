import 'package:flutter/material.dart';
import 'package:noviindus_test/controller/driver_list_screen_controller.dart';
import 'package:noviindus_test/helpers/app_colors.dart';
import 'package:noviindus_test/view/driver_list_screen/widgets/drivers_list_widget.dart';
import 'package:noviindus_test/widgets/custom_container_widget.dart';
import 'package:provider/provider.dart';

class DriverListScreen extends StatelessWidget {
  const DriverListScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final driverListController =
        Provider.of<DriverListController>(context, listen: false);
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
                        Padding(
                          padding: const EdgeInsets.only(left: 24.5),
                          child: IconButton(
                            onPressed: () {
                              driverListController
                                  .navigatePreviousScreen(context);
                            },
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 13,
                          width: 247,
                          child: Center(
                            child: Text(
                              'Driver List',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  height: 18 / 16,
                                  fontSize: 16,
                                  color: AppColors.loginButtonBgColor),
                            ),
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 22, left: 28),
            child: Text(
              '21 Drivers Found',
              style: TextStyle(
                  color: AppColors.textGreyColor,
                  fontSize: 13,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            height: 22,
          ),
          const DriversListWidget(),
          GestureDetector(
            onTap: () {
              driverListController.getDriverList();
              driverListController.goAddDriverScreen(context);
            },
            child: const Padding(
              padding: EdgeInsets.only(bottom: 32),
              child: CustomButtonWidget(
                textColor: TextStyle(
                  color: AppColors.loginButtonBgColor,
                ),
                centerText: 'Add Driver',
                color: AppColors.primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
