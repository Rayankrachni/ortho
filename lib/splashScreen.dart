
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:orthophonienewversion/auth/signIn.dart';
import 'package:orthophonienewversion/homePage.dart';
import 'package:orthophonienewversion/utils/app-navigator.dart';
import 'package:orthophonienewversion/utils/config.dart';
import 'package:orthophonienewversion/walkthrow.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer( const Duration(seconds: 5), () async{

      pushAndRemove(context: context, screen:  WalkThroughScreen());


     /* bool? isLogin = await SharedPreferencesHelper.getBool('isLogin');

      if(isLogin==null || isLogin == false){
        pushAndRemove(context: context, screen: LoginPage());
      }
      else{
        pushAndRemove(context: context, screen:  HomePage());
      }*/

    });
    super.initState();


  }

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return  Scaffold(
      backgroundColor: primaryColor,
      body:  Center(

        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text("Orthophonie",style: TextStyle(color: Colors.white,fontSize: 16),),
          ],
        )
      ) ,
    );
  }
}
