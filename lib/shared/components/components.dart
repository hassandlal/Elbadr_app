import 'package:elbadr_app/models/Product_model.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;
Widget drawListTile(
    {Widget? leadingicon, Widget? title, Widget? subtitle, Widget? trailingicon}){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: ListTile(
      leading: leadingicon,
      title: title,
      trailing: trailingicon,
      subtitle: subtitle,
    ),
  );
}
Widget drawDivider(){
  return Container(
    width: double.infinity,
    height: 1,
    color: Colors.grey,
  );
}
void navigateTo(context, widget) => Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => widget,
  ),
);

void navigateAndFinish(
    context,
    widget,
    ) =>
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
          (route) {
        return false;
      },
    );

void showToast({
  @required String? text,
  @required ToastStates? state,
}) =>
    Fluttertoast.showToast(
      msg: text!,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 5,
      backgroundColor: chooseToastColor(state!),
      textColor: Colors.white,
      fontSize: 16.0,
    );
enum ToastStates { SUCCESS, ERROR, WARNING }
Color chooseToastColor(ToastStates state) {
  Color color;

  switch (state) {
    case ToastStates.SUCCESS:
      color = Colors.green;
      break;
    case ToastStates.ERROR:
      color = Colors.red;
      break;
    case ToastStates.WARNING:
      color = Colors.amber;
      break;
  }

  return color;
}

Widget myDivider() => Padding(
  padding: const EdgeInsetsDirectional.only(
    start: 20.0,
  ),
  child: Container(
    width: double.infinity,
    height: 1.0,
    color: Colors.grey[300],
  ),
);
Widget buildListProduct(
    ProductModel model,
    context) =>
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Image(
            image: AssetImage(model.imageUrl),
            width:  MediaQuery.of(context).size.width*0.94,
            height:  kIsWeb?MediaQuery.of(context).size.height*0.7:MediaQuery.of(context).size.height*0.6,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text(
                model.name,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  height: 1.3,
                ),
              ),
            ),
          ),
        ],
      ),
    );