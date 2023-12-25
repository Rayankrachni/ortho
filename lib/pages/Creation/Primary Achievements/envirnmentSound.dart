
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
import 'package:orthophonienewversion/pages/Result/ResponsePage.dart';
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
  List<AudioCache> audioCacheList = List.generate(8, (index) => AudioCache());
  List<AudioPlayer> audioPlayerList = List.generate(8, (index) => AudioPlayer());





  @override
  void initState() {
    super.initState();
    for(int i=0;i<audioPlayerList.length;i++){
      audioPlayerList[i]=AudioPlayer();
    }

  }

  @override
  void dispose() {

    for(int i=0;i<audioPlayerList.length;i++){
      audioPlayerList[i].dispose();
    }

    super.dispose();
  }

  Future<void> playAudio(String soundPath,index) async {
    try {
     // audioPlayer.play(UrlSource(soundPath));
      print("play audio!");
      print(soundPath);
      setState(() {
        isPlay[index]=!isPlay[index];
      });
      await audioPlayerList[index].play(AssetSource(soundPath));



    } catch (e) {
      print('Error playing sound: $e');
    }
  }


  Future<void> pauseAudios() async {
    try {

      for (int i = 0; i < audioPlayerList.length; i++) {

          await audioPlayerList[i].stop();
          setState(() {
            isPlay[i] = false;
          });

      }

    } catch (e) {
      print('Error playing sound: $e');
    }
  }





  Future<void> pauseAudio(int index) async {
    try {
      setState(() {
        isPlay[index]=!isPlay[index];
      });
      await audioPlayerList[index].pause();
    } catch (e) {
      print('Error pausing sound: $e');
    }
  }
  int currentPageIndex=0;

  @override
  Widget build(BuildContext context) {
    final provider=Provider.of<FormDataProvider>(context);
    return Scaffold(
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
                navigateToNextPage();
              }else{
                push(context: context, screen: PhysicalImage());
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


