import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../style/AppColors.dart';

class Study extends StatelessWidget {
  const Study({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Text(
                    'Materi',
                    style:
                        TextStyle(color: AppColors.primaryText, fontSize: 25),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                height: context.isPhone ? Get.height * 0.34 : Get.height * 0.69,
                child: ListView(
                  clipBehavior: Clip.antiAlias,
                  // scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: [
                    Container(
                      height: 220,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.cardBg,
                      ),
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: const CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  radius: 20,
                                  foregroundImage:
                                      NetworkImage('assets/icons/profile.png'),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              const Text('User',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: AppColors.primaryText,
                                  )),
                              const Spacer(),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            'Pemrograman Mobile',
                            style: TextStyle(
                                color: AppColors.primaryText, fontSize: 20),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Mempelajari bahasa pemrograman Flutter',
                            style: TextStyle(
                                color: AppColors.primaryText, fontSize: 15),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 220,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.cardBg,
                      ),
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: const CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  radius: 20,
                                  foregroundImage:
                                      NetworkImage('assets/icons/profile.png'),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              const Text('User',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: AppColors.primaryText,
                                  )),
                              const Spacer(),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            'Citra Digital & Grafika Komputer',
                            style: TextStyle(
                                color: AppColors.primaryText, fontSize: 20),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Mempelajari bahasa pemrograman Python',
                            style: TextStyle(
                                color: AppColors.primaryText, fontSize: 15),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 220,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.cardBg,
                      ),
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: const CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  radius: 20,
                                  foregroundImage:
                                      NetworkImage('assets/icons/profile.png'),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              const Text('User',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: AppColors.primaryText,
                                  )),
                              const Spacer(),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            'Sistem Digital',
                            style: TextStyle(
                                color: AppColors.primaryText, fontSize: 20),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Mempelajari rangkaian komputer menggunakan Digital Works',
                            style: TextStyle(
                                color: AppColors.primaryText, fontSize: 15),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
