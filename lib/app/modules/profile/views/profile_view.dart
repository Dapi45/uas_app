import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:uas_app/app/data/controller/auth_controller.dart';

import '../../../utils/style/AppColors.dart';
import '../../../utils/widget/profilewidget.dart';
import '../../../utils/widget/search.dart';
import '../../../utils/widget/sidebar.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  final authC = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: const SizedBox(width: 150, child: SideBar()),
      backgroundColor: AppColors.primaryBg,
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 15,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            _drawerKey.currentState!.openDrawer();
                          },
                          icon: const Icon(
                            Icons.menu,
                            color: AppColors.primaryText,
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Study Online',
                              style: TextStyle(
                                fontSize: 20,
                                color: AppColors.primaryText,
                              ),
                            ),
                            Text(
                              "Don't stop learning",
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColors.primaryText,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        !context.isPhone ? const search() : const SizedBox(),
                        const SizedBox(
                          width: 15,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.defaultDialog(
                              title: 'Sign Out',
                              content:
                                  const Text('Are you sure want to sign out?'),
                              cancel: ElevatedButton(
                                onPressed: () => Get.back(),
                                child: const Text('Cancel'),
                              ),
                              confirm: ElevatedButton(
                                onPressed: () => authC.logout(),
                                child: const Text('Sign Out'),
                              ),
                            );
                          },
                          child: Row(
                            children: const [
                              Text(
                                'Sign Out',
                                style: TextStyle(
                                  color: AppColors.primaryText,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Ionicons.log_out_outline,
                                color: AppColors.primaryText,
                                size: 30,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // content / isi page / screen
                  Expanded(
                    child: Container(
                      padding: !context.isPhone
                          ? const EdgeInsets.all(50)
                          : const EdgeInsets.all(20),
                      margin: !context.isPhone
                          ? const EdgeInsets.all(10)
                          : const EdgeInsets.all(0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: !context.isPhone
                            ? BorderRadius.circular(50)
                            : BorderRadius.circular(0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          ProfileWidget(),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
