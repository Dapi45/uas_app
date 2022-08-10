import 'package:flutter/material.dart';
import 'package:uas_app/app/utils/style/AppColors.dart';
import 'package:get/get.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: !context.isPhone
          ? Row(
              children: [
                const Expanded(
                  flex: 1,
                  child: ClipRRect(
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 150,
                      foregroundImage: NetworkImage('assets/icons/profile.png'),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'User',
                        style: TextStyle(
                            color: AppColors.primaryText, fontSize: 40),
                      ),
                      Text(
                        'user@gmail.co.id',
                        style: TextStyle(
                            color: AppColors.primaryText, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            )
          : Center(
              child: Column(
                children: const [
                  SizedBox(
                    height: 20,
                  ),
                  ClipRRect(
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 100,
                      foregroundImage: NetworkImage('assets/icons/profile.png'),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'User',
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 40,
                    ),
                  ),
                  Text(
                    'user@gmail.co.id',
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
