import 'package:doctor_app/shared/components/constants.dart';
import 'package:doctor_app/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MedicalAdvice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('نصيحة طبية'),
        centerTitle: true,
        actions: [
          IconButton(icon: Icon(Icons.bookmark_border), onPressed: () {}),
          IconButton(icon: Icon(Icons.launch), onPressed: () {}),
        ],
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Text(
                  'قدم مريض السكري',
                  style: txt1,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundImage: AssetImage('assets/icons/pic.png'),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text('د/عصام سليم'),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'sep 12, 2020',
                      style: txt2,
                    ),
                  ],
                ),
                Container(
                  width: double.infinity,
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.asset(
                          'assets/icons/pic1.png',
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: 120,
                        ),
                      ),
                      Text(
                        'القدم السكري (Diabetic foot) هي قدم مريض السكري المعرضة للإصابة بالتقرحات أو الالتهاب والعدوى بسبب الاعتلال العصبي الذي يسببه مرض السكري. وتعتبر من المضاعفات الشائعة لمرض السكري الذي لا يتم التحكم به بشكل جيد.',
                        style: txt3,
                      ),
                      Text(
                        'يصاب 15% من مرضى السكري بالقدم السكري، تتصف القدم السكري باعتلال عصبي ومفصلي، ونقص في التروية وارتفاع احتمالية الإصابة بالعدوى. لنتعرف على أبرز أعراض القدم السكري ومضاعفاتها:',
                        style: txt3,
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey[200],
                            backgroundImage: AssetImage(
                              'assets/icons/icon-twitter.png',
                            ),
                            radius: 15,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.grey[200],
                            backgroundImage:
                                AssetImage('assets/icons/icon-google.png'),
                            radius: 15,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.grey[200],
                            backgroundImage: AssetImage(
                              'assets/icons/icon-facebook.png',
                            ),
                            radius: 15,
                          ),
                          Spacer(),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  'Helpful(256)',
                                  style: txt4,
                                ),
                                Image.asset(
                                  'assets/icons/like.png',
                                  width: 35,
                                  height: 35,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: double.infinity,
                        child: Text(
                          'مميز لك',
                          style: txt1,
                          textAlign: TextAlign.start,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () {},
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
                                            MediaQuery.of(context).size.width *
                                                0.55,
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
                                            MediaQuery.of(context).size.width *
                                                0.48,
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
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () {},
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
                                            MediaQuery.of(context).size.width *
                                                0.55,
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
                                            MediaQuery.of(context).size.width *
                                                0.48,
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
