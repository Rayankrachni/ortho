import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:orthophonienewversion/pages/Creation/Primary%20Achievements/PlacePreposition.dart';
import 'package:orthophonienewversion/utils/app-navigator.dart';
import 'package:orthophonienewversion/utils/config.dart';
import 'package:orthophonienewversion/utils/dynamic-container.dart';

class PrimaryAchievementPage extends StatefulWidget {
  const PrimaryAchievementPage({super.key});

  @override
  State<PrimaryAchievementPage> createState() => _PrimaryAchievementPageState();
}

class _PrimaryAchievementPageState extends State<PrimaryAchievementPage> {

  List<Color> myColors=[Color(0xfff5efd6),Color(0xffdbe9db),Color(0xffe2e0ee)];

  List<String> myTitle=["الجانبية"," اصوات البيئة","الصورة الجسمية"];

  List<String> myImages=["assets/Numbers/one.png","assets/Numbers/two.png","assets/Numbers/three.png"];

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
      print('Error pausing sound: $e');
    }
  }

  @override
  Widget build(BuildContext context) {

    final width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
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
              decoration:const  BoxDecoration(
                shape: BoxShape.circle,
                color: primaryColor,
              ),
              child:const Icon(Icons.arrow_back,size: 17,),
            ),
          ),
        ),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(

          child: Column(

            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [

              Container(
                width: width,

                decoration:const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    )
                ),
                child: const Column(
                  children: [
                     SizedBox(height: 15,),
                      Text("  مكتسبات الاولية",style: TextStyle(fontWeight: FontWeight.bold,color: primaryColor,fontSize: 30 ,fontFamily: 'myriadBold' ),),
                     SizedBox(height: 5,),

                   // Text("متابعة الحالة الصحية للأم خلال فترة الحمل",style: TextStyle(color: Colors.grey.withOpacity(0.8),fontSize: 17,fontFamily: 'myriad'  ),),
                   // const SizedBox(height: 5,),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DynamicContainer(
                            childWidget:
                            Column(

                             children: [
                             SizedBox(
                                 height:120,
                                 child: Image.asset(myImages[0])),
                             Text(myTitle[0])
                             ],
                        ), backgroundColor: Colors.white),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DynamicContainer(
                            childWidget: Column(
                              children: [
                                SizedBox(
                                    height:120,
                                    child: Image.asset(myImages[1])),
                                Text(myTitle[1])
                              ],
                            ), backgroundColor: Colors.white),
                      ),
                    )
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(25.0),
                child: DynamicContainer(
                    childWidget:
                    Column(

                      children: [
                        SizedBox(
                            height:130,
                            width: width*0.7,
                            child: Image.asset(myImages[2])),
                        Text(myTitle[0])
                      ],
                    ), backgroundColor: Colors.white),
              ),

              const SizedBox(height: 40,),

              const Text(" للمتابعة اضغط على الزر ادناه",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 12),),

              const SizedBox(height: 10,),

              GestureDetector(
                onTap: (){


                  //push(context: context, screen: ChildDevPage2());
                  push(context: context, screen: PlacePreposition());
                },
                child: Container(
                  width: width*0.9,
                  height: 50,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient:const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [pinklight,pink,Colors.pink],

                    ),
                  ),
                  child:const Center(child: Text("متابعة",style: TextStyle(color: Colors.white,fontSize: 17),)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
