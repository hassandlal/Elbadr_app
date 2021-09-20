import 'package:bloc/bloc.dart';
import 'package:elbadr_app/layout/cubit/states.dart';
import 'package:elbadr_app/modules/AMANNGIRRBACH_Screen.dart';
import 'package:elbadr_app/modules/Bausch_Screen.dart';
import 'package:elbadr_app/modules/Bemlase_Screen.dart';
import 'package:elbadr_app/modules/Dte_Screen.dart';
import 'package:elbadr_app/modules/HAHNENKRATT_Screen.dart';
import 'package:elbadr_app/modules/TehnoDent_Screen.dart';
import 'package:elbadr_app/modules/Zafdent_Screen/Zafdent_Screen.dart';
import 'package:elbadr_app/modules/Zumax_Screen.dart';
import 'package:elbadr_app/modules/denjoy_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppinitialState());

  static AppCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  List<Widget> bottomScreens = [
    ZafdentScreen(),
    DenjoyScreen(),
    DteScreen(),
    BemlaseScreen(),
    ZumaxScreen(),
    HahnenkrattScreen(),
    TehnoDentScreen(),
    BaushScreen(),
    AmanngirrbachScreen(),
  ];

  void changeBottom(int index) {
    currentIndex = index;
    emit(AppChangeBottomNavState());
  }
}
