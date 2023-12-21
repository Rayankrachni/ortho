


import 'package:flutter/material.dart';
import 'package:orthophonienewversion/Result/dispaly-auditory-side..dart';
import 'package:orthophonienewversion/Result/dispaly-genearl-info.dart';
import 'package:orthophonienewversion/Result/display-diseases-nervous-system.dart';
import 'package:orthophonienewversion/Result/display-emotional-growth.dart';
import 'package:orthophonienewversion/Result/display-language-dev.dart';
import 'package:orthophonienewversion/Result/display-pregnancy-step3.dart';
import 'package:orthophonienewversion/Result/familly-info.dart';
import 'package:orthophonienewversion/Result/pregnancy-step12.dart';
import 'package:orthophonienewversion/homePage.dart';
import 'package:orthophonienewversion/utils/app-navigator.dart';
import 'package:orthophonienewversion/utils/config.dart';

import '../familly-info/familly-info.dart';

class DisplayDataWidget  extends StatefulWidget {



  @override
  _DisplayDataWidgetState createState() => _DisplayDataWidgetState();
}

class _DisplayDataWidgetState extends State<DisplayDataWidget > {
  final List<String> titles = ["المعلومات العامة ","معلومات العائلة", "حالة الام أثناء الحمل","الجانب الحسي","النمو اللغوي","النمو الوجداني","الجانب السمعي","امراض الجهاز العصبي"];

  final List<Widget> classes = [DisplayGeneralInfo(), FamilyInfoDisplay(), PregnancyStep12(), DisplayPregnancyStep3(),DisplayLanguageDev(),DisplayEmotionalGrowth(),DisplayAuditorySide(),DisplayDiseasesNervousSystem()];
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(titles[currentPageIndex],style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
        centerTitle: true,


        iconTheme:const IconThemeData(
            color:  primaryColor,
        ),
        leading: GestureDetector(
          onTap: (){
             if (currentPageIndex >0) {
               setState(() {
                 currentPageIndex --;
               });
             }else{
               Navigator.pop(context);
             }

          },
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child:const Icon(Icons.arrow_back,size: 17,),
            ),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: (){
              if (currentPageIndex < classes.length - 1) {
                // Navigate to the next page if not at the last page
                navigateToNextPage();
              } else {
                // Navigate to the home page if at the last page
               pushAndRemove(context: context, screen: HomePage());
              }
             // pushAndRemove(context: context, screen: HomePage());
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 30,
                width: 30,
                decoration:const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child:currentPageIndex < classes.length - 1 ?Icon(Icons.arrow_forward,size: 17,) :Icon(Icons.home,size: 17,),
              ),
            ),
          ),
        ],

      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: classes.length,
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
    return classes[index];
  }

  void navigateToNextPage() {
    if (currentPageIndex < classes.length - 1) {
      setState(() {
        currentPageIndex++;
      });
    }
  }
}