
import 'package:flutter/material.dart';
import 'package:orthophonienewversion/pages/Creation/PhysicalImage/earsDetection.dart';
import 'package:orthophonienewversion/pages/Creation/PhysicalImage/eyeDetection.dart';
import 'package:orthophonienewversion/pages/Creation/PhysicalImage/eyebrownDetection.dart';
import 'package:orthophonienewversion/pages/Creation/PhysicalImage/hairDetection.dart';
import 'package:orthophonienewversion/pages/Creation/PhysicalImage/handDetection.dart';
import 'package:orthophonienewversion/pages/Creation/PhysicalImage/mouthDetection.dart';
import 'package:orthophonienewversion/completed-home-page.dart';
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
    final provider=Provider.of<FormDataProvider>(context);

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
              push(context: context, screen: CompletedHomePage());
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
              controller: PageController(initialPage: provider.currentPageIndex),
              onPageChanged: (index) {
                setState(() {
                  provider.currentPageIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return buildPage(provider.currentPageIndex  );
              },
            ),
          ),

        ],
      ),
    );


  }
  Widget buildPage(int index) {

    return Column(
      children: [
        classes[index],

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
