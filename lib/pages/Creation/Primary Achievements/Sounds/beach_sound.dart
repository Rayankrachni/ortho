
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:orthophonienewversion/model/sound-model.dart';
import 'package:orthophonienewversion/provider/save-date-provider.dart';
import 'package:orthophonienewversion/utils/config.dart';
import 'package:provider/provider.dart';
class BeachSound extends StatefulWidget {
  int index;
   BeachSound({super.key,required this.index});

  @override
  State<BeachSound> createState() => _BeachSoundState();
}

class _BeachSoundState extends State<BeachSound> {
  final Sound sound =   Sound(imagesPath: "assets/pregancy1.png", soundPath: "audio/beach_sound.mp3",isPaly: false);
  List<String> soundsSuggetion=["صوت الأمطار ","صوت الحيوانات","صوت الرعد","صوت البحر "];
  List<bool> isChecked =[false,false,false,false];

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



    } catch (e) {
      print('Error playing sound: $e');
    }
  }





  Future<void> pauseAudio() async {
    try {
      setState(() {
        isPlay=!isPlay;
      });
      await audioPlayerList.pause();
    } catch (e) {
      print('Error pausing sound: $e');
    }
  }


  @override
  Widget build(BuildContext context) {
    final provider=Provider.of<FormDataProvider>(context);
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 60,),
            Text("  ${widget.index} التسجيل الصوتي",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 27,color: primaryColor),),
            Center(
              child: SizedBox(
                  width: 200,
                  height: 100,
                  child: Lottie.asset('assets/lottie/audio.json')),
            ),
            const SizedBox(height: 10),

            !isPlay ? GestureDetector(
              onTap: () {
                //print(sound.soundPath!);
                print("sound.soundPath!");
                print(sound.soundPath!);

                playAudio(sound.soundPath!);
              },
              child: Container(
                  height: 50,
                  width: 50,
                  decoration:const BoxDecoration(
                    shape: BoxShape.circle,
                    color: primaryColor,

                  ),
                  child:const Icon(Icons.play_arrow,color: Colors.white,)),
            ):


            GestureDetector(
              onTap: () {
                pauseAudio();
              },
              child: Container(
                  height: 50,
                  width: 50,
                  decoration:const BoxDecoration(
                    shape: BoxShape.circle,
                    color: primaryColor,

                  ),
                  child:const Icon(Icons.pause,color: Colors.white,)),
            ),



            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      print("------");

                      if(isChecked[0]==false){
                        isChecked[0]=true;
                        isChecked[1]=false;
                        isChecked[2]=false;
                        isChecked[3]=false;
                        provider.updateAudioAnswer(widget.index,soundsSuggetion[0]);


                      }else{
                        isChecked[0]=false;

                      }

                    });

                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height:40,
                        width: 150,
                        decoration: BoxDecoration(
                          color: isChecked[0]?primaryColor: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),

                        child:   Center(
                          child: Text(soundsSuggetion[0],style:  TextStyle(
                              fontFamily: "myriad",
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            color:isChecked[0]? Colors.white: Colors.black,
                          ),),
                        )
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    print("---++++---");
                    setState(() {
                      if(isChecked[1]==false){
                        isChecked[1]=true;
                        isChecked[0]=false;
                        isChecked[2]=false;
                        isChecked[3]=false;
                        provider.updateAudioAnswer(widget.index,soundsSuggetion[1]);

                      }else{
                        isChecked[1]=false;

                      }

                    });

                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height:40,
                        width: 150,
                        decoration: BoxDecoration(
                          color:isChecked[1]?primaryColor: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child:Center(
                          child: Text(soundsSuggetion[1],style: TextStyle(
                              fontFamily: "myriad",
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            color:isChecked[1]? Colors.white: Colors.black,
                          ),),
                        )
                    ),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    print("======");
                    setState(() {
                      if(isChecked[2]==false){
                        isChecked[2]=true;
                        isChecked[1]=false;
                        isChecked[0]=false;
                        isChecked[3]=false;
                        provider.updateAudioAnswer(widget.index,soundsSuggetion[2]);


                      }else{
                        isChecked[2]=false;

                      }

                    });

                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height:40,
                        width: 150,
                        decoration: BoxDecoration(
                          color:isChecked[2]?primaryColor: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),

                        child:   Center(
                          child: Text(soundsSuggetion[2],style: TextStyle(
                              fontFamily: "myriad",
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            color:isChecked[2]? Colors.white: Colors.black,
                          ),),
                        )
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      if(isChecked[3]==false){
                        isChecked[3]=true;
                        isChecked[1]=false;
                        isChecked[2]=false;
                        isChecked[0]=false;
                        provider.updateAudioAnswer(widget.index,soundsSuggetion[3]);

                      }else{
                        isChecked[3]=false;

                      }

                    });

                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height:40,
                        width: 150,
                        decoration: BoxDecoration(
                          color:isChecked[3]?primaryColor: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child:   Center(
                          child: Text(soundsSuggetion[3],style: TextStyle(
                              fontFamily: "myriad",
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            color:isChecked[3]? Colors.white: Colors.black,
                          ),),
                        )
                    ),
                  ),
                ),
              ],
            ),










          ],
        ),
      ),
    );
  }
}
