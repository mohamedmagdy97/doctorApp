import 'package:doctor_app/layouts/onboarding.dart';
import 'package:doctor_app/modules/home/screens/cubit/cubit.dart';
import 'package:doctor_app/shared/bloc_observer.dart';
import 'package:doctor_app/shared/styles/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer = MyBlocObserver();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Doctor App',
      theme: lightTheme,
      themeMode: ThemeMode.light,
      home: BlocProvider<ConsultCubit>(create: (context)=> ConsultCubit(),
        child: OnBoardingScreen(),),
    );
  }
}