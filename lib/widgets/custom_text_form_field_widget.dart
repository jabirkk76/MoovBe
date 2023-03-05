import 'package:flutter/material.dart';
import 'package:noviindus_test/helpers/app_colors.dart';

class CustomTextFormFieldWidget extends StatelessWidget {
  const CustomTextFormFieldWidget(
      {super.key,
      required this.hint,
      required this.controller,
      required this.validation});

  final String hint;
  final TextEditingController controller;
  final String? Function(String?)? validation;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: const BoxDecoration(
          color: AppColors.loginTextFormFieldBgColor,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        height: 58,
        width: 321,
        child: Center(
          child: TextFormField(
            validator: validation,
            controller: controller,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                hintText: hint,
                hintStyle: const TextStyle(fontSize: 15),
                border: InputBorder.none),
          ),
        ),
      ),
    );
  }
}
