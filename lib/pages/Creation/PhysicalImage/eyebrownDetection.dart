
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:orthophonienewversion/utils/app-navigator.dart';
import 'package:orthophonienewversion/completed-home-page.dart';
import 'package:orthophonienewversion/utils/config.dart';
import 'package:provider/provider.dart';

import '../../../provider/save-date-provider.dart';

class FootDetection extends StatefulWidget {
  int index;
   FootDetection({super.key,required this.index});

  @override
  State<FootDetection> createState() => _FootDetectionState();
}

class _FootDetectionState extends State<FootDetection> {



  bool leftLeg=false;
  bool foot=false;
  bool rightLeg=false;

  bool leftFoot=false;
  bool rightFoot=false;


  Color initColor=Colors.transparent;
  Color activeColor=Colors.transparent;
  Color textColor=Colors.transparent;

  AudioPlayer audioPlayerList = AudioPlayer();





  @override
  void initState() {
    super.initState();

    audioPlayerList=AudioPlayer();
  }

  @override
  void dispose() {
    audioPlayerList.dispose();


    super.dispose();
  }
  bool isPlay=false;
  Future<void> playAudio(String soundPath) async {
    try {
      // audioPlayer.play(UrlSource(soundPath));
      print("play audio!");
      print(soundPath);
      setState(() {
        isPlay=!isPlay;
      });
      await audioPlayerList.play(AssetSource(soundPath));
      audioPlayerList.resume();



    } catch (e) {
      print('Error playing sound: $e');
    }
  }

  Future<void> pauseAudio() async {
    try {

      await audioPlayerList.stop();

    } catch (e) {
      print('Error pausing sound: $e');
    }
  }



  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    final provider=Provider.of<FormDataProvider>(context);

