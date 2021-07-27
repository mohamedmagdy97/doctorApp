import 'package:doctor_app/modules/login/login_screen.dart';
import 'package:doctor_app/shared/components/components.dart';
import 'package:doctor_app/shared/styles/colors.dart';
import 'package:flutter/material.dart';

class CreateAccountScreen extends StatelessWidget {
  var phoneController = TextEditingController();
  var nameController = TextEditingController();
  var emailController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    bool remember = false;
    bool _value = false;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'أنشئ حسابك',
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .copyWith(color: Colors.black),
                    ),
                    Row(
                      children: [
                        Text(
                          'هل لديك حساب بالفعل؟',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(color: Colors.grey),
                        ),
                        defaultTextButton(
                            text: 'تسجيل الدخول!', onPressed: () {
                          navigateTo(context, LoginScreen());
                        })
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'اسم المستخدم',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    defaultFormField(
                      controller: nameController,
                      validator: (String val) {
                        if (val.isEmpty || val.length < 4) {
                          return 'أسم المستحدم يجيب الا يقل عن 4 حروف';
                        }
                      },
                      type: TextInputType.name,
                      pIcon: Icon(Icons.person_outline),
                      label: 'أدخل اسم المستحدم',
                    ),
                    Text(
                      'البريد الالكتروني',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    defaultFormField(
                      controller: emailController,
                      validator: (String val) {
                        if (val.isEmpty || val.contains('@')) {
                          return 'من فضلك أدخل البريد الالكتروني صحيح';
                        }
                      },
                      type: TextInputType.phone,
                      pIcon: Icon(Icons.phone_iphone),
                      label: 'أدخل البريد الالكتروني',
                    ),
                    Text(
                      'رقم الجوال',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    defaultFormField(
                      controller: phoneController,
                      validator: (String val) {
                        if (val.isEmpty || val.length != 11) {
                          return 'من فضلك أدخل رقم الجوال الصحيح';
                        }
                      },
                      type: TextInputType.phone,
                      pIcon: Icon(Icons.phone_iphone),
                      label: 'أدخل رقم الهاتف المحمول',
                    ),
                    /* InkWell(
                      onTap: () {
                        // setState(() => _value = !_value;
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                        height: 30,
                        width: 30,
                        child: _value
                            ? Icon(
                                Icons.check,
                                size: 25.0,
                                color: Colors.white,
                              )
                            : Icon(
                                Icons.check_box_outline_blank,
                                size: 30.0,
                                color: Colors.blue,
                              ),
                      ),
                    ),*/
                    Row(
                      children: [
                        // Container(
                        //   decoration: BoxDecoration(
                        //     shape: BoxShape.circle,
                        //     color: Colors.blue,
                        //   ),
                        //   height: 25,
                        //   width: 25,
                        //   child:
                        Checkbox(
                          value: remember,
                          onChanged: (val) {},
                          checkColor: Colors.white,
                          activeColor: defaultColor,
                        ),
                        // ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'أواافق على الشروط وسياسة الخصوصية',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    defaultButton(
                      text: 'التالي',
                      onPressed: () {
                        if (formKey.currentState.validate()) {
                        } else {}
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
