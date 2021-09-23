import 'package:elbadr_app/modules/amanngirrbach/cubit/cubit.dart';
import 'package:elbadr_app/modules/amanngirrbach/cubit/states.dart';
import 'package:elbadr_app/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class AmanngirrbachScreen extends StatelessWidget {
  const AmanngirrbachScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AmanngirrbachCubit(),
      child: BlocConsumer<AmanngirrbachCubit, AmanngirrbachStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return buildListProduct(AmanngirrbachCubit.get(context).amanngirrbachProducts[index],context);
                },
                separatorBuilder: (context, int) {
                  return myDivider();
                },
                itemCount: AmanngirrbachCubit.get(context).amanngirrbachProducts.length),
          );
        },
      ),
    );
  }
}
