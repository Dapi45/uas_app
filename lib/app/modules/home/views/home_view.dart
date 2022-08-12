import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:uas_app/app/utils/style/AppColors.dart';
import 'package:uas_app/app/utils/widget/header.dart';
import 'package:uas_app/app/utils/widget/sidebar.dart';

import '../../../utils/widget/myfriends.dart';
import '../../../utils/widget/Study.dart';
import '../../../utils/widget/task.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

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
                  header(drawerKey: _drawerKey),
                  // content / isi page / screen
                  Expanded(
                    child: Container(
                      padding: !context.isPhone
                          ? const EdgeInsets.all(30)
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          !context.isPhone
                              ? Expanded(
                                  child: Row(
                                    children: const [
                                      Study(),
                                      Task(),
                                      MyFriend(),
                                    ],
                                  ),
                                )
                              : Expanded(
                                  child: Column(
                                    children: const [
                                      Study(),
                                      Task(),
                                    ],
                                  ),
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
