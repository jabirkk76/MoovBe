import 'package:flutter/material.dart';

import '../../../helpers/app_colors.dart';

class BusDetailsWidget extends StatelessWidget {
  const BusDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
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
    );
  }
}
