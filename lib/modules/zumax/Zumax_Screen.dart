import 'package:elbadr_app/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/cubit.dart';
import 'cubit/states.dart';
class ZumaxScreen extends StatelessWidget {
  const ZumaxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => zumaxCubit(),
      child: BlocConsumer<zumaxCubit, zumaxStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return buildListProduct(zumaxCubit.get(context).zumaxProducts[index],context);
                },
                separatorBuilder: (context, int) {
                  return myDivider();
                },
                itemCount: zumaxCubit.get(context).zumaxProducts.length),
          );
        },
      ),
    );
  }
}
