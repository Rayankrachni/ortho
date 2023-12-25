
import 'package:flutter/material.dart';
import 'package:orthophonienewversion/utils/config.dart';
import 'package:provider/provider.dart';

import '../../../provider/save-date-provider.dart';

class FootDetection extends StatefulWidget {
  int index;
   FootDetection({super.key,required this.index});

  @override
  State<FootDetection> createState() => _FootDetectionState();
}

class _FootDetectionState extends State<FootDetection> {



  bool leftLeg=false;
  bool foot=false;
  bool rightLeg=false;

  bool leftFoot=false;
  bool rightFoot=false;


  Color initColor=Colors.transparent;
  Color activeColor=Colors.transparent;
  Color textColor=Colors.transparent;
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    final provider=Provider.of<FormDataProvider>(context);

    return Center(
      child: Stack(
        children: [

          !foot ? Center(child: Text("وينهم الرجلين",
            style: TextStyle(fontSize: 20,color: primaryColor,fontWeight: FontWeight.bold),)):

          Center(child: Text("إجابة صحيحة",
            style: TextStyle(fontSize: 20,color: Colors.green,fontWeight: FontWeight.bold),)),



          SizedBox(
              height: height*0.75,
              child: Image.asset('assets/boy.png',height: height,fit: BoxFit.fitHeight,)),





          Positioned(
              top: height*0.56,
              right: width*0.25,


              child: GestureDetector(
                onTap: (){
                  setState(() {
                    foot=true;
                    // int index;
                    provider.updatePhysicalAnswer(widget.index, "الرجل");
                  });
                },
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: foot ? activeColor:initColor,
                    borderRadius: BorderRadius.circular(5),
                  ),child: Text("الرجل اليمنى ",textAlign: TextAlign.center,style: TextStyle(color:foot ? textColor : initColor, )),),
              )),
          Positioned(
              top: height*0.49,
              right: width*0.25,
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    foot=true;
                    provider.updatePhysicalAnswer(widget.index, "الرجل");
                  });
                },
                child: Container(
                  height: 160,
                  decoration: BoxDecoration(
                    color: foot ? activeColor : initColor,
                    borderRadius: BorderRadius.circular(5),
                  ),child: Text("الرجل اليمنى ",textAlign: TextAlign.center,style: TextStyle(color:Colors.transparent )),),
              )),




          Positioned(
              top: height*0.49,
              left: width*0.35,


              child: GestureDetector(
                onTap: (){
                  setState(() {
                    foot=true;
                    provider.updatePhysicalAnswer(widget.index, "الرجل");
                  });
                },
                child: Container(
                  height: 160,
                  decoration: BoxDecoration(
                    color: foot ? activeColor : initColor,
                    borderRadius: BorderRadius.circular(5),
                  ),child: Text("الرجل  اليسرى",textAlign: TextAlign.center,style: TextStyle(color:Colors.transparent )),),
              )),

          Positioned(
              top: height*0.75,
              left: width*0.32,



              child: GestureDetector(
                onTap: (){
                  setState(() {
                    foot=true;
                    provider.updatePhysicalAnswer(widget.index, "الرجل");
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: foot ? activeColor : initColor,
                    borderRadius: BorderRadius.circular(5),
                  ),child: Text("القدم   اليسرى",textAlign: TextAlign.center,style: TextStyle(color:foot ? textColor : initColor, )),),
              )),



        ],
      ),
    );
  }
}
