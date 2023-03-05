import 'package:flutter/material.dart';
import 'package:noviindus_test/controller/on_board_controller.dart';
import 'package:noviindus_test/helpers/app_colors.dart';
import 'package:noviindus_test/widgets/custom_container_widget.dart';
import 'package:provider/provider.dart';

class OnBoardScreen extends StatelessWidget {
  const OnBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final onBoardController =
        Provider.of<OnBoardController>(context, listen: false);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Spacer(),
              Container(
                height: 68,
                width: 205.76,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/logo.png'),
                  ),
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  onBoardController.goLoginScreen(context);
                },
                child: const CustomButtonWidget(
                  centerText: 'Get Started',
                  textColor: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                  color: AppColors.onBoardContainerBgColor,
                ),
              ),
              const SizedBox(
                height: 28,
              ),
            ],
          ),
        ),
      ),
      backgroundColor: AppColors.primaryColor,
    );
  }
}
