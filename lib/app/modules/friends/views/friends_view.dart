import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:uas_app/app/utils/style/AppColors.dart';
import 'package:uas_app/app/utils/widget/header.dart';
import 'package:uas_app/app/utils/widget/myfriends.dart';
import 'package:uas_app/app/utils/widget/sidebar.dart';

import '../../../utils/widget/recomFriends.dart';
import '../controllers/friends_controller.dart';

class FriendsView extends GetView<FriendsController> {
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
                        children: [
                          const Text(
                            'Rekomendasi Teman',
                            style: TextStyle(
                              fontSize: 25,
                              color: AppColors.primaryText,
                            ),
                          ),
                          const recomFriends(),
                          !context.isPhone
                              ? const SizedBox(
                                  height: 50,
                                )
                              : const SizedBox(),
                          const MyFriend()
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
