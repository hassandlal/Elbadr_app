import 'package:bloc/bloc.dart';
import 'package:elbadr_app/models/Product_model.dart';
import 'package:elbadr_app/modules/Zafdent_Screen/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ZafDentCubit extends Cubit<ZafDentStates> {
  ZafDentCubit() : super(ZafDentInitialState());

  static ZafDentCubit get(context) => BlocProvider.of(context);
  List<ProductModel> zafDentProducts = [
    ProductModel('A New Unit', 'assets/images/zafdent/anewunit.jpg', 'A New Unit'),
    ProductModel('A Unit', 'assets/images/zafdent/aunit.jpg', 'A Unit'),
    ProductModel('B New Unit', 'assets/images/zafdent/bnewunit.jpg', 'B New Unit'),
    ProductModel('C Unit', 'assets/images/zafdent/cunit.jpg', 'C Unit'),
    ProductModel('D Unit', 'assets/images/zafdent/dunit.jpg', 'D Unit'),
    ProductModel('F New Unit', 'assets/images/zafdent/fnewunit.jpg', 'F New Unit'),
    ProductModel('F Unit', 'assets/images/zafdent/funit.jpg', 'F Unit'),
    ProductModel('Q 5 Unit', 'assets/images/zafdent/q5unit.jpg', 'Q 5 Unit'),
    ProductModel('Q 1 Unit', 'assets/images/zafdent/qoneunit.jpg', 'Q 1 Unit'),
    ProductModel('Q 2 Unit', 'assets/images/zafdent/qtwounit.jpg', 'Q 2 Unit'),
  ];
}
