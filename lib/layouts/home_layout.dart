
import 'package:doctor_app/modules/home/screens/consultion/consultion_screen.dart';
import 'package:doctor_app/modules/home/screens/profile/profile_screen.dart';
import 'package:doctor_app/modules/home/screens/reports/reportsScreen.dart';
import 'package:flutter/material.dart';
import 'package:doctor_app/modules/home/screens/home_screen.dart';

class HomeLayout extends StatefulWidget {
  @override
  _HomeLayoutState createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;

  List<Widget> bottomScreens = [
    HomeScreen(),
    ConsultationScreen(),
    ReportsScreen(),
    ProfileScreen(),
  ];

  void changeBottomNavBar(int index) {
    currentIndex = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: bottomScreens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'الرئيسية',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'إستشارة',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books_outlined),
            label: 'التقرير',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'حسابي',
          ),
        ],
      ),
    );
  }
}
