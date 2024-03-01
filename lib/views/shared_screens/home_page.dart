import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:smart_home_application/views/shared/shared_theme/shared_color.dart';
import 'package:smart_home_application/views/shared/shared_theme/shared_fonts.dart';


class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  List<Map<String,dynamic>> weathercond = [ 
    {
      'name' :'Energy',
      'Icons' : Icons.energy_savings_leaf,
      'text' :'32.2kWh'
    },
    {
      'name' :'Humidity',
      'Icons' : Icons.cloud,
      'text' :'30%'
    },
    {
      'name' :'Weather quality',
      'Icons' : Icons.thermostat,
      "text" : 'Exellent'
    },
  ];
  List<Map<String,dynamic>> categories = [
      {
          'name':'All devices',
      },
      {
          'name':'BedRoom',
      },
      {
          'name':'Kitchen',
      },
      {
          'name':'LivingRoom',
      },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:sharedcolors.backgroundColor,
       appBar:AppBar(
        backgroundColor:sharedcolors.backgroundColor,
        elevation: 10,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
              Icon(Icons.sunny,color: sharedcolors.whitecolor),
              Text('Good Evening,',style: sharedfonts.subwhite)
              ],
            ),
            Text(' MR.Mahmoud Mohamed',style: sharedfonts.primarywhitecolor)
          ],
        ),
        actions: [
          Icon(Icons.notifications,color: sharedcolors.whitecolor,size: 25)
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [ 
          weathercondsection(),
          listhorizontal(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: sharedcolors.bluecolor
                ),
                child: 
                Container(
                  height:50 ,
                  width: 100,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                     Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(Icons.wifi_1_bar_rounded,color: sharedcolors.whitecolor,size: 25)
                          ],
                        ),
                    Icon(Icons.lightbulb_circle_rounded,color: sharedcolors.whitecolor,size: 35),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Smart lighting ',style: sharedfonts.primarywhitecolor),
                            Text('Living Room',style: sharedfonts.subwhite)
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text('-------------------',style: sharedfonts.primarywhitecolor)
                      ],
                    )
                  ],
                ),
                )
              )
            ],
          )
        ],
      ),
    );
  }
    
    
    
    
    Container weathercondsection() {
    return Container(
             color: sharedcolors.bluecolor,
             margin: EdgeInsets.all(3),
             padding: EdgeInsets.all(7),
              height: 200,
              width: 300,
              child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('26°C',style: sharedfonts.primarywhitecolor),
                  Text('3 devices turned on ',style: sharedfonts.subwhite),
                  Text('---------------------------------------------',style: sharedfonts.primarywhitecolor),
                  Container(
                    width:450,
                    height: 100,
                    child:  ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount:weathercond.length,
                    itemBuilder:(context, i) {
                      return Container(
                        height: 100,
                        width: 150,
                  child: 
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                     Icon(weathercond [i]['Icons'],color: sharedcolors.whitecolor,size:20),
                     Text(weathercond [i]['name'],style: sharedfonts.subwhite),
                     Text(weathercond [i]['text'],style: sharedfonts.subwhite)
                     ],
                    )
                 );
                },
               ),
              )
            ],
          ),
        ); 
        
  }
        Container listhorizontal() { 
          return Container(
            child: 
             Row(
            children: [
              Container(
                margin:EdgeInsets.all(10),
                height: 35,
                width: 350,
                child:ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, i) {
                    return Container(
                      padding: EdgeInsets.all(3),
                      width: 130,
                      height: 50,
                      child: Text(categories [i]['name'],style: sharedfonts.subwhite,),
                    );
                  },
                ),
              )
            ],
           )
          );
        }
  
}
