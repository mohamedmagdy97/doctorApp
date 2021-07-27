import 'package:doctor_app/shared/components/constants.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('assets/icons/circle_pic.png'),
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
                        'يجب الحفاظ علي المشي يوميا لمدة نص ساعة',
                        style: txt2,
                      ),
                    ],
                  )
                ],
              ),
              Divider(
                thickness: 1,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'حديثاً',
              ),
              SizedBox(height: 10,),

              buildRowNotification(context),
              Divider(),
              buildRowNotification(context),
              Divider(),
              buildRowNotification(context),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }

  Row buildRowNotification(BuildContext context) {
    return Row(
              children: [
                Image.asset('assets/icons/notification.png'),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                            width : MediaQuery.of(context).size.width*0.55,
                            child: Text(
                          'تحديث',
                          style: txt1,
                        )),
                        Text(
                          '05:52AM',
                          style: txt2,
                        )
                      ],
                    ),
                    Text(
                      'برجاء تحديث التطبيق الي اخر اصدار',
                      style: txt2,
                    ),
                  ],
                )
              ],
            );
  }
}
