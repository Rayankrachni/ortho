import 'package:flutter/material.dart';
import 'package:orthophonienewversion/pages/Creation/pregency/pregency-step1.dart';
import 'package:orthophonienewversion/pages/Creation/pregency/pregency-step2.dart';
import 'package:orthophonienewversion/pages/Creation/pregency/pregency-step3.dart';
import 'package:orthophonienewversion/pages/Creation/pregency/pregency-step4.dart';
import 'package:orthophonienewversion/utils/app-navigator.dart';
import 'package:orthophonienewversion/utils/config.dart';
import 'package:orthophonienewversion/utils/dynamic-container.dart';

class PregancyMainPage extends StatefulWidget {
  const PregancyMainPage({super.key});

  @override
  State<PregancyMainPage> createState() => _PregancyMainPageState();
}

class _PregancyMainPageState extends State<PregancyMainPage> {
  List<Color> myColors=[Color(0xfff5efd6),Color(0xffdbe9db),Color(0xffe2e0ee),Color(0xfff566dc).withOpacity(0.1)];
  List<String> myTitle=["مرحلة قبل الحمل","مرحلة الحمل","مرحلة الولادة","مرحلة بعد الولادة"];
//  List<Color> myTextColors=[greenColor,greenColor,greenColor,Color]s.pinkAccent;
  List<String> myImages=["assets/pregancy1.png","assets/pregancy2.png","assets/pregancy1.png","assets/pregancy2.png"];

  List<Widget> classes=[PregrencyStep1(),PregrencyStep2(),PregrencyStep3(),PregrencyStep4()];
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,


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
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: width,

                decoration:const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  )
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 15,),
                    const  Text("المعلومات العامة",style: TextStyle(color: primaryColor,fontSize: 30 ,fontFamily: 'myriadBold' ),),
                    const SizedBox(height: 5,),

                    Text("متابعة الحالة الصحية للأم خلال فترة الحمل",style: TextStyle(color: Colors.grey.withOpacity(0.8),fontSize: 17,fontFamily: 'myriad'  ),),
                    const SizedBox(height: 5,),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Adjust the cross-axis count as needed
                      crossAxisSpacing: 8.0, // Adjust the spacing between items horizontally
                      mainAxisSpacing: 8.0, // Adjust the spacing between items vertically
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      // Replace the following line with the widget you want to build for each item
                      return GestureDetector(
                        onTap: (){
                          //push(context: context, screen: classes[index]);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: DynamicContainer(childWidget:
                           Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(myImages[index],height:height*0.09,),
                              const SizedBox(height: 8,),
                              Text(myTitle[index],style: TextStyle(
                                fontFamily: "myriad",
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: primaryColor
                              ),),


                            ],//myColors[index]
                          ), backgroundColor:Colors.white),
                        ),
                      );
                    },
                    itemCount: 4, // Provide the number of items in your data
                  ),
              ),
              SizedBox(height: 40,),
              Text("لتقييم  الحالة الصحية للام اضغط على الزر ادناه",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 12),),
              SizedBox(height: 10,),

              GestureDetector(
                onTap: (){
                  push(context: context, screen: PregrencyStep2());
                },
                child: Container(
                  width: width*0.9,
                  height: 50,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient:const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [pinklight,pink,Colors.pink],

                    ),
                  ),
                  child:const Center(child: Text("متابعة",style: TextStyle(color: Colors.white,fontSize: 17),)),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
