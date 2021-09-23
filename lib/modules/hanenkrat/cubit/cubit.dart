import 'package:bloc/bloc.dart';
import 'package:elbadr_app/models/Product_model.dart';
import 'package:elbadr_app/modules/hanenkrat/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HanenkratCubit extends Cubit<HanenkratStates> {
  HanenkratCubit() : super(HanenkratInitialState());

  static HanenkratCubit get(context) => BlocProvider.of(context);
  List<ProductModel> hanenkratProducts = [
    ProductModel('economy', 'assets/images/henenkrat/economy.jpg',
        'economy'),
    ProductModel('ExaPin-Drillparapulpal-Pin', 'assets/images/henenkrat/ExaPin-Drillparapulpal-Pin.jpg',
        'ExaPin-Drillparapulpal-Pin'),
    ProductModel(
        'fiber2-2', 'assets/images/henenkrat/fiber2-2.jpg', 'fiber2-2'),
    ProductModel(
        'handle', 'assets/images/henenkrat/handle.jpg', 'handle'),
    ProductModel(
        'matrix', 'assets/images/henenkrat/matrix.jpg', 'matrix'),
    ProductModel('mega', 'assets/images/henenkrat/mega.jpg', 'mega'),
    ProductModel('provisa', 'assets/images/henenkrat/provisa.jpg', 'provisa'),
    ProductModel('pullover', 'assets/images/henenkrat/pullover.jpg', 'pullover'),
    ProductModel('relax-1', 'assets/images/henenkrat/relax-1.jpg', 'relax-1'),
    ProductModel('sharp', 'assets/images/henenkrat/sharp.jpg', 'sharp'),
    ProductModel('titanium-s', 'assets/images/henenkrat/titanium-s.jpg', 'titanium-s'),
    ProductModel('ultra', 'assets/images/henenkrat/ultra.jpg', 'ultra'),
  ];
}
