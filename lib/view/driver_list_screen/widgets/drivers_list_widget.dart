// ignore_for_file: unused_local_variable, dead_code

import 'package:flutter/material.dart';
import 'package:noviindus_test/controller/driver_list_screen_controller.dart';
import 'package:noviindus_test/controller/home_controller.dart';
import 'package:noviindus_test/helpers/app_colors.dart';
import 'package:provider/provider.dart';

class DriversListWidget extends StatelessWidget {
  const DriversListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final driverListController =
        Provider.of<DriverListController>(context, listen: false);

    final homeController = Provider.of<HomeController>(context, listen: false);

    return Consumer<DriverListController>(
      builder: (context, value, child) {
        if (value.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (driverListController.driverListModel == null) {
          return const Center(child: Text('No Driver Found'));
        } else {
          return Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount:
                  driverListController.driverListModel!.driverList?.length,
              itemBuilder: (context, index) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(213, 213, 213, 0.34),
                                ),
                              ],
                              color: AppColors.homeBusListBgColor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                            ),
                            height: 73,
                            width: 79,
                            child: Container(
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/Ellipse.png',
                                  ),
                                ),
                              ),
                              height: 38,
                              width: 62,
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(213, 213, 213, 0.34),
                                ),
                              ],
                              color: AppColors.loginButtonBgColor,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                            height: 73,
                            width: 255.5,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 14.5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        driverListController
                                                .driverListModel
                                                ?.driverList?[index]
                                                .licenseNo ??
                                            "",
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            height: 18 / 12),
                                      ),
                                      Text(
                                        driverListController.driverListModel
                                                ?.driverList?[index].name ??
                                            "",
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            height: 18 / 12),
                                      ),
                                    ],
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      driverListController.deleteDriver(
                                          index, context);
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Container(
                                        height: 30,
                                        width: 75,
                                        decoration: BoxDecoration(
                                          color: AppColors.primaryColor,
                                          borderRadius:
                                              BorderRadius.circular(4),
                                        ),
                                        alignment: Alignment.center,
                                        child: const Text(
                                          'Delete',
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                            height: 15.84 / 10,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        }
      },
    );
  }
}
