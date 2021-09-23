import 'package:bloc/bloc.dart';
import 'package:elbadr_app/layout/cubit/states.dart';
import 'package:elbadr_app/models/Companies_model.dart';
import 'package:elbadr_app/modules/Zafdent_Screen/Zafdent_Screen.dart';
import 'package:elbadr_app/modules/amanngirrbach/AMANNGIRRBACH_Screen.dart';
import 'package:elbadr_app/modules/bausch/Bausch_Screen.dart';
import 'package:elbadr_app/modules/bemlase/Bemlase_Screen.dart';
import 'package:elbadr_app/modules/dte/Dte_Screen.dart';
import 'package:elbadr_app/modules/hanenkrat/HAHNENKRATT_Screen.dart';
import 'package:elbadr_app/modules/tehnodent/TehnoDent_Screen.dart';
import 'package:elbadr_app/modules/zumax/Zumax_Screen.dart';
import 'package:elbadr_app/modules/denjoy/denjoy_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppinitialState());

  static AppCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  List<Company> companies = [
    Company('Zafdent','assets/images/zafdent.jpg'),
    Company('denjoy', 'assets/images/denjoy.jpg'),
    Company('DTE (WOODPECKER)', 'assets/images/dte.png'),
    Company('BemLase', 'assets/images/bemlase.jpg'),
    Company('Zumax', 'assets/images/zumax.png'),
    Company('HAHNENKRATT', 'assets/images/HAHNENKRATT.jpg'),
    Company('TehnoDent', 'assets/images/tehnodent.png'),
    Company('Bausch', 'assets/images/bausch.png'),
    Company('AMANNGIRRBACH', 'assets/images/amangirbach.jpg'),
  ];
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
  void launchURL(String url) async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch ';
  String phone = '01206666002';
}
