import 'package:flutter/material.dart';
import './screens/homePage.dart';
import './screens/cartPage.dart';
import './screens/productPage.dart';
import './screens/login_screen.dart';
import './screens/registration_screen.dart';
import './screens/introductionScreen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.grey,
      ),
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute:introscreen.id ,
      routes: {
        LoginScreen.id: (context) => LoginScreen(),
        registration.id: (context) => registration(),
        introscreen.id:(context) =>introscreen(),
        homePage.id: (context) => homePage(),
        cartPage.id:(context) => cartPage(),
        productPage.id: (context) => productPage()
      },
    );
  }
}



//
