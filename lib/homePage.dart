import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:orthophonienewversion/pages/generalInfo/generalInformation.dart';
import 'package:orthophonienewversion/utils/app-navigator.dart';

import '../../utils/config.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController name = TextEditingController();

  FocusNode nameFocus = FocusNode();
  @override
  Widget build(BuildContext context) {
    final  height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        automaticallyImplyLeading: false,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          height:MediaQuery.of(context).size.height,
          width:MediaQuery.of(context).size.width,
          decoration:const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [blueColor,deepBlueColor,deepPurpleColor],
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                 /* const Padding(
                    padding:  EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 27,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage("assets/onboarding2.png"),
                        ),


                    ],),
                  ),*/
                    SizedBox(height: 20,),
                    Container(
                      width: width*0.9,
                     // height: 300,

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment:Alignment.topRight,
                            child: SizedBox(
                                height:height*0.1,
                                child: Lottie.asset('assets/lottie/Animation.json')),
                          ),
                          Text("اهلا انا هديل ",style: TextStyle(color: primaryColor,fontSize: 25,fontWeight: FontWeight.bold),),
                          Text(" مختصة ارطوفونية ",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),

                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(10), // Adjust the radius value as needed
                              ),
                              child: TextFormField(
                                controller: name,


                                decoration:const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'ما اسمك ?',
                                  contentPadding: EdgeInsets.all(15),
                                  hintStyle: TextStyle(fontSize: 12)
                                ),
                                focusNode: nameFocus,

                                cursorColor:
                                    Theme.of(context).textSelectionTheme.cursorColor,

                                //cursorRadius: radiusCircular(4),

                                scrollPhysics: BouncingScrollPhysics(),
                                enableInteractiveSelection: true,



                              )
                            ),
                          ),
                          SizedBox(height: 30,),
                          Text("سعدت بمعرفتك",style: TextStyle(color: pink,fontSize: 20,fontWeight: FontWeight.bold),),
                          SizedBox(height:20,),
                          Text(" انت الان في رحلة معنا ليست بطويلة",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                          SizedBox(height: 20,),
                          Center(child: Text("هل انت مستعد؟",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),)),
                          SizedBox(height: 20,),
                        ],
                      )
                    ),
                  SizedBox(height: 40,),
                  GestureDetector(
                    onTap: (){
                      push(context: context, screen: GeneralInfo());
                    },
                    child: Container(
                      width: width*0.9,
                      height: 70,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient:const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [pinklight,pink,Colors.pink],

                        ),
                      ),
                      child: Center(child: Text("إبدأ",style: TextStyle(color: Colors.white,fontSize: 22),)),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
