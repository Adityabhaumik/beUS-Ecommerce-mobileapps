import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import './registration_screen.dart';
import './login_screen.dart';




class introscreen extends StatelessWidget {
  static const id ='introscreen';

  List<PageViewModel> getPages(){
    return[
      PageViewModel(

        decoration: PageDecoration(
          pageColor: Color(0xFFFF9040),
        ),
        image:Container(
          child: Image.asset('assets/01.png')),
          titleWidget: Text('A FEW CLICKS IS ALL IT TAKES!',style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold),),
          bodyWidget: Text(''),
          footer: Text('Click on the Button to Skip to Login' ,style: TextStyle(color: Colors.white,fontSize:24,),),
     //Text('Few steps to get started ' ,style: TextStyle(color: Colors.white,fontSize:24,),),
      ),
      PageViewModel(
        decoration: PageDecoration(
          pageColor: Colors.white70,
        ),
        image:Image.asset('assets/02.png'),
        titleWidget: Text('Here to Make your life',style: TextStyle(color: Color(0xFF4C68FD),fontSize: 40),),
        bodyWidget: Text('EASIER..                 ',style: TextStyle(color: Color(0xFF4C68FD),fontSize: 60),)
      ),

      PageViewModel(
          decoration: PageDecoration(
            pageColor: Color(0xFF50A5E6),
          ),
          image:Image.asset('assets/04.png'),
          titleWidget: Text('Expecte The ',style: TextStyle(color: Colors.white,fontSize: 45),),
          bodyWidget: Text('UNEXPECTED!',style: TextStyle(color: Colors.orangeAccent,fontSize:55),),
        footer: Text('To Register Click on the Arrow Button',style: TextStyle(color: Colors.white,fontSize: 12))
      ),
    ];

  }
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        showSkipButton: true,
        skip:FloatingActionButton(
            heroTag:'btn2',child: Icon(Icons.last_page)
        //Text('',style: TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)
        ),
        dotsDecorator: DotsDecorator(color: Colors.tealAccent,activeColor: Colors.white,activeShape: RoundedRectangleBorder()),
        curve: Curves.easeOutCirc,
        onSkip: (){
          Navigator.pushNamed(context, LoginScreen.id);
        },
        onDone: (){
          Navigator.popAndPushNamed(context, registration.id);
          print('on done clicked');
        },
        globalBackgroundColor: Colors.white70,
        pages: getPages(),
        done: FloatingActionButton(
          heroTag: 'btn1',
          backgroundColor: Colors.orangeAccent,
          child: Icon(Icons.arrow_right,size: 50,),
        ),

        //Text('Continue to Register',style: TextStyle(color: Colors.black),),
      ),
      
    );
  }
}

