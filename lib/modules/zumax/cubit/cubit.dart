import 'package:bloc/bloc.dart';
import 'package:elbadr_app/models/Product_model.dart';
import 'package:elbadr_app/modules/zumax/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class zumaxCubit extends Cubit<zumaxStates> {
  zumaxCubit() : super(zumaxInitialState());

  static zumaxCubit get(context) => BlocProvider.of(context);
  List<ProductModel> zumaxProducts = [
    ProductModel('head-light-8200', 'assets/images/zumax/head-light-8200.jpg', 'head-light-8200'),
    ProductModel('head-light-8300', 'assets/images/zumax/head-light-8300.jpg', 'head-light-8300'),
    ProductModel('Ohl-8000-1', 'assets/images/zumax/hl-8000-1.jpg', 'hl-8000-1'),
    ProductModel('microscope9', 'assets/images/zumax/microscope9.jpg', 'microscope9'),
    ProductModel('retrival-kit', 'assets/images/zumax/retrival-kit.jpg', 'retrival-kit'),
    ProductModel('SLF-2', 'assets/images/zumax/SLF-2.jpg', 'SLF-2'),
    ProductModel('SLH-1', 'assets/images/zumax/SLH-1.jpg', 'SLH-1'),
    ProductModel('ttl2', 'assets/images/zumax/ttl2.jpg', 'ttl2'),

  ];
}
