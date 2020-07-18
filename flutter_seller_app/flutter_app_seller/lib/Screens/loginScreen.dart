import 'package:flutter/material.dart';
import 'package:flutterappseller/Screens/homeScreen.dart';
import 'package:flutterappseller/Screens/introductionScreen.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Login',style: TextStyle(color: Colors.black,fontSize: 30),),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(child: Icon(Icons.keyboard_backspace,color: Colors.black,size: 40,),
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
                  email=value;
                  //Do something with the user input.
                },
                decoration:InputDecoration(
                  hintText: 'Enter your Email',
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
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
                  password=value;
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
                    borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
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
                  Navigator.popAndPushNamed(context, homeSereen.id);

                },
                title: 'LOGIN',
                colour: Colors.blueAccent,
              )

            ],
          ),
        ),
      ),
    );
  }
}
