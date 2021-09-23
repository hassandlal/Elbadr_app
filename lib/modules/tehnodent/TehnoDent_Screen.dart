import 'package:elbadr_app/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/cubit.dart';
import 'cubit/states.dart';
class TehnoDentScreen extends StatelessWidget {
  const TehnoDentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => TehnodentCubit(),
      child: BlocConsumer<TehnodentCubit, TehnodentStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return buildListProduct(TehnodentCubit.get(context).tehnoDentProducts[index],context);
                },
                separatorBuilder: (context, int) {
                  return myDivider();
                },
                itemCount: TehnodentCubit.get(context).tehnoDentProducts.length),
          );
        },
      ),
    );
  }
}
