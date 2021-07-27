import 'dart:async';
import 'package:doctor_app/layouts/home_layout.dart';
import 'package:doctor_app/shared/components/components.dart';
import 'package:doctor_app/shared/styles/colors.dart';
import 'package:flutter/material.dart';

class Verification extends StatefulWidget {
  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification>
    with SingleTickerProviderStateMixin {
  var codeController1 = TextEditingController();

  var codeController2 = TextEditingController();

  var codeController3 = TextEditingController();

  var codeController4 = TextEditingController();

  bool _hideResendButton = true;
  Timer timer;
  int totalTimeInSeconds;
  final int time = 60;
  bool showBtn = false;
  AnimationController _controller;

  var formKey = GlobalKey<FormState>();

  Future<Null> _startCountdown() async {
    setState(() {
      _hideResendButton = true;
      totalTimeInSeconds = time;
    });
    _controller.reverse(
        from: _controller.value == 0.0 ? 1.0 : _controller.value);
  }

  @override
  void initState() {
    totalTimeInSeconds = time;
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: time))
          ..addStatusListener((status) {
            if (status == AnimationStatus.dismissed) {
              setState(() {
                _hideResendButton = !_hideResendButton;
              });
            }
          });
    _controller.reverse(
        from: _controller.value == 0.0 ? 1.0 : _controller.value);
    _startCountdown();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  get _getTimerText {
    return Container(
      height: 32,
      child: new Offstage(
        offstage: !_hideResendButton,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Sec',
              style: TextStyle(color: defaultColor),
            ),
            SizedBox(
              width: 5.0,
            ),
            OtpTimer(_controller, 15.0, Colors.black),
            SizedBox(
              width: 5.0,
            ),
            Text(
              'Resend in',
              style: TextStyle(color: defaultColor),
            ),
          ],
        ),
      ),
    );
  }

  get _getResendButton {
    return Center(
      child: new InkWell(
        child: new Container(
          height: 32,
          width: 120,
          decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(32)),
          alignment: Alignment.center,
          child: new Text(
            "Resend OTP",
            style:
                new TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        onTap: () {
          // Resend you OTP via API or anything
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final FocusScopeNode _node = FocusScopeNode();

    var num1 = TextEditingController();
    var num2 = TextEditingController();
    var num3 = TextEditingController();
    var num4 = TextEditingController();

    final int time = 30;
    int unReadNotificationsCount = 0;
    bool _hideResendButton = true;
    AnimationController _controller;

    return Scaffold(
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ادخل رمز التحقق',
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(color: Colors.black),
                  ),
                  Text(
                    ' لقد ارسلنا لك رمزاَ نصياً للتحقق من هاتفك',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Directionality(
                    textDirection: TextDirection.ltr,
                    child: Form(
                      key: formKey,
                      child: FocusScope(
                        node: _node,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              child: TextFormField(
                                controller: num1,
                                validator: (val) {
                                  if (val.isEmpty) {
                                    return '';
                                  }
                                },
                                onChanged: (val) {
                                  if (val.length == 1) {
                                    _node.nextFocus();
                                  }
                                },
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.fromLTRB(20.0, 8, 20.0, 8),
                                  hintText: '-',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              child: TextFormField(
                                controller: num2,
                                validator: (val) {
                                  if (val.isEmpty) {
                                    return '';
                                  }
                                },
                                onChanged: (val) {
                                  if (val.length == 1) {
                                    _node.nextFocus();
                                  }
                                },
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.fromLTRB(20.0, 8, 20.0, 8),
                                  hintText: '-',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                controller: num3,
                                validator: (val) {
                                  if (val.isEmpty) {
                                    return '';
                                  }
                                },
                                onChanged: (val) {
                                  if (val.length == 1) {
                                    _node.nextFocus();
                                  }
                                },
                                decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.fromLTRB(20.0, 8, 20.0, 8),
                                  hintText: '-',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              child: TextFormField(
                                textInputAction: TextInputAction.done,
                                controller: num4,
                                validator: (val) {
                                  if (val.isEmpty) {
                                    return '';
                                  }
                                },
                                onChanged: (val) {
                                  if (val.length == 1) {
                                    // FocusScope.of(context).unfocus();
                                  }
                                },
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.fromLTRB(20.0, 8, 20.0, 8),
                                  hintText: '-',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  _hideResendButton ? _getTimerText : _getResendButton,
                  SizedBox(
                    height: 20,
                  ),
                  defaultButton(
                    text: 'تأكيد',
                    onPressed: () {
                      if (formKey.currentState.validate()) {
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  content: Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Image(
                                          image: AssetImage(
                                              'assets/icons/verifi_done.png'),
                                          height: 100,
                                          width: 100,
                                        ),
                                        Text(
                                          'رائعه',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: defaultColor,
                                          ),
                                        ),
                                        Text(
                                          'تم إنشاؤه بنجاح',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          ' الان يمكنك استخدامه بشكل طبيعي',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        defaultButton(
                                          text: 'تسجيل الدخول الان',
                                          onPressed: () {
                                            // if (formKey.currentState.validate()) {
                                              navigateTo(context, HomeLayout());
                                            // } else {}
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ));
                      } else {
                        print('Error Lol !');
                      }
                    },
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

class OtpTimer extends StatelessWidget {
  final AnimationController controller;
  double fontSize;
  Color timeColor = Colors.black;

  OtpTimer(this.controller, this.fontSize, this.timeColor);

  String get timerString {
    Duration duration = controller.duration * controller.value;
    if (duration.inHours > 0) {
      return '${duration.inHours}:${duration.inMinutes % 60}:${(duration.inSeconds % 60).toString().padLeft(2, '0')}';
    }
    return '${duration.inMinutes % 60}:${(duration.inSeconds % 60).toString().padLeft(2, '0')}';
  }

  Duration get duration {
    Duration duration = controller.duration;
    return duration;
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: controller,
        builder: (BuildContext context, Widget child) {
          return new Text(
            timerString,
            style: new TextStyle(
                fontSize: fontSize,
                color: timeColor,
                fontWeight: FontWeight.w600),
          );
        });
  }
}
