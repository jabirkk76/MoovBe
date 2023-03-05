// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:noviindus_test/controller/add_driver_controller.dart';
import 'package:noviindus_test/controller/driver_list_screen_controller.dart';
import 'package:noviindus_test/helpers/app_colors.dart';
import 'package:noviindus_test/widgets/custom_container_widget.dart';
import 'package:noviindus_test/widgets/custom_text_form_field_widget.dart';
import 'package:provider/provider.dart';

class AddDriverScreen extends StatelessWidget {
  const AddDriverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final addDriverController =
        Provider.of<AddDriverController>(context, listen: false);
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
                              addDriverController
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
                              'Add Driver',
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
      body: SafeArea(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              const SizedBox(
                height: 39,
              ),
              CustomTextFormFieldWidget(
                validation: (value) {
                  if (value!.isEmpty) {
                    return 'Enter valid Name';
                  } else {
                    return null;
                  }
                },
                controller: addDriverController.nameController,
                hint: 'Enter Name',
              ),
              const SizedBox(height: 17),
              CustomTextFormFieldWidget(
                validation: (value) {
                  if (value!.isEmpty) {
                    return 'Enter valid Licence number';
                  } else {
                    return null;
                  }
                },
                controller: addDriverController.licenseController,
                hint: 'Enter Licence Number',
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 32),
                child: GestureDetector(
                  onTap: () {
                    addDriverController.addNewDriver(context);
                    driverListController.getDriverList();
                  },
                  child: const CustomButtonWidget(
                    textColor: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: AppColors.loginButtonBgColor,
                        height: 32.08 / 20),
                    centerText: 'Save',
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
