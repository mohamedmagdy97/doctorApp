import 'package:doctor_app/modules/home/screens/profile/medical_history.dart';
import 'package:doctor_app/modules/home/screens/profile/personal_info.dart';
import 'package:doctor_app/modules/notification/notification_screen.dart';
import 'package:doctor_app/shared/components/components.dart';
import 'package:doctor_app/shared/components/constants.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        leading:
            IconButton(icon: Icon(Icons.notifications_none), onPressed: () {
              navigateTo(context, NotificationScreen());
            }),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundImage:
                                  AssetImage('assets/icons/circle_pic.png'),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'أحمد جمال',
                                  style: txt1,
                                ),
                                Text(
                                  'حساب',
                                  style: txt2,
                                ),
                              ],
                            )
                          ],
                        ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text(
                                'مجاناً',
                                style: txt1,
                              ),
                              Text(
                                'نوع الحساب',
                                style: txt2,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '3',
                                style: txt1,
                              ),
                              Text(
                                'عدد الاستشارات',
                                style: txt2,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '2',
                                style: txt1,
                              ),
                              Text(
                                'المستخدم',
                                style: txt2,
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'بياناتي',
                        style: txt1,
                      ),
                      InkWell(
                        onTap: () {
                          navigateTo(context, PersonalInformation());
                        },
                        child: Row(
                          children: [
                            Image.asset('assets/icons/heart.png'),
                            Text(
                              ' معلومات الشخصية',
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      InkWell(
                        onTap: () {
                          navigateTo(context, MedicalHistory());

                        },
                        child: Row(
                          children: [
                            Image.asset('assets/icons/para_person.png'),
                            Text(
                              ' التاريخ المرضي',
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Row(
                          children: [
                            Image.asset('assets/icons/profile.png'),
                            Text(
                              ' الملفات الطبية',
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/icons/incoming_call.png',
                              height: 25,
                              width: 25,
                            ),
                            Text(
                              ' مكالمة طارئة',
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'آخر',
                        style: txt1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Column(
                              children: [
                                Image.asset('assets/icons/icon1.png'),
                                Text('معلومات عنا')
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Column(
                              children: [
                                Image.asset('assets/icons/icon2.png'),
                                Text('خدمة العملاء')
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Column(
                              children: [
                                Image.asset('assets/icons/icon3.png'),
                                Text('الشروط و الاحكام')
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
