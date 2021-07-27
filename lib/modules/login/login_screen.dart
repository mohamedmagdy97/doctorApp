import 'package:doctor_app/modules/signup/create_acount_screen.dart';
import 'package:doctor_app/modules/verifi.dart';
import 'package:doctor_app/shared/components/components.dart';
import 'package:doctor_app/shared/styles/colors.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  var phoneController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    bool remember = true;
    bool _value = false;
    return Scaffold(
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'مرحباً بك',
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .copyWith(color: Colors.black),
                    ),
                    Row(
                      children: [
                        Text(
                          'لا يوجد لديك حساب؟',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(color: Colors.grey),
                        ),
                        defaultTextButton(
                            text: 'أنشئ حساب!',
                            onPressed: () {
                              navigateTo(context, CreateAccountScreen());
                            })
                      ],
                    ),
                    SizedBox(
                      height: 30,
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
                            'تذكرني',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    defaultButton(
                      text: 'تسجيل الدخول',
                      onPressed: () {
                        if (formKey.currentState.validate()) {
                          navigateTo(context, Verification());
                        } else {}
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'هل نسيت كلمة المرور؟',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        defaultTextButton(text: 'إستعادة', onPressed: () {})
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(children: <Widget>[
                      Expanded(
                        child: new Container(
                            margin:
                                const EdgeInsets.only(left: 10.0, right: 20.0),
                            child: Divider(
                              color: Colors.black,
                              height: 36,
                            )),
                      ),
                      Text("تسجبل الدخول بإستخدام"),
                      Expanded(
                        child: new Container(
                            margin:
                                const EdgeInsets.only(left: 20.0, right: 10.0),
                            child: Divider(
                              color: Colors.black,
                              height: 36,
                            )),
                      ),
                    ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        defaultCircleButton(
                            onPressed: () {},
                            text: 'Google',
                            image: 'assets/icons/google.png'),
                        defaultCircleButton(
                            onPressed: () {},
                            text: 'Facebook',
                            image: 'assets/icons/fb.png'),
                      ],
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
