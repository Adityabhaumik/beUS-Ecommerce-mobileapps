import 'package:flutter/material.dart';
import 'package:flutterappseller/Screens/RegistrationScreen.dart';
import 'package:flutterappseller/Screens/loginScreen.dart';
import 'package:introduction_screen/introduction_screen.dart';



class introscreen extends StatelessWidget {
  static const id ='introscreen';

  List<PageViewModel> getPages(){
    return[
      PageViewModel(

        decoration: PageDecoration(
          pageColor: Color(0xFFFF9040),
        ),
        image:Image.asset('assets/01.png'),
          titleWidget: Text('Glad to see YOU!',style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold),),
          bodyWidget: Text('Few steps to get started ' ,style: TextStyle(color: Colors.white,fontSize:30,),),
          footer: Text('Click on the Blue button to Skip to Login' ,style: TextStyle(color: Colors.white,fontSize:24,),),
     //Text('Few steps to get started ' ,style: TextStyle(color: Colors.white,fontSize:24,),),
      ),
      PageViewModel(
        decoration: PageDecoration(
          pageColor: Colors.white70,
        ),
        image:Image.asset('assets/02.png'),


        titleWidget: Text('SomePaper Work',style: TextStyle(color: Color(0xFF4C68FD),fontSize: 40),),
        bodyWidget: Text('And Wala',style: TextStyle(color: Color(0xFF4C68FD),fontSize: 45),)
      ),
      PageViewModel(
        decoration: PageDecoration(
          pageColor: Color(0xFF69FE50),
        ),
        image:Image.asset('assets/03.png'),
          titleWidget: Text('Upload \nAnd SELL',style: TextStyle(color: Colors.white,fontSize:60,fontWeight: FontWeight.bold),),
          bodyWidget: Text('',style: TextStyle(color: Colors.white,fontSize: 60),)
      ),
      PageViewModel(
          decoration: PageDecoration(
            pageColor: Color(0xFF50A5E6),
          ),
          image:Image.asset('assets/04.png'),
          titleWidget: Text('Svagata',style: TextStyle(color: Colors.white,fontSize: 60),),
          bodyWidget: Text('',style: TextStyle(color: Color(0xFF4C68FD),fontSize: 30),),
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

