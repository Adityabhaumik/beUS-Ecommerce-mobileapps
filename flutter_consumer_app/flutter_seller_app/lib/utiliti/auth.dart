import 'package:http/http.dart' as http;


class authService{
  String Loginurl ='https://aditya-beus.herokuapp.com/consumerUser/Login';
  login (email,pass) async{
    try{
      return await http.post(Loginurl,body: {
        "email":email,
        "password":pass,
      });
    }catch(e){
        print(e);
    }
  }

}