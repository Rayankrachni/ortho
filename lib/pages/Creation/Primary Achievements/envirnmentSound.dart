
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:lottie/lottie.dart';
import 'package:orthophonienewversion/model/sound-model.dart';
import 'package:orthophonienewversion/pages/Creation/PhysicalImage/physical-image.dart';
import 'package:orthophonienewversion/pages/Creation/Primary%20Achievements/Sounds/beach_sound.dart';
import 'package:orthophonienewversion/pages/Creation/Primary%20Achievements/Sounds/bird_sound.dart';
import 'package:orthophonienewversion/pages/Creation/Primary%20Achievements/Sounds/car-sound.dart';
import 'package:orthophonienewversion/pages/Creation/Primary%20Achievements/Sounds/horse-sound.dart';
import 'package:orthophonienewversion/pages/Creation/Primary%20Achievements/Sounds/police-car-sound.dart';
import 'package:orthophonienewversion/pages/Creation/Primary%20Achievements/Sounds/rain_and_thunder.dart';
import 'package:orthophonienewversion/pages/Creation/Primary%20Achievements/Sounds/rain_sound.dart';
import 'package:orthophonienewversion/pages/Creation/Primary%20Achievements/Sounds/thunder.dart';

import 'package:orthophonienewversion/provider/save-date-provider.dart';
import 'package:orthophonienewversion/utils/app-navigator.dart';
import 'package:orthophonienewversion/utils/app-toast.dart';
import 'package:orthophonienewversion/utils/config.dart';
import 'package:provider/provider.dart';

class EnvironmentSoundPage extends StatefulWidget {
  @override
  _EnvironmentSoundPageState createState() => _EnvironmentSoundPageState();
}

class _EnvironmentSoundPageState extends State<EnvironmentSoundPage> {

  final List<Sound> sounds = [
    Sound(imagesPath: "assets/onboarding1.png", soundPath: "audio/rain_audio.mp3",isPaly: false),
    Sound(imagesPath: "assets/pregancy1.png", soundPath: "audio/bird_sound.mp3",isPaly: false),
    Sound(imagesPath: "assets/facebook.png", soundPath: "audio/beach_sound.mp3",isPaly: false),
    Sound(imagesPath: "assets/facebook.png", soundPath: "audio/rain-and-thunder.mp3",isPaly: false),


    Sound(imagesPath: "assets/onboarding1.png", soundPath: "audio/thunder.mp3",isPaly: false),
    Sound(imagesPath: "assets/pregancy1.png", soundPath: "audio/policeCar.mp3",isPaly: false),
    Sound(imagesPath: "assets/facebook.png", soundPath: "audio/carSound.mp3",isPaly: false),
    Sound(imagesPath: "assets/facebook.png", soundPath: "audio/horse.mp3",isPaly: false),
  ];



  List<bool> isPlay = List.generate(8, (index) => false);
  List<Widget> classes=[RainAndThunder(index: 1,),BirdSound(index: 2),BeachSound(index: 3),CarSound(index: 4),PoliceCarSound(index: 5),ThunderSound(index: 6),RainSound(index: 7),HorseSound(index: 8)];










  AudioPlayer audioPlayerList = AudioPlayer();

  @override
  void initState() {
    audioPlayerList=AudioPlayer();
    super.initState();
  }

  @override
  void dispose() {
    audioPlayerList.dispose();
    super.dispose();
  }

  Future<void> playAudio(String soundPath) async {
    try {
      // audioPlayer.play(UrlSource(soundPath));

      await audioPlayerList.play(AssetSource(soundPath));



    } catch (e) {
      print('Error playing sound: $e');
    }
  }

  Future<void> pauseAudio() async {
    try {
      await audioPlayerList.stop();

    } catch (e) {
      print('Error stopping sound: $e');
    }
  }




  int currentPageIndex=0;

