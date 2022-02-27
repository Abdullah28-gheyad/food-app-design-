import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fooddeliveryapp/cubits/app_cubit/states.dart';

class AppCubit extends Cubit <AppStates>
{
  AppCubit():super (AppInitialState()) ;
  static AppCubit get(context)=>BlocProvider.of(context) ;
  int currentIndex= 0 ;
  void changeIndex(int index)
  {
    currentIndex = index ;
    emit(ChangeBottomNavState()) ;
  }
}