import 'package:bloc/bloc.dart';
import 'package:elbadr_app/models/Product_model.dart';
import 'package:elbadr_app/modules/denjoy/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DenjoyCubit extends Cubit<DenjoyStates> {
  DenjoyCubit() : super(DenjoyInitialState());

  static DenjoyCubit get(context) => BlocProvider.of(context);
  List<ProductModel> denjoyProducts = [
    ProductModel('Apex Locator IFinder', 'assets/images/denjoy/Apex-Locator-ifinder.jpg', 'A New Unit'),
    ProductModel('IMate 3 Cordless Endo Motor', 'assets/images/denjoy/iMate-cordless-endo-motor.jpg', 'A Unit'),
    ProductModel('Obturation System iFill1', 'assets/images/denjoy/Obturation-System-iFill1.jpg', 'B New Unit'),
    ProductModel('Positionable Hand plugger', 'assets/images/denjoy/Positionable-Hand-plugger.jpg', 'Positionable-Hand-plugger'),
    ProductModel('Pulp-Tester-DY310', 'assets/images/denjoy/Pulp-Tester-DY310.jpg', 'Pulp-Tester-DY310'),

  ];
}
