import 'package:flutter/material.dart';
import 'package:noviindus_test/controller/home_controller.dart';

import 'package:noviindus_test/helpers/app_colors.dart';
import 'package:noviindus_test/view/home/widget/bus_list_widget.dart';
import 'package:noviindus_test/view/home/widget/user_control_widget.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final homeController = Provider.of<HomeController>(context, listen: false);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(375, 119),
        child: Container(
          color: AppColors.homeAppBarColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/logo.png'), fit: BoxFit.cover),
                ),
                height: 41.72,
                width: 126.24,
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 19),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const UserControlWidget(
                    height: 102,
                    width: 153,
                    imageBgColor: AppColors.primaryColor,
                    image: 'assets/image 2.png',
                    controll: 'Manage your Bus',
                    bgColor: AppColors.primaryColor,
                    text: 'Bus',
                  ),
                  GestureDetector(
                    onTap: () {
                      homeController.goDriverListScreen(context);
                    },
                    child: const UserControlWidget(
                      height: 110,
                      width: 113,
                      imageBgColor: AppColors.homeAppBarColor,
                      image: 'assets/image3.png',
                      controll: 'Manage your Driver',
                      bgColor: AppColors.homeAppBarColor,
                      text: 'Driver',
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 22, left: 28),
                child: Text(
                  '21 Buses Found',
                  style: TextStyle(
                    color: AppColors.textGreyColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                  ),
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              ListWidget(
                list: homeController.busmodelList,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
