
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:orthophonienewversion/provider/save-date-provider.dart';
import 'package:orthophonienewversion/utils/config.dart';
import 'package:provider/provider.dart';
class MouthDetection extends StatefulWidget {
  int index;
  MouthDetection({super.key,required this.index});

  @override
  State<MouthDetection> createState() => _MouthDetectionState();
}

class _MouthDetectionState extends State<MouthDetection> {

  bool mouth=false;

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
  Color initColor=Colors.transparent;
  Color activeColor=Colors.transparent;
  Color textColor=Colors.transparent;
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    final provider=Provider.of<FormDataProvider>(context);
    return GestureDetector(
      onTap: () {
        playAudio("audio/fail.mp3");
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
                          child: Image.asset("assets/physical-image/mouth.png")),
                    ],
                  ),

                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        provider.movetoNextPage();

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

            !mouth ? Center(child: Text("وين  راه الفم",
              style: TextStyle(fontSize: 20,color: primaryColor,fontWeight: FontWeight.bold),)):

            Center(child: Text("إجابة صحيحة",
              style: TextStyle(fontSize: 20,color: Colors.green,fontWeight: FontWeight.bold),)),




            SizedBox(
                height: height*0.75,
                child: Image.asset('assets/boy.png',height: height,fit: BoxFit.fitHeight,)),




            Positioned(
                top: height*0.22,
                left: width*0.45,


                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      mouth=true;

                      provider.updatePhysicalAnswer(widget.index, "الفم");
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
//assets/lottie/consultation.json
                                  Text('! احسنت ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),

                                  Text('! إجابة صحيحة ',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 22),),


                                ],
                              ),

                              actions: [
                                TextButton(
                                  onPressed: () {
                                    pauseAudio();
                                    provider.movetoNextPage();
                                    Navigator.of(context).pop();
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
                    height: 45,
                    width: 70,
                    decoration: BoxDecoration(
                      color: mouth ? activeColor : initColor,
                      borderRadius: BorderRadius.circular(5),
                    ),child: Center(child: Text(" الفم  ",style: TextStyle(color:mouth ? textColor : initColor, ))),),
                )),

            //Hair Section








          ],
        ),
      ),
    );
  }
}
