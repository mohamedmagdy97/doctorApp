import 'package:doctor_app/shared/components/components.dart';
import 'package:doctor_app/shared/components/constants.dart';
import 'package:flutter/material.dart';

class PersonalInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('معلومات الشخصية'),
        centerTitle: true,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                defaultFormField(
                  // controller: searchController,
                  validator: (String val) {},
                  type: TextInputType.phone,
                  label: 'الاسم كامل',
                ),
                SizedBox(
                  height: 10,
                ),
                defaultFormField(
                  // controller: searchController,
                  validator: (String val) {},
                  type: TextInputType.phone,
                  label: 'info@easacc.com',
                ),
                SizedBox(
                  height: 10,
                ),
                defaultFormField(
                  // controller: searchController,
                  validator: (String val) {},
                  type: TextInputType.phone,
                  label: '+0201149504892',
                ),
                SizedBox(
                  height: 10,
                ),
                defaultFormField(
                  // controller: searchController,
                  validator: (String val) {},
                  type: TextInputType.phone,
                  label: 'الجنس',
                ),
                SizedBox(
                  height: 10,
                ),
                defaultFormField(
                  // controller: searchController,
                  validator: (String val) {},
                  type: TextInputType.phone,
                  label: 'الطول',
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
                  label: 'فصيلة الدم',
                ),
                SizedBox(
                  height: 10,
                ),
                defaultFormField(
                  // controller: searchController,
                  validator: (String val) {},
                  type: TextInputType.phone,
                  label: 'مدخن / غير مدخن',
                ),
                SizedBox(height: 20,),

                defaultButton(text: 'حفظ', onPressed: (){})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
