import 'package:doctor_app/modules/home/cubit/states.dart';
import 'package:doctor_app/modules/home/screens/consultion/consultion_screen.dart';
import 'package:doctor_app/modules/home/screens/home_screen.dart';
import 'package:doctor_app/modules/home/screens/profile/profile_screen.dart';
import 'package:doctor_app/modules/home/screens/reports/reportsScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(InitialHomeState());

  static HomeCubit get(context) => BlocProvider.of(context);

  int currentIndex = 1;

  List<Widget> bottomScreens = [
    HomeScreen(),
    ConsultationScreen(),
    ReportsScreen(),
    ProfileScreen(),
  ];

  void changeBottomNavBar(int index) {
    currentIndex = index;

    emit(ChangeBottomNavHomeState());
  }


}
