import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:uas_app/app/routes/app_pages.dart';
import 'package:uas_app/app/utils/style/AppColors.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primaryBg,
        body: Container(
          margin: context.isPhone
              ? EdgeInsets.all(Get.width * 0.1)
              : EdgeInsets.symmetric(
                  horizontal: Get.height * 0.25,
                  vertical: Get.height * 0.1,
                ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50), color: Colors.white),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      context.isPhone
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                  Text(
                                    'Welcome',
                                    style: TextStyle(
                                        color: AppColors.primaryText,
                                        fontSize: 40),
                                  ),
                                  Text(
                                    'Please Sign In',
                                    style: TextStyle(
                                        color: AppColors.primaryText,
                                        fontSize: 20),
                                  ),
                                  Text(
                                    "Let's learning",
                                    style: TextStyle(
                                        color: AppColors.primaryText,
                                        fontSize: 15),
                                  ),
                                ])
                          : Column(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      'Welcome',
                                      style: TextStyle(
                                          color: AppColors.primaryText,
                                          fontSize: 60),
                                    ),
                                    Text(
                                      'Please Sign In',
                                      style: TextStyle(
                                          color: AppColors.primaryText,
                                          fontSize: 30),
                                    ),
                                    Text(
                                      "Let's learning",
                                      style: TextStyle(
                                          color: AppColors.primaryText,
                                          fontSize: 20),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                      Icon(
                        Ionicons.book,
                        size: context.isPhone
                            ? Get.height * 0.3
                            : Get.height * 0.4,
                        color: Colors.green,
                      ),
                      FloatingActionButton.extended(
                        backgroundColor: Colors.green,
                        onPressed: () => Get.toNamed(Routes.HOME),
                        label: const Text('Sign In With Google'),
                        icon: const Icon(
                          Ionicons.logo_google,
                          color: AppColors.cardBg,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
