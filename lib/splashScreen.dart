
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:orthophonienewversion/auth/signIn.dart';
import 'package:orthophonienewversion/homePage.dart';
import 'package:orthophonienewversion/pages/Creation/PhysicalImage/physical-image.dart';
import 'package:orthophonienewversion/pages/Creation/Primary%20Achievements/PlacePreposition.dart';
import 'package:orthophonienewversion/pages/Creation/Primary%20Achievements/envirnmentSound.dart';
import 'package:orthophonienewversion/utils/app-navigator.dart';
import 'package:orthophonienewversion/utils/config.dart';
import 'package:orthophonienewversion/utils/shared-pref-helper.dart';
import 'package:orthophonienewversion/walkthrow.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {





      WidgetsBinding.instance.addPostFrameCallback((_) async {
        String? token = await SharedPreferencesHelper.getString("USER_TOKEN");
        bool isFirstTime = await SharedPreferencesHelper.getBool("FIRST_USE") ?? false;

        if(isFirstTime == false){
          pushAndRemove(context: context, screen:WalkThroughScreen());
        }
        else{
          if (token == null || token.isEmpty) {
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => SignInScreen(),
              ),
                  (route) => false,
            );
          } else {
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
                  (route) => false,
            );
          }}});

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return  const Scaffold(
      backgroundColor: primaryColor,
      body:  Center(

        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text("Talk Time Therapy",style: TextStyle(color: Colors.white,fontSize: 16),),
          ],
        )
      ) ,
    );
  }
}
