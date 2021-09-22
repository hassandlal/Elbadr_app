import 'package:flutter/material.dart';

class contactUs extends StatelessWidget {
  const contactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueAccent,
        child: Padding(
          padding: const EdgeInsets.only(top:20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _drawRowItems(
                title: 'Address :',
                subTitle:
                    'Seuz Qanal St. front of Elkheir hospital Elymama tower 1st floor ,Mansoura, Egypt',
                icon: Icons.location_on_outlined,
              ),
              _drawRowItems(
                title: 'Phone :',
                subTitle: ' +2 050 2507574 / 0120 6666 002',
                icon: Icons.phone,
              ),
              _drawRowItems(
                title: 'Email :',
                subTitle: ' info@elbadr.co',
                icon: Icons.email,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Don’t hesitate to send us a message if you have any question about our products and services.',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('We will be happy to receive your messages and calls on our contacts',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _drawRowItems extends StatelessWidget {
  final String title;
  final String subTitle;
  final IconData icon;

  const _drawRowItems(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.15,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(icon),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      title,
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Text(
                subTitle,
                style: TextStyle(
                  color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                   ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
