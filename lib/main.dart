import 'package:elbadr_app/layout/Elbadr_layout.dart';
import 'package:elbadr_app/layout/cubit/cubit.dart';
import 'package:elbadr_app/layout/cubit/states.dart';
import 'package:elbadr_app/modules/Search_Screen/cubit/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => AppCubit(),
        ),
        BlocProvider(
          create: (BuildContext context) => SearchCubit(),
        ),
      ],
      child: BlocConsumer<AppCubit,AppStates>(
        listener: (context,states){},
        builder: (context,states){
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',

            theme: ThemeData(

              primarySwatch: Colors.blue,
            ),
            home: MyHomePage(),
          );
        },
      ),
    );
  }
}