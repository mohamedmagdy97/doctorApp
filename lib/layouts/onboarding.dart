import 'package:doctor_app/models/onboarding_model.dart';
import 'package:doctor_app/modules/login/login_screen.dart';
import 'package:doctor_app/shared/components/components.dart';
import 'package:doctor_app/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var boardingController = PageController();

  bool isLast = false;

  List<BoardingModel> boardingItems = [
    BoardingModel(
        title: 'أستشر طبيبك',
        subTitle: 'تواصل معنا للحصول على استشارة طبية لمتابعة مرض السكر'),
    BoardingModel(
        title: 'أستشر طبيبك',
        subTitle: 'تواصل معنا للحصول على استشارة طبية لمتابعة مرض السكر'),
    BoardingModel(
        title: 'أستشر طبيبك',
        subTitle: 'تواصل معنا للحصول على استشارة طبية لمتابعة مرض السكر'),
  ];

  void submit() {
    navigateAndFinish(context, LoginScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            CircleAvatar(
              radius: 40,
              backgroundColor: defaultColor.withOpacity(0.1),
              child: defaultTextButton(
                text: 'تخطي',
                onPressed: () => submit(),
              ),
            ),
          ],
        ),
        body: Stack(
          children: [
            Image(
              image: AssetImage('assets/icons/bg.png'),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            ),
            Image.asset('assets/icons/doctor.png'),
            Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    onPageChanged: (pageCount) {
                      if (pageCount == boardingItems.length - 1) {
                        submit();
                        setState(() => isLast = true);
                      } else {
                        setState(() => isLast = false);
                      }
                    },
                    itemCount: boardingItems.length,
                    physics: BouncingScrollPhysics(),
                    controller: boardingController,
                    itemBuilder: (context, index) =>
                        buildBoardingItem(boardingItems[index]),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: SmoothPageIndicator(
                    effect: ExpandingDotsEffect(
                      expansionFactor: 1.1,
                      dotHeight: 8,
                      dotWidth: 20,
                      spacing: 4,
                      dotColor: Colors.white.withOpacity(0.4),
                      activeDotColor: secondColor,
                    ),
                    controller: boardingController,
                    count: boardingItems.length,
                  ),
                ),
              ],
            ),
          ],
        ));
  }

  Widget buildBoardingItem(BoardingModel model) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              model.title,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              model.subTitle,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
