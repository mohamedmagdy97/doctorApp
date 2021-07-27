import 'package:doctor_app/modules/home/screens/profile/medical_history.dart';
import 'package:doctor_app/modules/home/screens/profile/personal_info.dart';
import 'package:doctor_app/modules/notification/notification_screen.dart';
import 'package:doctor_app/shared/components/components.dart';
import 'package:doctor_app/shared/components/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EnteringAnalyzes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.notifications_none),
            onPressed: () {
              navigateTo(context, NotificationScreen());
            }),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                defaultFormField(
                  // controller: searchController,
                  validator: (String val) {},
                  type: TextInputType.phone,
                  label: 'نوع التحليل',
                ),
                SizedBox(
                  height: 10,
                ),
                defaultFormField(
                  // controller: searchController,
                  validator: (String val) {},
                  type: TextInputType.phone,
                  label: 'نسبة السكر في الدم',
                ),
                SizedBox(
                  height: 10,
                ),
                defaultFormField(
                  // controller: searchController,
                  validator: (String val) {},
                  type: TextInputType.phone,
                  label: 'الوزن',
                ),
                SizedBox(
                  height: 10,
                ),
                defaultFormField(
                  // controller: searchController,
                  validator: (String val) {},
                  type: TextInputType.phone,
                  label: 'هل يوجد حمل',
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: buildServiceCard(
                        onTap: () {},
                        image: 'assets/icons/camera.png',
                        name: 'صورة/ملف',
                        width: 70,
                        height: 40,
                      ),

                    ),
                    Text(
                      'أرفاق صورة التحليل',
                      style: txt2,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                defaultButton(text: 'حفظ', onPressed: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
