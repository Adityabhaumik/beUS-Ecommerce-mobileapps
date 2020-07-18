import 'package:flutter/material.dart';
import 'package:flutterappseller/Screens/loginScreen.dart';

class inter extends StatelessWidget {
Text all=Text('All Done!',style: TextStyle(fontSize: 60),);

 static const String id ='inter';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.tealAccent,
        child: Icon(Icons.arrow_right,size: 60,color: Colors.white,),
        onPressed: (){
            Navigator.popAndPushNamed(context, LoginScreen.id);
        },
      ),
      backgroundColor: Colors.teal,
      body:Center(
        
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: Text('All Done! ',style: TextStyle(color:Colors.white,fontSize: 60),),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text('You will be able to Login once Your Account gets Validated ',style: TextStyle(color:Colors.white,fontSize:24,fontWeight: FontWeight.bold),),
            ),


          ],)
        )
    );
  }
}
