
import 'package:flutter/material.dart';
import 'package:orthophonienewversion/utils/config.dart';
import 'package:provider/provider.dart';

import '../../../provider/save-date-provider.dart';
class HairDetection extends StatefulWidget {
  int index;
   HairDetection({super.key,required this.index});

  @override
  State<HairDetection> createState() => _HairDetectionState();
}

class _HairDetectionState extends State<HairDetection> {

  bool hair=false;





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
          !hair ? Center(child: Text("وين  راه الشعر",
            style: TextStyle(fontSize: 20,color: primaryColor,fontWeight: FontWeight.bold),)):

          Center(child: Text("إجابة صحيحة",
            style: TextStyle(fontSize: 20,color: Colors.green,fontWeight: FontWeight.bold),)),




          SizedBox(
              height: height*0.75,
              child: Image.asset('assets/boy.png',height: height,fit: BoxFit.fitHeight,)),



          //Hair Section
          Positioned(
              top: height*0.08,
              left: width*0.18,


              child: GestureDetector(
                onTap: (){
                  setState(() {

                    hair=true;

                    provider.updatePhysicalAnswer(widget.index,"الشعر");
                  });
                },
                child: Container(
                  width:220,
                  height: 60,
                  decoration: BoxDecoration(
                    color: hair ? activeColor :initColor,
                    borderRadius: BorderRadius.circular(5),
                  ),child: Center(child: Text(" الشعر ",style: TextStyle(color:hair ? textColor : initColor, ))),),
              )),







          //right hand










        ],
      ),
    );
  }
}
