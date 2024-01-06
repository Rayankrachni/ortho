
import 'package:flutter/material.dart';
import 'package:orthophonienewversion/completed-home-page.dart';
import 'package:orthophonienewversion/model/general-info-model.dart';
import 'package:orthophonienewversion/pages/Result/birth-details-results.dart';
import 'package:orthophonienewversion/pages/Result/developmental-milestones_results.dart';
import 'package:orthophonienewversion/pages/Result/display-emotional-growth.dart';
import 'package:orthophonienewversion/pages/Result/general-info-resluts.dart';
import 'package:orthophonienewversion/pages/Result/hearing-impairments-results.dart';
import 'package:orthophonienewversion/pages/Result/language-developments-results.dart';
import 'package:orthophonienewversion/pages/Result/medical-histories-results.dart';
import 'package:orthophonienewversion/utils/app-navigator.dart';
import 'package:orthophonienewversion/utils/config.dart';
import 'package:orthophonienewversion/utils/dynamic-container.dart';

import 'familly-info.dart';

class MainResultPage extends StatefulWidget {
  final GeneralInfoModel model;

  const MainResultPage({super.key, required this.model});


  @override
  State<MainResultPage> createState() => _MainResultPageState();
}

class _MainResultPageState extends State<MainResultPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    List<Widget> widget=[DisplayGeneralInfo(model: this.widget.model),FamilyInfoDisplay(model: this.widget.model),PregnancyStep12(model: this.widget.model),DisplayChildDev(model: this.widget.model),DisplayLanguageDev(model: this.widget.model),DisplayEmotionalGrowth(model: this.widget.model),DisplayAuditorySide(model: this.widget.model),DisplayDiseasesNervousSystem(model: this.widget.model)];

    List<String> myImages=["assets/Numbers/one.png","assets/Numbers/two.png","assets/Numbers/three.png","assets/Numbers/one.png","assets/Numbers/two.png","assets/Numbers/three.png","assets/Numbers/two.png","assets/Numbers/three.png"];
    List<String> titles=["المعلومات العامة","معلومات العائلة","حالة الام أثناء الحمل","الجانب الحسي","النمو اللغوي","النمو الوجداني","الجانب السمعي","امراض الجهاز العصبي"];
    //

    return SafeArea(
      child: Scaffold(
        body: Container(
          height:MediaQuery.of(context).size.height,
          width:MediaQuery.of(context).size.width,
          decoration:const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [blueColor,deepBlueColor,deepPurpleColor],
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
      
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  shrinkWrap: true,
      
                gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:2, // Adjust this value to change the number of items per row
                  crossAxisSpacing: 3.0, // Optional spacing between items horizontally
                  mainAxisSpacing: 3.0, // Optional spacing between items vertically
                ),
                itemBuilder: (BuildContext context, int index) {
                  // Your item builder logic goes here
                  return GestureDetector(
                    onTap: (){
                      push(context: context, screen: widget[index]);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DynamicContainer(
                          childWidget:
                          Column(
                            mainAxisSize: MainAxisSize.min,
      
                            children: [
                              SizedBox(
                                  height:100,
                                  child: Image.asset(myImages[index])),
                              Text(titles[index],style: TextStyle(
                                fontWeight: FontWeight.bold
                              ),)
                            ],
                          ), backgroundColor: Colors.white),
                    ),
                  );
                    },
                    itemCount: myImages.length, // Replace this with the actual number of items you have
                  ),
              )
      
                    ],
              ),
            ),
          ),
      
        ),
      ),
    );
  }
}
