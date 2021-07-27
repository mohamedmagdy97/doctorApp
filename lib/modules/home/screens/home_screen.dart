import 'package:doctor_app/modules/home/entering_analyzes.dart';
import 'package:doctor_app/modules/medical_advice/medical_advice.dart';
import 'package:doctor_app/modules/notification/notification_screen.dart';
import 'package:doctor_app/modules/statstics/statictics_screen.dart';
import 'package:doctor_app/shared/components/components.dart';
import 'package:doctor_app/shared/components/constants.dart';
import 'package:doctor_app/shared/styles/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  var searchController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Text(
            ' أحمد',
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          Text(
            'مرحباً ',
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          SizedBox(
            width: 10,
          )
        ],
        leading:
            IconButton(icon: Icon(Icons.notifications_none), onPressed: () {
              navigateTo(context, NotificationScreen());
            }),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Column(
                children: [
                  defaultFormField(
                    controller: searchController,
                    validator: (String val) {},
                    type: TextInputType.phone,
                    sIcon: Icon(Icons.search),
                    label: 'نظام صحي لمريض السكر',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 120,
                    width: double.infinity,
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image(
                            image: AssetImage(
                              'assets/icons/daily_covid.png',
                            ),
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                        Positioned(
                            bottom: 20,
                            left: 10,
                            child: defaultButton(
                                width: 120,
                                height: 30,
                                fontSize: 16,
                                onPressed: () {},
                                text: 'View details',
                                radius: 25,
                                isUpperCase: false,
                                color: secondColor)),
                        Positioned(
                          left: 10,
                          bottom: 60,
                          child: Text(
                            'COVID-19 Data',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'خدمات',
                        style: txt1,
                      ),
                      Text(
                        '< المزيد',
                        style: txt2,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      buildServiceCard(
                        onTap: () {
                          navigateTo(context, StatisticsScreen());
                        },
                        image: 'assets/icons/medical_tool.png',
                        name: 'استشارة طبية',
                      ),
                      buildServiceCard(
                        onTap: () {
                          navigateTo(context, EnteringAnalyzes());
                        },
                        image: 'assets/icons/medical_chart.png',
                        name: 'ادخال التحاليل',
                      ),
                      buildServiceCard(
                        onTap: () {},
                        image: 'assets/icons/incoming_call.png',
                        name: 'مكالمة طارئة',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'نصيحة طبية',
                        style: txt1,
                      ),
                      Text(
                        '< المزيد',
                        style: txt2,
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: (){
                      navigateTo(context, MedicalAdvice());
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[100].withOpacity(0.5),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              'assets/icons/pic.png',
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.55,
                                    child: Text(
                                      'قدم مريض السكري المعرضة للإصابة بالتقرحات أو الالتهاب',
                                    ),
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Icon(
                                      Icons.bookmark_border,
                                      color: defaultColor,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.48,
                                    child: Text(
                                      'د/عصام مسلم',
                                      style: txt2,
                                    ),
                                  ),
                                  Text(
                                    'sep 16,2020',
                                    style: txt2,
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
