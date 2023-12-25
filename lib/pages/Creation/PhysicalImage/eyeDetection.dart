
import 'package:flutter/material.dart';
import 'package:orthophonienewversion/utils/config.dart';
import 'package:provider/provider.dart';

import '../../../provider/save-date-provider.dart';
class EyeDetection extends StatefulWidget {
  int index;
   EyeDetection({super.key,required this.index});

  @override
  State<EyeDetection> createState() => _EyeDetectionState();
}

class _EyeDetectionState extends State<EyeDetection> {

  bool eye=false;




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
          !eye ? Center(child: Text("وينهم العينين",
            style: TextStyle(fontSize: 20,color: primaryColor,fontWeight: FontWeight.bold),)):

          Center(child: Text("إجابة صحيحة",
            style: TextStyle(fontSize: 20,color: Colors.green,fontWeight: FontWeight.bold),)),


          SizedBox(
              height: height*0.75,
              child: Image.asset('assets/boy.png',height: height,fit: BoxFit.fitHeight,)),
          Positioned(
              top: height*0.18,
              left: width*0.35,


              child: GestureDetector(
                onTap: (){
                  setState(() {
                    eye=true;

                    provider.updatePhysicalAnswer(widget.index, "العين");
                  });
                },
                child: Container(
                  height: 50,
                  width: 55,
                  decoration: BoxDecoration(
                    color: eye ? activeColor : initColor,
                    borderRadius: BorderRadius.circular(5),
                  ),child: Center(child: Text("العين اليسرى ",style: TextStyle(color:eye ? textColor : initColor, ),)),),
              )),
          Positioned(
              top: height*0.16,
              right: width*0.3,


              child: GestureDetector(
                onTap: (){
                  setState(() {
                    eye=true;
                    provider.updateEyesValue("العين");
                    provider.updatePhysicalAnswer(widget.index, "العين");
                  });
                },
                child: Container(
                  height: 40,
                  width: 100,

                  decoration: BoxDecoration(
                    color:  eye ? activeColor : initColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text("العين اليمنى ",style: TextStyle(color:eye ? textColor : initColor, )),),
              )),














        ],
      ),
    );
  }
}
