


import 'package:flutter/material.dart';
import 'package:orthophonienewversion/Result/dispaly-genearl-info.dart';
import 'package:orthophonienewversion/Result/familly-info.dart';
import 'package:orthophonienewversion/homePage.dart';
import 'package:orthophonienewversion/utils/app-navigator.dart';
import 'package:orthophonienewversion/utils/config.dart';

import '../familly-info/familly-info.dart';

class DisplayDataWidget  extends StatefulWidget {



  @override
  _DisplayDataWidgetState createState() => _DisplayDataWidgetState();
}

class _DisplayDataWidgetState extends State<DisplayDataWidget > {
  final List<String> pages = ['Page 1', 'Page 2', 'Page 3'];
  final List<Widget> classes = [DisplayGeneralInfo(), FamilyInfoDisplay(), DisplayGeneralInfo()];
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("عرض المعلومات"),
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
        actions: [
          GestureDetector(
            onTap: (){
              pushAndRemove(context: context, screen: HomePage());
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 30,
                width: 30,
                decoration:const BoxDecoration(
                  shape: BoxShape.circle,
                  color: primaryColor,
                ),
                child:const Icon(Icons.home,size: 17,),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: pages.length,
              controller: PageController(initialPage: currentPageIndex),
              onPageChanged: (index) {
                setState(() {
                  currentPageIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return buildPage(index);
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
    if (currentPageIndex < pages.length - 1) {
      setState(() {
        currentPageIndex++;
      });
    }
  }
}