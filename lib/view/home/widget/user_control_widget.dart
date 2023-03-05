import 'package:flutter/material.dart';
import 'package:noviindus_test/helpers/app_colors.dart';

class UserControlWidget extends StatelessWidget {
  const UserControlWidget(
      {super.key,
      required this.text,
      required this.bgColor,
      required this.controll,
      required this.image,
      required this.imageBgColor,
      required this.height,
      required this.width});
  final String text;
  final Color bgColor;
  final String controll;
  final String image;
  final Color imageBgColor;

  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          color: bgColor),
      height: 176,
      width: 158,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              text,
              style: const TextStyle(
                  color: AppColors.loginButtonBgColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 26,
                  height: 42.77 / 26),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Text(
              controll,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 10,
                color: AppColors.loginButtonBgColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 34),
            child: Container(
              decoration: BoxDecoration(
                color: imageBgColor,
                image: DecorationImage(
                    image: AssetImage(
                      image,
                    ),
                    fit: BoxFit.fill),
              ),
              height: height,
              width: width,
            ),
          ),
        ],
      ),
    );
  }
}
