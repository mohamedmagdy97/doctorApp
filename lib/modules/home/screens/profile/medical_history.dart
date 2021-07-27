import 'package:doctor_app/shared/components/components.dart';
import 'package:flutter/material.dart';

class MedicalHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('التاريخ المرضي'),
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
                  label: 'اسم المرض ',
                ),
                SizedBox(
                  height: 10,
                ),
                defaultFormField(
                  // controller: searchController,
                  validator: (String val) {},
                  type: TextInputType.phone,
                  label: 'تاريخ الاصابة',
                ),
                SizedBox(
                  height: 10,
                ),
                defaultFormField(
                  // controller: searchController,
                  validator: (String val) {},
                  type: TextInputType.phone,
                  label: 'الطبيب المعالج',
                ),
                SizedBox(
                  height: 10,
                ),
                defaultFormField(
                  // controller: searchController,
                  validator: (String val) {},
                  type: TextInputType.phone,
                  label: 'هل يوجد عمليات جراحية',
                ),
                SizedBox(
                  height: 10,
                ),
                defaultFormField(
                  // controller: searchController,
                  validator: (String val) {},
                  type: TextInputType.phone,
                  label: 'هل تعاني من امراض القلب',
                ),
                SizedBox(
                  height: 10,
                ),
                defaultFormField(
                  // controller: searchController,
                  validator: (String val) {},
                  type: TextInputType.phone,
                  label: 'هل يوجد امراض الاورام',
                ),
                SizedBox(
                  height: 10,
                ),
                defaultFormField(
                  // controller: searchController,
                  validator: (String val) {},
                  type: TextInputType.phone,
                  label: 'هل تستخدم علاج نفسي',
                ),
                SizedBox(
                  height: 10,
                ),
                defaultFormField(
                  // controller: searchController,
                  validator: (String val) {},
                  type: TextInputType.phone,
                  label: 'هل يوجد نسبة اعاقة',
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
