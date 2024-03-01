import 'package:flutter/material.dart';
import 'package:smart_home_application/models/user/views/setting.dart';
import 'package:smart_home_application/views/shared/shared_theme/shared_color.dart';
import 'package:smart_home_application/views/shared/shared_theme/shared_fonts.dart';
import 'package:smart_home_application/views/shared_screens/devices.dart';
import 'package:smart_home_application/views/shared_screens/home_page.dart';
import 'package:smart_home_application/views/shared_screens/statistics.dart';



class navigation_screen extends StatefulWidget {
  const navigation_screen({super.key});

  @override
  State<navigation_screen> createState() => _navigation_screenState();
}

class _navigation_screenState extends State<navigation_screen> {
  int selectedScreen =0;
  final List screens=[home_page(),devices(),statistics(),setting()];
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: Scaffold(
        backgroundColor: sharedcolors.bluecolor,
        bottomNavigationBar: BottomNavigationBar(
          items: [
              navitem('Home', Icons.home),
              navitem('Search', Icons.search),
              navitem('Cart', Icons.shopping_cart),
              navitem('Wishlist', Icons.favorite),
              navitem('Profile', Icons.account_circle_rounded)
        ],
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        selectedIconTheme: IconThemeData(color: sharedcolors.bluecolor,size: 25),
        unselectedIconTheme: IconThemeData(color: sharedcolors.blackcolor,size: 23),
        selectedLabelStyle: sharedfonts.primaryblue,
        unselectedLabelStyle: sharedfonts.primaryblue,
        selectedItemColor: sharedcolors.bluecolor,
        unselectedItemColor: sharedcolors.blackcolor,
        currentIndex: selectedScreen,
        onTap: (i) {
          setState(() {
            selectedScreen =i;
          });
          
        },
        ),
        body: screens[selectedScreen],
      ),
    );
  }
  
  
  
  
  
  BottomNavigationBarItem navitem (String title,IconData icon){
    return BottomNavigationBarItem(
      icon:Icon(icon),
      label: title
    );
  }
}