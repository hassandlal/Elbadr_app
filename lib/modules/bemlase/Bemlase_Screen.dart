import 'package:elbadr_app/modules/bemlase/cubit/cubit.dart';
import 'package:elbadr_app/modules/bemlase/cubit/states.dart';
import 'package:elbadr_app/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class BemlaseScreen extends StatelessWidget {
  const BemlaseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => BemlaseCubit(),
      child: BlocConsumer<BemlaseCubit, BemlaseStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return buildListProduct(BemlaseCubit.get(context).bemlaseProducts[index],context);
                },
                separatorBuilder: (context, int) {
                  return myDivider();
                },
                itemCount: BemlaseCubit.get(context).bemlaseProducts.length),
          );
        },
      ),
    );
  }
}
