
import 'package:flutter/material.dart';
import 'package:orthophonienewversion/utils/config.dart';
import 'package:provider/provider.dart';

import '../../../provider/save-date-provider.dart';
class EarsDetection extends StatefulWidget {
  int index;
  EarsDetection({super.key,required this.index});

  @override
  State<EarsDetection> createState() => _EarsDetectionState();
}

class _EarsDetectionState extends State<EarsDetection> {
  bool ear=false;







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
          !ear ? Center(child: Text(" وينهم الأذنين",
            style: TextStyle(fontSize: 20,color: primaryColor,fontWeight: FontWeight.bold),)):

          Center(child: Text("إجابة صحيحة",
            style: TextStyle(fontSize: 20,color: Colors.green,fontWeight: FontWeight.bold),)),



          SizedBox(
              height: height*0.75,
              child: Image.asset('assets/boy.png',height: height,fit: BoxFit.fitHeight,)),


          Positioned(
            top: height * 0.2,
            left: width * 0.24,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  ear = true;
                  provider.updatePhysicalAnswer(widget.index, "الاذن");// Toggle the 'ear' variable
                });
              },
              child: Container(
                height: 70,
                width: 60,
                decoration: BoxDecoration(
                  color: ear ? activeColor : initColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                      "الاذن ",
                      style: TextStyle(color:ear ? textColor : initColor, )
                  ),
                ),
              ),
            ),
          ),

          Positioned(
            top: height * 0.18,
            right: width * 0.22,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  ear = true;
                  provider.updatePhysicalAnswer(widget.index, "الاذن");// Toggle the 'ear' variable
                });
              },
              child: Container(
                height: 60,
                width: 40,
                decoration: BoxDecoration(
                  color: ear ? activeColor : initColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                      "الاذن ",
                      style: TextStyle(color:ear ? textColor : initColor, )
                  ),
                ),
              ),
            ),
          ),









        ],
      ),
    );
  }
}
