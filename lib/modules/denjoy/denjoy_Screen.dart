import 'package:elbadr_app/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/cubit.dart';
import 'cubit/states.dart';
class DenjoyScreen extends StatelessWidget {
  const DenjoyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => denjoyCubit(),
      child: BlocConsumer<denjoyCubit, denjoyStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return buildListProduct(denjoyCubit.get(context).denjoyProducts[index],context);
                },
                separatorBuilder: (context, int) {
                  return myDivider();
                },
                itemCount: denjoyCubit.get(context).denjoyProducts.length),
          );
        },
      ),
    );
  }
}