    return GestureDetector(
      onTap: () {
          playAudio("audio/fail.mp3");
          //ear = true;
          // playAudio("audio/claps.mp3");
          // provider.updatePhysicalAnswer(widget.index, "الاذن");
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (BuildContext context) {
              // Return the Dialog widget
              return WillPopScope(
                onWillPop: () async {
                  // Return false to prevent closing the dialog with the back button
                  return false;
                },
                child: AlertDialog(

                  content:  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [



                      const Text('! خطأ ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),

                      const Text('الاجابة الصحيحة ',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 22),),
                      SizedBox(

                          height: 300,
                          child: Image.asset("assets/physical-image/foot.png")),
                    ],
                  ),

                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        push(context: context, screen: CompletedHomePage());

                      },
                      child:  Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                            height:50,
                            width: MediaQuery.of(context).size.width*0.8,
                            child:Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                gradient:const LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [pinklight,pink,Colors.pink],

                                ),
                              ),
                              child: const Center(child:  Text("التالي",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600,fontFamily: 'myriad'),)),
                            )
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );


      },
      child: Center(
        child: Stack(
          children: [

            !foot ? Center(child: Text("وينهم الرجلين",
              style: TextStyle(fontSize: 20,color: primaryColor,fontWeight: FontWeight.bold),)):

            Center(child: Text("إجابة صحيحة",
              style: TextStyle(fontSize: 20,color: Colors.green,fontWeight: FontWeight.bold),)),



            SizedBox(
                height: height*0.75,
                child: Image.asset('assets/boy.png',height: height,fit: BoxFit.fitHeight,)),





            Positioned(
                top: height*0.56,
                right: width*0.25,


                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      foot=true;
                      // int index;
                      provider.updatePhysicalAnswer(widget.index, "الرجل");
                      playAudio("audio/claps.mp3");
                      showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext context) {
                          // Return the Dialog widget
                          return WillPopScope(
                            onWillPop: () async {
                              // Return false to prevent closing the dialog with the back button
                              return false;
                            },
                            child: AlertDialog(

                              content:  Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(
                                      width: 200,
                                      height: 100,
                                      child: Lottie.asset('assets/lottie/correct.json')),

                                  Text('! احسنت ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),

                                  Text('! إجابة صحيحة ',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 22),),


                                ],
                              ),

                              actions: [
                                TextButton(
                                  onPressed: () {
                                    pauseAudio();
                                    provider.updateCurrentPage();
                                    push(context: context, screen: CompletedHomePage());
                                  },
                                  child:  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                        height:50,
                                        width: MediaQuery.of(context).size.width*0.8,
                                        child:Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            gradient:const LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                              colors: [pinklight,pink,Colors.pink],

                                            ),
                                          ),
                                          child: const Center(child:  Text("التالي",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600,fontFamily: 'myriad'),)),
                                        )
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    });
                  },
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: foot ? activeColor:initColor,
                      borderRadius: BorderRadius.circular(5),
                    ),child: Text("الرجل اليمنى ",textAlign: TextAlign.center,style: TextStyle(color:foot ? textColor : initColor, )),),
                )),
            Positioned(
                top: height*0.49,
                right: width*0.25,
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      foot=true;
                      provider.updatePhysicalAnswer(widget.index, "الرجل");
                      playAudio("audio/claps.mp3");
                      showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext context) {
                          // Return the Dialog widget
                          return WillPopScope(
                            onWillPop: () async {
                              // Return false to prevent closing the dialog with the back button
                              return false;
                            },
                            child: AlertDialog(

                              content:  Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(
                                      width: 200,
                                      height: 100,
                                      child: Lottie.asset('assets/lottie/correct.json')),

                                  Text('! احسنت ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),

                                  Text('! إجابة صحيحة ',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 22),),


                                ],
                              ),

                              actions: [
                                TextButton(
                                  onPressed: () {
                                    pauseAudio();
                                    provider.updateCurrentPage();
                                    push(context: context, screen: CompletedHomePage());
                                  },
                                  child:  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                        height:50,
                                        width: MediaQuery.of(context).size.width*0.8,
                                        child:Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            gradient:const LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                              colors: [pinklight,pink,Colors.pink],

                                            ),
                                          ),
                                          child: const Center(child:  Text("التالي",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600,fontFamily: 'myriad'),)),
                                        )
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    });
                  },
                  child: Container(
                    height: 160,
                    decoration: BoxDecoration(
                      color: foot ? activeColor : initColor,
                      borderRadius: BorderRadius.circular(5),
                    ),child: Text("الرجل اليمنى ",textAlign: TextAlign.center,style: TextStyle(color:Colors.transparent )),),
                )),

            Positioned(
                top: height*0.49,
                left: width*0.35,


                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      foot=true;
                      provider.updatePhysicalAnswer(widget.index, "الرجل");
                      playAudio("audio/claps.mp3");
                      showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext context) {
                          // Return the Dialog widget
                          return WillPopScope(
                            onWillPop: () async {
                              // Return false to prevent closing the dialog with the back button
                              return false;
                            },
                            child: AlertDialog(

                              content:  Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(
                                      width: 200,
                                      height: 100,
                                      child: Lottie.asset('assets/lottie/correct.json')),

                                  Text('! احسنت ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),

                                  Text('! إجابة صحيحة ',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 22),),


                                ],
                              ),

                              actions: [
                                TextButton(
                                  onPressed: () {
                                    pauseAudio();
                                    provider.updateCurrentPage();
                                    push(context: context, screen: CompletedHomePage());
                                  },
                                  child:  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                        height:50,
                                        width: MediaQuery.of(context).size.width*0.8,
                                        child:Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            gradient:const LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                              colors: [pinklight,pink,Colors.pink],

                                            ),
                                          ),
                                          child: const Center(child:  Text("التالي",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600,fontFamily: 'myriad'),)),
                                        )
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    });
                  },
                  child: Container(
                    height: 160,
                    decoration: BoxDecoration(
                      color: foot ? activeColor : initColor,
                      borderRadius: BorderRadius.circular(5),
                    ),child: Text("الرجل  اليسرى",textAlign: TextAlign.center,style: TextStyle(color:Colors.transparent )),),
                )),

            Positioned(
                top: height*0.75,
                left: width*0.32,



                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      foot=true;
                      provider.updatePhysicalAnswer(widget.index, "الرجل");
                      playAudio("audio/claps.mp3");
                      showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext context) {
                          // Return the Dialog widget
                          return WillPopScope(
                            onWillPop: () async {
                              // Return false to prevent closing the dialog with the back button
                              return false;
                            },
                            child: AlertDialog(

                              content:const  Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text('! احسنت ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),

                                  Text('! إجابة صحيحة ',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 22),),


                                ],
                              ),

                              actions: [
                                TextButton(
                                  onPressed: () {
                                    pauseAudio();
                                    provider.updateCurrentPage();
                                    pushAndRemove(context: context, screen: CompletedHomePage());
                                  },
                                  child:  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                        height:50,
                                        width: MediaQuery.of(context).size.width*0.8,
                                        child:Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            gradient:const LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                              colors: [pinklight,pink,Colors.pink],

                                            ),
                                          ),
                                          child: const Center(child:  Text("التالي",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600,fontFamily: 'myriad'),)),
                                        )
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: foot ? activeColor : initColor,
                      borderRadius: BorderRadius.circular(5),
                    ),child: Text("القدم   اليسرى",textAlign: TextAlign.center,style: TextStyle(color:foot ? textColor : initColor, )),),
                )),



          ],
        ),
      ),
    );
  }
}
