import 'package:elbadr_app/modules/hanenkrat/cubit/cubit.dart';
import 'package:elbadr_app/modules/hanenkrat/cubit/states.dart';
import 'package:elbadr_app/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class HahnenkrattScreen extends StatelessWidget {
  const HahnenkrattScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => HanenkratCubit(),
      child: BlocConsumer<HanenkratCubit, HanenkratStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return buildListProduct(HanenkratCubit.get(context).HanenkratProducts[index],context);
                },
                separatorBuilder: (context, int) {
                  return myDivider();
                },
                itemCount: HanenkratCubit.get(context).HanenkratProducts.length),
          );
        },
      ),
    );
  }
}
