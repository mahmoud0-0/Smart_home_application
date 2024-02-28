import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smart_home_application/views/shared_screens/home_page.dart';



void main () => runApp(MyApp());

 class MyApp  extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:home_page(),
      debugShowCheckedModeBanner: false,
    );
  }
}
