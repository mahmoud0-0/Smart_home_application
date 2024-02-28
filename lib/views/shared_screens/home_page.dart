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
          // categorysection()
          Text('data',style: sharedfonts.primarywhitecolor,)
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
            
  // }
      // Container categorysection(){
      //     return Container(
      //       margin: EdgeInsets.all(10),
      //       padding: EdgeInsets.all(10),
      //       height: 150 ,
      //       width: 150 ,
      //       child:
      //       Row(
      //         children: [
      //          ListView.builder(
      //         scrollDirection: Axis.horizontal,
      //         itemCount: categories.length,
      //         itemBuilder:(context, i) {
      //           Text(categories[i]['name'],style: sharedfonts.primarywhitecolor);
      //         },
      //       ),
      //         ],
      //       ),
      //     );
  }
  
}