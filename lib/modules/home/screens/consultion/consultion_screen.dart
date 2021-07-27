import 'package:doctor_app/modules/chat/chat_screen.dart';
import 'package:doctor_app/modules/home/screens/cubit/cubit.dart';
import 'package:doctor_app/modules/home/screens/cubit/states.dart';
import 'package:doctor_app/shared/components/components.dart';
import 'package:doctor_app/shared/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConsultationScreen extends StatelessWidget {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => ConsultCubit(),
      child: BlocConsumer<ConsultCubit, ConsultStates>(
        builder: (BuildContext context, ConsultStates state) {
          ConsultCubit cubit = ConsultCubit.get(context);
          return Scaffold(
            key: scaffoldKey,
            appBar: AppBar(),
            body: Directionality(
              textDirection: TextDirection.rtl,
              child: SingleChildScrollView(
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
                                'الطبيب المعالج',
                                style: txt1,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              // Container(
                              //   height: 50,
                              //   color: Colors.grey[200],
                              //   child: TextFormField(
                              //     keyboardType: TextInputType.number,
                              //     decoration: InputDecoration(
                              //       contentPadding:
                              //           EdgeInsets.fromLTRB(20.0, 8, 20.0, 8),
                              //       hintText:
                              //           'يرجى وصف مرضك أو أعراضك. ما نوع المساعدة التي أحتاجها؟',
                              //     ),
                              //   ),
                              // ),

                              // defaultFormField(
                              //   // controller: searchController,
                              //   validator: (String val) {},
                              //   type: TextInputType.phone,
                              //   label: 'يرجى وصف مرضك أو أعراضك. ما نوع المساعدة التي أحتاجها؟',
                              // ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      defaultFormField(
                        // controller: searchController,
                        validator: (String val) {},
                        type: TextInputType.phone,
                        label:
                            'يرجى وصف مرضك أو أعراضك. ما نوع المساعدة التي أحتاجها؟',
                      ),
                      Text(
                        'المحتوى مرئي للطبيب فقط',
                        style: txt2,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      Text(
                        'يرجى وصف حالتك بالتفصيل',
                        style: txt2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 5),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              'استشارة جديدة',
                              style: txt4,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 5),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              'متابعة',
                              style: txt2,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 5),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              'مريض اخر',
                              style: txt2,
                            ),
                          ),
                        ],
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
                              name: 'صورة/فيديو',
                              width: 70,
                              height: 40,
                            ),
                          ),
                          Text(
                            'ما تم تحميله مرئي فقط للأطباء',
                            style: txt2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      defaultButton(
                            text: 'التالي',
                            onPressed: () {
                              scaffoldKey.currentState
                                  .showBottomSheet(
                                    (context) => Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: Container(
                                        color: Colors.white,
                                        width: double.infinity,
                                        padding: EdgeInsets.all(20),
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Text(
                                                    'الاجمالي',
                                                    style: txt2,
                                                  ),
                                                  Text(
                                                    'الباقات',
                                                    style: txt2,
                                                  ),
                                                  Text(
                                                    'ابداء الان ',
                                                    style: txt2,
                                                  ),
                                                  IconButton(
                                                    icon: Image.asset(
                                                        'assets/icons/chat.png'),
                                                    onPressed: () {},
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    '٣٥٠ جنية',
                                                    style: txt1,
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    'اشتراك لمدة عام واحد فقط',
                                                    style: txt2,
                                                  ),
                                                ],
                                              ),

                                              /// 1st offer
                                              InkWell(
                                                onTap: () {
                                                  ConsultCubit.get(context)
                                                      .changeSelectedItem1();
                                                },
                                                child: Container(
                                                  padding:
                                                      EdgeInsets.symmetric(
                                                          horizontal: 10),
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey[200],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                    border: ConsultCubit.get(
                                                                context)
                                                            .selectedItem1
                                                        ? Border.all(
                                                            color: Colors
                                                                .blueAccent)
                                                        : null,
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                vertical: 5,
                                                                horizontal:
                                                                    5),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10),
                                                        ),
                                                        child: Text(
                                                          '٣٥٠',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text('سنوي'),
                                                          Text(
                                                            'اشتراك لمدة عام واحد فقط',
                                                            style: txt2,
                                                          ),
                                                        ],
                                                      ),
                                                      Spacer(),
                                                      Icon(
                                                        Icons.check_circle,
                                                        color: ConsultCubit.get(
                                                                    context)
                                                                .selectedItem1
                                                            ? Colors.blue
                                                            : Colors.black,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),

                                              /// 2nd offer
                                              InkWell(
                                                onTap: () {
                                                  ConsultCubit.get(context)
                                                      .changeSelectedItem2();
                                                },
                                                child: Container(
                                                  padding:
                                                      EdgeInsets.symmetric(
                                                          horizontal: 10),
                                                  decoration: BoxDecoration(
                                                    border: ConsultCubit.get(
                                                                context)
                                                            .selectedItem2
                                                        ? Border.all(
                                                            color: Colors
                                                                .blueAccent)
                                                        : null,
                                                    color: Colors.grey[200],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                vertical: 5,
                                                                horizontal:
                                                                    5),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10),
                                                        ),
                                                        child: Text(
                                                          '٢٠٠',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text('٦ شهور '),
                                                          Text(
                                                            'عدد ٥ استشارات شهريا بقيمة ٢٠٠ جنية',
                                                            style: txt2,
                                                          ),
                                                        ],
                                                      ),
                                                      Spacer(),
                                                      Icon(
                                                        Icons.check_circle,
                                                        color: ConsultCubit.get(
                                                                    context)
                                                                .selectedItem2
                                                            ? Colors.blue
                                                            : Colors.black,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),

                                              /// 3th offer
                                              InkWell(
                                                onTap: () {
                                                  ConsultCubit.get(context)
                                                      .changeSelectedItem3();
                                                },
                                                child: Container(
                                                  padding:
                                                      EdgeInsets.symmetric(
                                                          horizontal: 10),
                                                  decoration: BoxDecoration(
                                                    border: ConsultCubit.get(
                                                                context)
                                                            .selectedItem3
                                                        ? Border.all(
                                                            color: Colors
                                                                .blueAccent)
                                                        : null,
                                                    color: Colors.grey[200],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                vertical: 5,
                                                                horizontal:
                                                                    10),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10),
                                                        ),
                                                        child: Text(
                                                          '٥٠',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text('شهري'),
                                                          Text(
                                                            'عدد ٣ استشارات شهريا بقيمة ٥٠ جنية',
                                                            style: txt2,
                                                          ),
                                                        ],
                                                      ),
                                                      Spacer(),
                                                      Icon(
                                                        Icons.check_circle,
                                                        color: ConsultCubit.get(
                                                                    context)
                                                                .selectedItem3
                                                            ? Colors.blue
                                                            : Colors.black,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              defaultButton(
                                                  text: 'أدفع الان',
                                                  onPressed: () {
                                                    navigateTo(context,
                                                        ChatScreen());
                                                  })
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    elevation: 20,
                                  )
                                  .closed
                                  .then((value) {});

                        },

                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
