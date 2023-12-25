
import 'package:flutter/material.dart';
import 'package:orthophonienewversion/provider/save-date-provider.dart';
import 'package:orthophonienewversion/utils/config.dart';
import 'package:provider/provider.dart';
class MouthDetection extends StatefulWidget {
  int index;
  MouthDetection({super.key,required this.index});

  @override
  State<MouthDetection> createState() => _MouthDetectionState();
}

class _MouthDetectionState extends State<MouthDetection> {

  bool mouth=false;


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

          !mouth ? Center(child: Text("وينهم  الفم",
            style: TextStyle(fontSize: 20,color: primaryColor,fontWeight: FontWeight.bold),)):

          Center(child: Text("إجابة صحيحة",
            style: TextStyle(fontSize: 20,color: Colors.green,fontWeight: FontWeight.bold),)),




          SizedBox(
              height: height*0.75,
              child: Image.asset('assets/boy.png',height: height,fit: BoxFit.fitHeight,)),




          Positioned(
              top: height*0.22,
              left: width*0.45,


              child: GestureDetector(
                onTap: (){
                  setState(() {
                    mouth=true;

                    provider.updatePhysicalAnswer(widget.index, "الفم");

                  });
                },
                child: Container(
                  height: 45,
                  width: 70,
                  decoration: BoxDecoration(
                    color: mouth ? activeColor : initColor,
                    borderRadius: BorderRadius.circular(5),
                  ),child: Center(child: Text(" الفم  ",style: TextStyle(color:mouth ? textColor : initColor, ))),),
              )),

          //Hair Section








        ],
      ),
    );
  }
}