  @override
  Widget build(BuildContext context) {
    final provider=Provider.of<FormDataProvider>(context);
    return WillPopScope(
      onWillPop: () async {
        // Return false to disable the default back button behavior
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title:const Text('أصوات البيئة',style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),
          centerTitle: true,
          iconTheme:const IconThemeData(
              color: Colors.white
          ),
      
      
          leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
      
            },
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: primaryColor,
                ),
                child:const Icon(Icons.arrow_back,size: 17,),
              ),
            ),
          ),
        ),
        body: PageView.builder(
      
          itemCount: classes.length,
          physics: NeverScrollableScrollPhysics(),
          controller: PageController(initialPage: currentPageIndex),
          onPageChanged: (index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          itemBuilder: (context, index) {
            return buildPage(currentPageIndex);
          },
        ),
      ),
    );
  }

  Widget buildPage(int index) {
    final provider=Provider.of<FormDataProvider>(context);
    return Column(
      children: [
        classes[index],
        GestureDetector(
          onTap: (){
            print("provider.audioAnswers[index] $index");
            print(provider.audioAnswers[index]);
            if(provider.audioAnswers[index]!=''){

              if(index!=7){

                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (BuildContext context) {
                    pauseAudio();
                    provider.audioAnswers[index]==provider.audioCorrectAnswers[index]?playAudio("audio/claps.mp3"):playAudio("audio/fail.mp3");

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
                                child: Lottie.asset(provider.audioAnswers[index]==provider.audioCorrectAnswers[index]?'assets/lottie/correct.json':'assets/lottie/wrong.json')),

                            Text(provider.audioAnswers[index]==provider.audioCorrectAnswers[index]?'! احسنت ':'خطأ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),

                            Text(provider.audioAnswers[index]==provider.audioCorrectAnswers[index]?'! إجابة صحيحة ':'إجابة غير صحيحة',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 22),),

                            if(provider.audioAnswers[index]!=provider.audioCorrectAnswers[index])Text(' الاجابة الصحيحة هي: ${provider.audioCorrectAnswers[index]}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.green),),

                          ],
                        ),

                        actions: [
                          TextButton(
                            onPressed: () {
                              pauseAudio();
                              navigateToNextPage();
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
                                    child:  Center(child:  Text("التالي",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600,fontFamily: 'myriad'),)),
                                  )
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              }else{
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (BuildContext context) {
                    pauseAudio();
                    provider.audioAnswers[index]==provider.audioCorrectAnswers[index]?playAudio("audio/claps.mp3"):playAudio("audio/fail.mp3");

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
                                child: Lottie.asset(provider.audioAnswers[index]==provider.audioCorrectAnswers[index]?'assets/lottie/correct.json':'assets/lottie/wrong.json')),

                            Text(provider.audioAnswers[index]==provider.audioCorrectAnswers[index]?'! احسنت ':'خطأ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),

                            Text(provider.audioAnswers[index]==provider.audioCorrectAnswers[index]?'! إجابة صحيحة ':'إجابة غير صحيحة',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 22),),

                            if(provider.audioAnswers[index]!=provider.audioCorrectAnswers[index])Text(' الاجابة الصحيحة هي: ${provider.audioCorrectAnswers[index]}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.green),),


                          ],
                        ),

                        actions: [
                          TextButton(
                            onPressed: () {
                              pauseAudio();
                              pushAndRemove(context: context, screen: PhysicalImage());

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
                                    child:  Center(child:  Text(provider.audioAnswers[index]==provider.audioCorrectAnswers[index]?"التالي":"اعد المحاولة",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600,fontFamily: 'myriad'),)),
                                  )
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              //
              }

              //
              // ToastHelper.showToast(msg: "next Index", backgroundColor: pinklight);
            }else{
              ToastHelper.showToast(msg: "اختر إجابة", backgroundColor: pinklight);
            }


          },
          child: Padding(
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
    );
  }

  void navigateToNextPage() {
    if (currentPageIndex < classes.length - 1) {
      print("--------------");
      setState(() {
        currentPageIndex++;
      });

    }
  }

  void navigateToPreviousPage() {
    if (currentPageIndex > 0) {
      setState(() {
        currentPageIndex--;
      });
    }
  }
}


