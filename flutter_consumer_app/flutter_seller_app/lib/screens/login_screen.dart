import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttersellerapp/screens/introductionScreen.dart';
//import '../utiliti/auth.dart';
//import './screens/homeScreen.dart';
//import 'package:flutterappseller/Screens/introductionScreen.dart';
import 'package:http/http.dart' as http;
import './homePage.dart';
import 'dart:convert' ;

import '../widgets/RoundedButton.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
//  final _auth=FirebaseAuth.instance;
  String email;
  String password;
  Color eye=Colors.black12;
  bool coverText=true;
  String url='http://dummy.restapiexample.com/api/v1/employees';
  @override

//  void some() async{
//    var  jsonData= await http.get(url);
//    var a = convert.jsonDecode(jsonData.body);
//    print(a);
//
//  }
//
//  void initState() {
//   some();
//    super.initState();
//  }
  @override
  Widget build(BuildContext context) {
    String Loginurl ='https://aditya-beus.herokuapp.com/consumerUser/Login';
    return Scaffold(
      appBar: AppBar(
        title:Text('Login',style: TextStyle(color: Colors.black,fontSize: 30),),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(child: Icon(Icons.keyboard_backspace,color: Colors.black,size: 25,),
          onTap: (){
            Navigator.pushNamed(context, introscreen.id);
          },),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 48.0,
              ),
              Container(
                child:Image.asset("assets/logo.png"),
              ),
              //
              SizedBox(
                height: 68.0,
              ),
              TextField(
                  style: TextStyle(color: Colors.black),
                  onChanged: (value) {
                    //email=value;
                    email='adi123bhaumik@gmail.com';
                    //Do something with the user input.
                  },
                  decoration:InputDecoration(
                    hintText: 'Enter your Email',
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFFFD6B0), width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFFFD6B0), width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                  )
                //kInputDecoration.copyWith(hintText: 'Enter Your Email'),

              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                  obscureText: coverText,
                  style: TextStyle(color: Colors.black),
                  onChanged: (value) {
                    //password=value;
                    password='hello123';
                    //Do something with the user input.
                  },
                  decoration:
                  InputDecoration(
                    suffixIcon:
                    GestureDetector(child: Icon(Icons.remove_red_eye,color: eye,),
                      onTap: (){setState(() {if(coverText==true){ coverText=false;eye=Colors.blueAccent;}
                      else{
                        eye=Colors.black12;
                        coverText=true;
                      }

                      });},),
                    hintText: 'Enter your Password',
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFFFD6B0), width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFFFD6B0), width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                  )

//
              ),
              SizedBox(
                height: 24.0,
              ),
              RoundedButton(
                onpressed: ()  async{
//                  print('button clikced');
//                  print('$email'+'$password');
//                  final res = await http.post('https://aditya-beus.herokuapp.com/consumerUser/Login',body:jsonEncode({
//                    "email":"adi123bhaumik@gmail.com",
//                    "password":"hello123"
//                  }));
//                  int status = res.statusCode;
//                  var respose = json.decode(res.body);
//                  print(res);
//                  print(respose);
//                  print(status);
                  //var res = await authService().login(email, password);
//                 var respose = convert.jsonDecode(res.body);
//                 print('$email'+'$password');
//                 print(respose);
//                  if(res.status == 200) {
                    Navigator.popAndPushNamed(context, homePage.id);
//                  }
//                  else{
//                    print('loginfaild');
//                  }
                },
                title: 'LOGIN',
                colour: Colors.orange[400],
              )

            ],
          ),
        ),
      ),
    );
  }
}
