import 'package:elbadr_app/models/Product_model.dart';
import 'package:flutter/material.dart';

class ItemDetailsScreen extends StatelessWidget {
  const ItemDetailsScreen({required this.model});

  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height*0.4,
                width: MediaQuery.of(context).size.width*0.9,
                child: Image(image: AssetImage(model.imageUrl),fit: BoxFit.cover,),
              ),
            ),
            Center(child: Text(model.name,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Production Description :',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(model.description,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
            )
          ],
        ),
      ),
    );
  }
}
