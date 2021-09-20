import 'package:elbadr_app/modules/Zafdent_Screen/cubit/cubit.dart';
import 'package:elbadr_app/modules/Zafdent_Screen/cubit/states.dart';
import 'package:elbadr_app/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../test.dart';

class ZafdentScreen extends StatelessWidget {
  const ZafdentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => zafDentCubit(),
      child: BlocConsumer<zafDentCubit, zafDentStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return buildListProduct(zafDentCubit.get(context).zafDentProducts[index],context);
                },
                separatorBuilder: (context, int) {
                  return myDivider();
                },
                itemCount: zafDentCubit.get(context).zafDentProducts.length),
          );
        },
      ),
    );
  }
}
