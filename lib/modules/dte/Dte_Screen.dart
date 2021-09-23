import 'package:elbadr_app/modules/dte/cubit/cubit.dart';
import 'package:elbadr_app/modules/dte/cubit/states.dart';
import 'package:elbadr_app/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class DteScreen extends StatelessWidget {
  const DteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => DteCubit(),
      child: BlocConsumer<DteCubit, DteStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return buildListProduct(DteCubit.get(context).dteProducts[index],context);
                },
                separatorBuilder: (context, int) {
                  return myDivider();
                },
                itemCount: DteCubit.get(context).dteProducts.length),
          );
        },
      ),
    );
  }
}
