
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../provider/save-date-provider.dart';
import '../../../utils/config.dart';
class HandDetection extends StatefulWidget {
  int index;

  HandDetection({super.key,required this.index});

  @override
  State<HandDetection> createState() => _HandDetectionState();
}

class _HandDetectionState extends State<HandDetection> {


  bool hand=false;



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
          !hand ? Center(child: Text("وينهم اليدين",
            style: TextStyle(fontSize: 20,color: primaryColor,fontWeight: FontWeight.bold),)):

          Center(child: Text("إجابة صحيحة",
            style: TextStyle(fontSize: 20,color: Colors.green,fontWeight: FontWeight.bold),)),


          SizedBox(
              height: height*0.75,
              child: Image.asset('assets/boy.png',height: height,fit: BoxFit.fitHeight,)),





          //Hair Section




          //right hand
          Positioned(
              top: height*0.22,
              right: width*0.05,


              child:
              GestureDetector(
                onTap: (){
                  setState(() {

                    hand=true;

                    provider.updatePhysicalAnswer(widget.index, "اليد");
                  });
                },
                child: Container(
                  width: 120,
                  height: 80,
                  decoration: BoxDecoration(
                  color: hand ? activeColor : initColor,
                  borderRadius: BorderRadius.circular(5),
                ),child: Text(" اليد اليمنى ",textAlign: TextAlign.center,style: TextStyle(color:hand ? textColor : initColor, )),),
              )),





          Positioned(
              top: height*0.31,
              left: width*0.28,


              child: GestureDetector(
                onTap: (){
                  setState(() {
                    hand=true;
                    provider.updatePhysicalAnswer(widget.index, "اليد");
                  });
                },
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                  color: hand ? activeColor :initColor,
                  borderRadius: BorderRadius.circular(5),
                ),child: Text("اليد اليسرى ",textAlign: TextAlign.center,style: TextStyle(color:hand ? textColor : initColor, )),),
              )),




        ],
      ),
    );
  }
}
