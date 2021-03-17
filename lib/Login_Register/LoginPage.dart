

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:kvmaster/Dash1.dart';
import 'package:kvmaster/Login_Register/RegisterPage.dart';

import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  LoginPage({
    Key key,
  }) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<LoginPage> {
  ScrollController _con;
  final _EmailorMobileNo = TextEditingController();
  final _Password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    int height;
    String email1,pass1;
    GlobalKey<FormState> form=GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: const Color(0xffabdc55),
      body: 
      OrientationBuilder(
       
        builder: (context,orientation){
        if(orientation==Orientation.portrait){
          height=MediaQuery.of(context).size.height.toInt();

          
        }
        else{
          height=MediaQuery.of(context).size.width.toInt();
        }
        return SingleChildScrollView(
          child:
          Form(
            key: form,
            child:
           Container(
            height:height.toDouble(),
            child:  Stack(
          children: <Widget>[
            
            Transform.translate(
              offset: Offset(-4.0, 225.0),
              child: Container(
                width: 421.0,
                height:MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(74.0),
                  color: const Color(0xffffffff),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(37.0, 288.0),
              child: Text(
                'Sign In',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 31,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Transform.translate(
              offset: Offset(166.0, 678.0),
              child: GestureDetector(
                onTap: (){
                  print("tap");
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => RegisterPage()));
                },
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      color: const Color(0xff000000),
                    ),
                    children: [
                      TextSpan(
                        text: 'or ',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      TextSpan(
                        text: 'Sign up',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(37.0, 73.0),
              child: Text(
                'Welcome\nback!',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 31,
                  color: const Color(0xffffffff),
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Transform.translate(
              offset: Offset(37.0, 396.5),
              child: SvgPicture.string(
                _svg_4evsnz,
                allowDrawingOutsideViewBox: true,
              ),
            ),
            Transform.translate(
              offset: Offset(42.0, 354.0),
              child: TextFormField(
               onChanged: (email){
                 email1=email;
               },
                controller: _EmailorMobileNo,
                validator: (value){
                  if(value.isEmpty){
                    return "Enter email/mobile no";
                  }
                  else{
                    return null;
                  }

                },
                cursorColor: const Color(0x6b000000),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Enter Email or Mobile",
                  hintStyle: TextStyle(fontSize: 17),
                  border: InputBorder.none,
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(37.0, 494.0),
              child: Text(
                '\n  Forget Password',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  color: const Color(0xa6000000),
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Transform.translate(
              offset: Offset(42.0, 437.0),
              child:  TextFormField(
                validator: (value){
                  if(value.isEmpty){
                    return "Password";
                  }
                  else{
                    return null;
                  }
                },
                controller: _Password,
                obscureText: true,
                cursorColor: const Color(0x6b000000),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  hintStyle: TextStyle(fontSize: 17),
                  border: InputBorder.none,
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(124.0, 613.0),
              child: Container(
                width: 164.0,
                height: 50.0,
                child: RaisedButton(onPressed: ()async{
                  SharedPreferences prefs = await SharedPreferences.getInstance();
                  print("tap");
                  final firestoreInstance = FirebaseFirestore.instance;

                  String emailOrmobile;
                  String password;
                  if(!form.currentState.validate()){

                  }
                else{
                  firestoreInstance.collection("users").get().then((querySnapshot) {
                    querySnapshot.docs.forEach((result) {
                      print(result.data());
                      
                      emailOrmobile=result.data()["name"];
                      password=result.data()["password"];
                      print(emailOrmobile);
                      print(password);
                      if(_EmailorMobileNo.text.toString()==emailOrmobile && _Password.text.toString()==password){
                        prefs.setString("username", _EmailorMobileNo.text);
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => DashBoa1()));

                      }else{
                        
                        
                       Scaffold.of(context).showSnackBar(new SnackBar(

                         content: Text("Invalid Login Credentials")));
                     
                      }
                    });
                  });
                return null;
                }
                },
                color: const Color(0xff3e45a9),
                
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(33.0)
                ),
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    color: const Color(0xffffffff),
                  ),
                  textAlign: TextAlign.left,
                ),
                ),
                
              ),
            ),
            
          ],
        
        ),

          ),
        )
        );

      })
        
       
    );

      
    
  }
}

const String _svg_4evsnz =
    '<svg viewBox="37.0 396.5 338.5 80.0" ><path transform="translate(37.0, 396.5)" d="M 0 0 L 338.5 0" fill="none" fill-opacity="0.51" stroke="#989898" stroke-width="1" stroke-opacity="0.51" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(37.0, 476.5)" d="M 0 0 L 338.5 0" fill="none" fill-opacity="0.51" stroke="#989898" stroke-width="1" stroke-opacity="0.51" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
