import 'package:elbadr_app/modules/bausch/cubit/cubit.dart';
import 'package:elbadr_app/modules/bausch/cubit/states.dart';
import 'package:elbadr_app/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class BaushScreen extends StatelessWidget {
  const BaushScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => BauschCubit(),
      child: BlocConsumer<BauschCubit, BauschStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return buildListProduct(BauschCubit.get(context).bauschProducts[index],context);
                },
                separatorBuilder: (context, int) {
                  return myDivider();
                },
                itemCount: BauschCubit.get(context).bauschProducts.length),
          );
        },
      ),
    );
  }
}
