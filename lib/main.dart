import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fooddeliveryapp/cubits/app_cubit/cubit.dart';
import 'package:fooddeliveryapp/screens/food_description_screen.dart';

import 'cubits/bloc_observer.dart';
import 'layout/app_layout_screen.dart';

void main() {
  BlocOverrides.runZoned(
        () {
      runApp(MyApp()) ;
    },
    blocObserver: MyBlocObserver(),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>AppCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: AppLayoutScreen(),
      ),
    );
  }
}

