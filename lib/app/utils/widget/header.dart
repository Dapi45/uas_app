import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:uas_app/app/routes/app_pages.dart';
import 'package:uas_app/app/utils/style/AppColors.dart';
import 'package:uas_app/app/utils/widget/search.dart';

class header extends StatelessWidget {
  const header({
    Key? key,
    required GlobalKey<ScaffoldState> drawerKey,
  })  : _drawerKey = drawerKey,
        super(key: key);

  final GlobalKey<ScaffoldState> _drawerKey;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                'Study online',
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
          const Icon(
            Ionicons.notifications,
            color: AppColors.primaryText,
            size: 30,
          ),
          const SizedBox(
            width: 15,
          ),
          GestureDetector(
            onTap: () => Get.toNamed(Routes.PROFILE),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: const CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 25,
                foregroundImage: AssetImage('assets/icons/profile.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
