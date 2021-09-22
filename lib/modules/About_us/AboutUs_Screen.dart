import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Padding(
        padding: const EdgeInsets.only( top :30.0),
        child: Column(
          children: [
            Text(
              'Who We Are ?',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'ELBADR',
                      style: TextStyle(color: Colors.redAccent, fontSize: 25,fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    child: Text(
                        ' is a fast growing dental importing company in Egypt offer a full line of dental products.',style: TextStyle(fontSize: 20),),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.circle,size: 10,),
                  ),
                  Expanded(child: Text('Our company has its own maintenance team.',style: TextStyle(fontSize: 20),))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.circle,size: 10,),
                  ),
                  Expanded(
                    child: Text(
                        'We are one of few importers in dental field in Egypt that offer a full set of apparatus for dental clinic, centers construction.',style: TextStyle(fontSize: 20),),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.circle,size: 10,),
                  ),
                  Expanded(
                    child: Text(
                        'Our main products is: Dental units, Air compressor, Amalgamator, Scaler, Light cure endo motor, Apex locator…etc.',style: TextStyle(fontSize: 20),),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                //textDirection: CrossAxisAlignment.baseline,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.circle,size: 10,),
                  ),
                  Expanded(
                    child: Text(
                        'Our advantage: specialty of products, immediate dilvary, prompt after service.',style: TextStyle(fontSize: 20),),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
