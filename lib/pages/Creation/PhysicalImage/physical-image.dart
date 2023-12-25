
import 'package:flutter/material.dart';
import 'package:orthophonienewversion/pages/Creation/PhysicalImage/earsDetection.dart';
import 'package:orthophonienewversion/pages/Creation/PhysicalImage/eyeDetection.dart';
import 'package:orthophonienewversion/pages/Creation/PhysicalImage/eyebrownDetection.dart';
import 'package:orthophonienewversion/pages/Creation/PhysicalImage/hairDetection.dart';
import 'package:orthophonienewversion/pages/Creation/PhysicalImage/handDetection.dart';
import 'package:orthophonienewversion/pages/Creation/PhysicalImage/mouthDetection.dart';
import 'package:orthophonienewversion/pages/Result/ResponsePage.dart';
import 'package:orthophonienewversion/utils/app-toast.dart';
import 'package:orthophonienewversion/utils/config.dart';
import 'package:provider/provider.dart';

import '../../../provider/save-date-provider.dart';
import '../../../utils/app-navigator.dart';
class PhysicalImage extends StatefulWidget {
  const PhysicalImage({super.key});

  @override
  State<PhysicalImage> createState() => _PhysicalImageState();
}

class _PhysicalImageState extends State<PhysicalImage> {
  bool ear=false;
  bool hair=false;
  bool mouth=false;
  bool rightEye=false;
  bool leftEye=false;

  bool rightHand=false;
  bool leftHand=false;

  bool arm=false;

  bool leftLeg=false;
  bool rightLeg=false;

  bool leftFoot=false;
  bool rightFoot=false;


  Color initColor=Colors.transparent;
  Color activeColor=Colors.green;
  Color textColor=Colors.white;

  int currentPageIndex=0;

  List<Widget> classes=[HairDetection(index: 0,),EyeDetection(index: 1,),MouthDetection(index: 2,),HandDetection(index: 3,),EarsDetection(index: 4,),FootDetection(index:5,)];

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;


    return Scaffold(
      appBar: AppBar(
        title:const Text('الصورة الجسمية',style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),
        centerTitle: true,
        iconTheme:const IconThemeData(
            color: Colors.white
        ),
        actions: [
          GestureDetector(
            onTap: (){
              push(context: context, screen: DisplayDataWidget());
              // pushAndRemove(context: context, screen: HomePage());
            },
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 30,
                width: 30,
                decoration:const BoxDecoration(
                  shape: BoxShape.circle,
                  color: primaryColor,
                ),
                child:Icon(Icons.home,size: 17,),
              ),
            ),
          ),
        ],

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
      body:  Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount:classes.length,

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

        ],
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
            print(provider.physicalAnswers[index]);
            if(provider.physicalAnswers[index]!=''){

              if(index!=classes.length-1){
                navigateToNextPage();
              }else{
                push(context: context, screen: DisplayDataWidget());
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

}
