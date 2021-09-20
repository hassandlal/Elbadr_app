import 'package:flutter/material.dart';

class MaintenanceScreen extends StatelessWidget {
  const MaintenanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height * 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Maintenance Department',
                    style: (TextStyle(fontSize: 25, color: Colors.redAccent)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'We have an integrated center supported by all spare parts per devices, also have the maintenance team of skilled engineers covering not only our produvts we can support all other products with any spare parts and covering all areas of Egypt',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Welcome for new maintenance contracts after Guarantee limit finish or any other clinic apparatus not belong Elbadr Co.',
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Guarantee Terms: We are not responsible about maluse or trial repair by Dentist without notify ELBADR team or without contact ELBADR maintenance department.',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Maintenance Center Address:Elquads Elsharif St., taqsium tartir. Qanet elswes St., Behaind eltwargy Restaurant',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Tel : 01000216641, 01022275058, 01000216692',
                    style: TextStyle(fontSize: 20, color: Colors.redAccent),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
