import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttersellerapp/screens/homePage.dart';
//import '../widgets/drawer.dart';
import '../widgets/RoundedButton.dart';
String name;
String email;
String pass1;
String pass2;
String phoneNumber;
String pincode;
String altPhoneNumber;
String shopName;
String town;
String policeStation;
bool   covertext1=true;
bool   covertext2=true;
Color  eye = Colors.black12;
Color  eye2 = Colors.black12;
class registration extends StatelessWidget {
  static const String id= 'registration';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F0E7),
      appBar:  AppBar(
        //shape: ,
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color(0xFFF4F0E7),
        title: Text('Your Gateway To Greate Shopping 🤗',style:TextStyle(color: Color(0xFF0DA9E4),fontSize: 18) ,),
      ),

      body: RegistrationForm(),

    );
  }
}

//From widgt for addProduct
class RegistrationForm extends StatefulWidget {
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              ///!Full Name
              padding: EdgeInsets.only(left: 10,right: 10,top: 30,bottom: 10),
              child: TextFormField(

                onChanged: (value){
                  name=value;
                },
                validator: (value) {
                  if (value.isEmpty || value.length < 5) {
                    return "PLESE ENTER VALUE";
                  }
                  return null;
                },
                decoration: InputDecoration(

                    focusedBorder:OutlineInputBorder(

                      borderSide: BorderSide(color: Color(0xFFFF7F00)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    //focusColor: Color(0xFFFFD6B0),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFFFD6B0)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),

                    hintText: 'Enter Your Full Name Here',
                    labelText: 'Full Name'
                ),
              ),
            ),
            Container(
              ///!password1
              padding: EdgeInsets.only(left: 10,right: 10,top: 30,bottom: 10),
              child: TextFormField(
                obscureText: covertext1,
                onChanged: (value){
                  pass1=value;
                },
                validator: (value) {
                  if (value.isEmpty || value.length < 5) {
                    return "PLESE ENTER VALUE";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    suffixIcon: GestureDetector(
                      child: Icon(Icons.remove_red_eye,color: eye,)
                      ,onTap: (){
                      setState(() {
                        if(covertext1==true){
                          covertext1=false;
                          eye=Colors.blueAccent;
                        }
                        else{
                          eye=Colors.black12;
                          covertext1=true;
                        }
                      });
                    },
                    ),
                    focusedBorder:OutlineInputBorder(

                      borderSide: BorderSide(color: Color(0xFFFF7F00)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    //focusColor: Color(0xFFFFD6B0),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFFFD6B0)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),

                    hintText: 'Enter Password Here',
                    labelText: 'Password'
                ),
              ),
            ),
            Container(
              ///!pass2
              padding: EdgeInsets.only(left: 10,right: 10,top: 30,bottom: 10),
              child: TextFormField(
                obscureText: covertext2 ,

                onChanged: (value){
                  pass2=value;
                },
                validator: (value) {
                  if (value.isEmpty || (value !=pass1)) {
                    return "Passwords did not match";
                  }
                  return null;
                },
                decoration: InputDecoration( suffixIcon: GestureDetector(
                  child: Icon(Icons.remove_red_eye,color: eye2,)
                  ,onTap: (){
                  setState(() {
                    if(covertext2==true){
                      covertext2=false;
                      eye2=Colors.blueAccent;
                    }
                    else{
                      eye2=Colors.black12;
                      covertext2=true;
                    }
                  });
                },
                ),
                    focusedBorder:OutlineInputBorder(

                      borderSide: BorderSide(color: Color(0xFFFF7F00)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    //focusColor: Color(0xFFFFD6B0),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFFFD6B0)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),

                    hintText: 'Re-Enter Password Here',
                    labelText: 'Re-Enter Password'
                ),
              ),
            ),
            Container(
              ///!Email id
              padding: EdgeInsets.only(left: 10,right: 10,top: 30,bottom: 10),
              child: TextFormField(
                onChanged: (value){
                  email=value;
                },
                validator: (value) {
                  if (value.isEmpty || value.length < 5) {
                    return "PLESE ENTER VALUE";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    focusedBorder:OutlineInputBorder(

                      borderSide: BorderSide(color: Color(0xFFFF7F00)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    //focusColor: Color(0xFFFFD6B0),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFFFD6B0)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),

                    hintText: 'Enter Your Email.id ',
                    labelText: 'Email.id'
                ),
              ),
            ),
            Container(
              ///!Phone number first
              padding: EdgeInsets.only(left: 10,right: 10,top: 30,bottom: 10),
              child: TextFormField(

                inputFormatters: <TextInputFormatter>[
                  WhitelistingTextInputFormatter.digitsOnly
                ],
                keyboardType: TextInputType.number,
                onChanged: (value){
                  phoneNumber=value;
                },
                validator: (value) {
                  if (value.isEmpty ) {
                    return "PLESE ENTER VALUE";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    focusedBorder:OutlineInputBorder(

                      borderSide: BorderSide(color: Color(0xFFFF7F00)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    //focusColor: Color(0xFFFFD6B0),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFFFD6B0)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: 'Enter Your Phone No ',
                    labelText: 'Phone No.'
                ),
              ),
            ),

            Container(
              ///pin code
              padding: EdgeInsets.only(left: 10,right: 10,top: 30,bottom: 10),
              child: TextFormField(
                onChanged: (value){
                  pincode=value;
                },
                inputFormatters: <TextInputFormatter>[
                  WhitelistingTextInputFormatter.digitsOnly
                ],
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value.isEmpty ) {
                    return "PLESE ENTER VALUE";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    focusedBorder:OutlineInputBorder(

                      borderSide: BorderSide(color: Color(0xFFFF7F00)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    //focusColor: Color(0xFFFFD6B0),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFFFD6B0)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: 'Enter the Pin Code Of your Area ',
                    labelText: 'PIN Code'
                ),
              ),
            ),


            RoundedButton(colour: Colors.redAccent,title:'Register',onpressed: (){
//              if(_formKey.currentState.validate()){
              Scaffold.of(context).showSnackBar(SnackBar(content: Text(' Successfully Submitted 😃')));
              Navigator.popAndPushNamed(context, homePage.id);
//              }
//              print('$name'
//                  +'$email'+'$pass1'+'$pass2'+'$phoneNumber'+'$pincode'+'$altPhoneNumber'+'$shopName'+'$town'+'$policeStation'+'$covertext1'+'$covertext2'

              //    );
            })
          ],
        ),
      ),
    );
  }
}
