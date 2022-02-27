import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fooddeliveryapp/cubits/app_cubit/cubit.dart';
import 'package:fooddeliveryapp/cubits/app_cubit/states.dart';
import 'package:fooddeliveryapp/utils/colors.dart';

import '../screens/food_main_screen.dart';

class AppLayoutScreen extends StatelessWidget {
  const AppLayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppStates>(
      listener: (context,state){},
      builder: (context,state){
        var cubit = AppCubit.get(context) ;
        return  Scaffold(
          body: FoodMainScreen(),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: AppColors.mainColor,
            unselectedItemColor: Colors.black38,
            showSelectedLabels: false,
            elevation: 0,
            currentIndex: cubit.currentIndex,
            onTap: (int index){
              cubit.changeIndex(index) ;
            },
            selectedLabelStyle: TextStyle(fontSize: 0),
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home),  label: 'Home') ,
              BottomNavigationBarItem(icon: Icon(Icons.category),  label: 'Categories') ,
              BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),  label: 'Cart') ,
              BottomNavigationBarItem(icon: Icon(Icons.person),  label: 'Profile') ,
            ],
          ),
        ) ;
      },
    );
  }
}
