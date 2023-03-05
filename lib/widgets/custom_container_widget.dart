import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget(
      {super.key,
      required this.color,
      required this.centerText,
      required this.textColor});
  final Color color;
  final String centerText;
  final TextStyle textColor;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        height: 58,
        width: 316,
        child: Center(
          child: Text(
            centerText,
            style: textColor,
          ),
        ),
      ),
    );
  }
}
