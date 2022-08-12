import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:uas_app/app/routes/app_pages.dart';

import '../style/AppColors.dart';

class MyFriend extends StatelessWidget {
  const MyFriend({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            children: [
              Row(
                children: [
                  const Text(
                    'Teman',
                    style:
                        TextStyle(color: AppColors.primaryText, fontSize: 25),
                  ),
                  const Spacer(),
                  !context.isPhone
                      ? GestureDetector(
                          onTap: () => Get.toNamed(Routes.FRIENDS),
                          child: const Text(
                            'lainnya',
                            style: TextStyle(
                                color: AppColors.primaryText, fontSize: 20),
                          ),
                        )
                      : const SizedBox(),
                  !context.isPhone
                      ? const Icon(
                          Ionicons.chevron_forward,
                          color: AppColors.primaryText,
                        )
                      : const SizedBox(),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                height: context.isPhone
                    ? 200
                    : Get.currentRoute == '/friends'
                        ? Get.height * 0.29
                        : Get.height * 0.69,
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: 8,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: context.isPhone
                          ? 2
                          : Get.currentRoute == '/friends'
                              ? 5
                              : 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: const Image(
                            image: NetworkImage(
                              'https://cdn.discordapp.com/attachments/956457874962391081/1007470517508374588/unknown.png',
                            ),
                            width: 120,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                          child: Text(
                            'user',
                            style: TextStyle(
                                color: AppColors.primaryText, fontSize: 20),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
