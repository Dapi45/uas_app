import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../style/AppColors.dart';

class Task extends StatelessWidget {
  const Task({
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
                    'Tugas Mingguan',
                    style:
                        TextStyle(color: AppColors.primaryText, fontSize: 25),
                  ),
                ],
              ),
              SizedBox(
                height: context.isPhone ? 0 : 10,
              ),
              SizedBox(
                height: Get.currentRoute == '/task'
                    ? Get.height * 0.69
                    : context.isPhone
                        ? Get.height * 0.34
                        : Get.height * 0.69,
                child: ListView(
                  clipBehavior: Clip.antiAlias,
                  // scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: [
                    Container(
                      height: 200,
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
                                  backgroundColor: Colors.amber,
                                  radius: 20,
                                  foregroundImage: NetworkImage(
                                      'https://cdn.discordapp.com/attachments/956457874962391081/1007470517508374588/unknown.png'),
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
                            'Tugas Task Management',
                            style: TextStyle(
                                color: AppColors.primaryText, fontSize: 15),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 200,
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
                                  backgroundColor: Colors.amber,
                                  radius: 20,
                                  foregroundImage: NetworkImage(
                                      'https://cdn.discordapp.com/attachments/956457874962391081/1007470517508374588/unknown.png'),
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
                            'Tugas Praktikum OpenCV',
                            style: TextStyle(
                                color: AppColors.primaryText, fontSize: 15),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 200,
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
                                  backgroundColor: Colors.amber,
                                  radius: 20,
                                  foregroundImage: NetworkImage(
                                      'https://cdn.discordapp.com/attachments/956457874962391081/1007470517508374588/unknown.png'),
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
                            'Tugas Praktikum Rangkaian Digiytal',
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
