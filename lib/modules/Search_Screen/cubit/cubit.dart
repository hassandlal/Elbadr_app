import 'package:bloc/bloc.dart';
import 'package:elbadr_app/modules/Search_Screen/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class SearchCubit extends Cubit<SearchStates> {
  SearchCubit() : super(SearchInitialState());

  static SearchCubit get(context) => BlocProvider.of(context);



  void search(String text) {
    emit(SearchLoadingState());
    emit(SearchSuccessState());


  }
}