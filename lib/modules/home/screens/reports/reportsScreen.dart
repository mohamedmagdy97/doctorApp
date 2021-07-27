import 'package:doctor_app/shared/components/components.dart';
import 'package:doctor_app/shared/components/constants.dart';
import 'package:doctor_app/shared/styles/colors.dart';
import 'package:flutter/material.dart';

class ReportsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        defaultFormField(
                          // controller: searchController,
                          validator: (String val) {},
                          type: TextInputType.phone,
                          pIcon: Icon(Icons.search),
                          sIcon: Icon(Icons.settings),
                          label: 'نظام غذائى',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(
                                icon: Icon(Icons.keyboard_arrow_down),
                                onPressed: () {}),
                            Text('نصائح'),
                            Text('ضغط الدم'),
                            Text(
                              'السكري',
                              style: txt4,
                            ),
                            Text('امراض القلب'),
                          ],
                        )
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
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(25),
                              topLeft: Radius.circular(25),
                            ),
                            child: Image.asset(
                              'assets/icons/pic1.png',
                              height: 120,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            )),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Text(
                                'نظام غذائي لمرضى السكر. يُعدّ النظام الغذائي الصحّي والمتوازن',
                                style: txt1,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 25,
                                    backgroundImage: AssetImage(
                                        'assets/icons/circle_pic.png'),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'أحمد جمال',
                                        style: txt1,
                                      ),
                                      Text(
                                        'منذ واحد ساعة',
                                        style: txt2,
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Icon(
                                      Icons.bookmark_border,
                                      color: defaultColor,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
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
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(25),
                              topLeft: Radius.circular(25),
                            ),
                            child: Image.asset(
                              'assets/icons/pic1.png',
                              height: 120,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            )),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Text(
                                'نظام غذائي لمرضى السكر. يُعدّ النظام الغذائي الصحّي والمتوازن',
                                style: txt1,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 25,
                                    backgroundImage: AssetImage(
                                        'assets/icons/circle_pic.png'),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'أحمد جمال',
                                        style: txt1,
                                      ),
                                      Text(
                                        'منذ واحد ساعة',
                                        style: txt2,
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Icon(
                                      Icons.bookmark_border,
                                      color: defaultColor,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
