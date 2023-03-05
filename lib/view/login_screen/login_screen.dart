import 'package:flutter/material.dart';
import 'package:noviindus_test/controller/login_controller.dart';
import 'package:noviindus_test/helpers/app_colors.dart';
import 'package:noviindus_test/widgets/custom_container_widget.dart';
import 'package:noviindus_test/widgets/custom_text_form_field_widget.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final loginController =
        Provider.of<LoginController>(context, listen: false);
    const String text = 'Welcome';
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 266,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/Rectangle.png'),
                            fit: BoxFit.fill),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: -200,
                      right: 0,
                      child: Container(
                        height: 481.41,
                        width: 442.79,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/Polygon .png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 127,
                      left: 30,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            text,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 41,
                              fontWeight: FontWeight.w700,
                              height: 67.44 / 41,
                              letterSpacing: -3,
                            ),
                          ),
                          Text(
                            'Manage your Bus and Drivers',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              height: 25.34 / 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 42),
                CustomTextFormFieldWidget(
                  validation: (value) {
                    if (value!.isEmpty) {
                      return 'Enter valid username';
                    }
                    return null;
                  },
                  controller: loginController.nameController,
                  hint: 'Enter Username',
                ),
                const SizedBox(height: 17),
                CustomTextFormFieldWidget(
                  validation: (value) {
                    if (value!.isEmpty) {
                      return "Enter valid password";
                    }
                    return null;
                  },
                  hint: 'Enter Password',
                  controller: loginController.passwordController,
                ),
                const SizedBox(
                  height: 267,
                ),
                Consumer<LoginController>(
                  builder: (context, value, child) {
                    if (value.isLoading == true) {
                      return const Center(
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                        ),
                      );
                    } else {
                      return GestureDetector(
                        onTap: () {
                          loginController.login(context);
                        },
                        child: const CustomButtonWidget(
                          textColor: TextStyle(
                              color: AppColors.loginButtonBgColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                          centerText: 'Login',
                          color: AppColors.primaryColor,
                        ),
                      );
                    }
                  },
                ),
                const SizedBox(
                  height: 32,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
