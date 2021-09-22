import 'package:elbadr_app/layout/cubit/cubit.dart';
import 'package:elbadr_app/layout/cubit/states.dart';
import 'package:elbadr_app/models/Companies_model.dart';
import 'package:elbadr_app/modules/AboutUs_Screen.dart';
import 'package:elbadr_app/modules/Contact_us.dart';
import 'package:elbadr_app/modules/Search_Screen/Search_Screen.dart';
import 'package:elbadr_app/modules/maintenance_screen.dart';
import 'package:elbadr_app/shared/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Drawer(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top:16.0),
              child: Container(
                height: size.height*0.4,
                child: Image.asset('assets/images/Elbadr.png'),
              ),
            ),
            InkWell(
              onTap: (){navigateTo(context, AboutUsScreen());},
              child: drawListTile(

                  title: Text(
                'About us',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.blue),
              )),
            ),
            drawDivider(),
            InkWell(
              onTap: (){navigateTo(context, contactUs());},
              child: drawListTile(
                  title: Text(
                'Contact us',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.blue),
              )),
            ),
            drawDivider(),
            InkWell(
              onTap: (){navigateTo(context, MaintenanceScreen());},
              child: drawListTile(
                  title: Text(
                'Maintenance',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.blue),
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                      icon: FaIcon(
                        FontAwesomeIcons.facebook,
                        color: Colors.blue[500],
                        size: 45,
                      ),
                      onPressed: () {
                        AppCubit.get(context).launchURL('http://elbadr.co/');
                       print("Pressed");
                      }),
                  IconButton(
                      // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                      icon: FaIcon(

                        FontAwesomeIcons.instagram,
                        color: Colors.redAccent,
                        size: 45,
                      ),
                      onPressed: () {
                        print("Pressed");
                        AppCubit.get(context).launchURL('https://www.instagram.com/elbadregypt/');
                      }),
                  IconButton(
                      // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                      icon: FaIcon(
                        FontAwesomeIcons.whatsapp,
                        color: Colors.teal,
                        size: 45,
                      ),
                      onPressed: () {
                        AppCubit.get(context).launchURL('tel:${AppCubit.get(context).phone}');
                        print("Pressed");
                      }),
                ],
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:15.0),
            child: IconButton(
                onPressed: () {
                  navigateTo(context, SearchScreen());
                },
                icon: Icon(FontAwesomeIcons.search)),
          )
        ],
       // leading: Image.asset('assets/images/Elbadr.png'),
        title: Text(
          'El Badr',
          style: TextStyle(
              color: Colors.red, fontSize: 25, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),
        ),
        centerTitle: true,
      ),
      body: BlocConsumer<AppCubit,AppStates>(
        builder: (context,states){
          return Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width*1,
                height: size.height * 0.1,
                child: ListView.builder(
                  itemBuilder: (ctx, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: (){
                          AppCubit.get(context).changeBottom(index);
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(child: Image.asset(AppCubit.get(context).Companies[index].imagepath)),
                            Text(
                              AppCubit.get(context).Companies[index].name,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: AppCubit.get(context).Companies.length,
                  scrollDirection: Axis.horizontal,
                ),

              ),
              AppCubit.get(context).bottomScreens[AppCubit.get(context).currentIndex],

            ],
          );
        },
        listener: (context,states){},
      ),
    );
  }
}



