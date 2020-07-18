import 'package:flutter/material.dart';
import 'package:flutterappseller/Screens/RegistrationScreen.dart';
import 'package:flutterappseller/Screens/addNewProductScreen.dart';
import 'package:flutterappseller/Screens/homeScreen.dart';
import 'package:flutterappseller/Screens/introductionScreen.dart';
import './Screens/afterregistration.dart';
import './Screens/loginScreen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      initialRoute:introscreen.id,
      routes: {
        LoginScreen.id:(context) =>LoginScreen(),
        inter.id:(context) =>inter(),
        introscreen.id:(context) =>introscreen(),
        registration.id:(context)=>registration(),
        addProduct.id:(context)=>addProduct(),
        homeSereen.id:(context) => homeSereen(),
      },
    );
  }
}
