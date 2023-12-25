


import 'package:flutter/material.dart';
import 'package:orthophonienewversion/pages/Creation/Primary%20Achievements/envirnmentSound.dart';
import 'package:orthophonienewversion/utils/app-navigator.dart';
import 'package:orthophonienewversion/utils/app-toast.dart';
import 'package:orthophonienewversion/utils/config.dart';

import '../../../utils/dynamic-container.dart';



class PlacePreposition   extends StatefulWidget {



  @override
  _PlacePrepositionState createState() => _PlacePrepositionState();
}

class _PlacePrepositionState extends State<PlacePreposition > {
   List<Color> myColors=[Color(0xfff5efd6),Color(0xffdbe9db),Color(0xffe2e0ee),Color(0xfff566dc).withOpacity(0.1),];
  List<String> prePosition=["امام","فوق ","خلف","تحت"," بجانب"];

  List<String> myImages=["assets/preposition/on.png","assets/preposition/inFrontOf.png","assets/preposition/beside.png","assets/preposition/behind.png","assets/preposition/under.png"];

 // final List<Widget> classes = [DisplayGeneralInfo(), FamilyInfoDisplay(), PregnancyStep12(), DisplayPregnancyStep3(),DisplayLanguageDev(),DisplayEmotionalGrowth(),DisplayAuditorySide(),DisplayDiseasesNervousSystem()];
  int currentPageIndex = 0;


  List<String> answers =['','','','',''];
  List<List<bool>> isChecked =[[false,false,false,false,false],[false,false,false,false,false],[false,false,false,false,false],[false,false,false,false,false],[false,false,false,false,false]];




  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      appBar: AppBar(

        title: Text('الجانبية',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
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
                color: primaryColor
              ),
              child:const Icon(Icons.arrow_back,size: 17,color: Colors.white,),
            ),
          ),
        ),


      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: prePosition.length,

              physics: NeverScrollableScrollPhysics(),
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
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            SizedBox(height: 50,),


            SizedBox(
              height: 200,
              width: 200,
              child: Image.asset(myImages[index]),
            ),


            SizedBox(height: 40,),




            Row(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 GestureDetector(
                   onTap: (){
                     setState(() {
                       print("------");

                       if(isChecked[index][0]==false){
                         isChecked[index][0]=true;
                         isChecked[index][1]=false;
                         isChecked[index][2]=false;
                         isChecked[index][3]=false;
                         isChecked[index][4]=false;
                         answers[index]=prePosition[0];

                       }

                     });

                   },
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                         height:40,
                         width: 150,
                         decoration: BoxDecoration(
                           //
                           color: isChecked[index][0]?primaryColor: Colors.white,
                           borderRadius: BorderRadius.circular(10),
                           boxShadow: [
                             BoxShadow(
                               color: Colors.grey.withOpacity(0.2),
                               spreadRadius: 2,
                               blurRadius: 5,
                               offset: Offset(0, 2),
                             ),
                           ],
                         ),

                         child:   Center(
                           child: Text(prePosition[0],style: TextStyle(
                               fontFamily: "myriad",
                               fontWeight: FontWeight.w600,
                               fontSize: 14,
                               color:isChecked[index][0]?Colors.white: Colors.black,
                           ),),
                         )
                     ),
                   ),
                 ),
                 GestureDetector(
                   onTap: (){
                     print("---++++---");
                     setState(() {
                       if(isChecked[index][1]==false){
                         isChecked[index][1]=true;
                         isChecked[index][0]=false;
                         isChecked[index][2]=false;
                         isChecked[index][3]=false;
                         isChecked[index][4]=false;
                         answers[index]=prePosition[1];
                       }

                     });

                   },
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                         height:40,
                         width: 150,
                         decoration: BoxDecoration(
                           color:isChecked[index][1]?primaryColor: Colors.white,
                           borderRadius: BorderRadius.circular(10),
                           boxShadow: [
                             BoxShadow(
                               color: Colors.grey.withOpacity(0.2),
                               spreadRadius: 2,
                               blurRadius: 5,
                               offset: Offset(0, 2),
                             ),
                           ],
                         ),
                         child:Center(
                           child: Text(prePosition[1],style: TextStyle(
                               fontFamily: "myriad",
                               // answers[index]=prePosition[0];
                               fontWeight: FontWeight.w600,
                               fontSize: 14,
                               color: isChecked[index][1]?Colors.white: Colors.black,
                           ),),
                         )
                     ),
                   ),
                 ),
               ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    print("======");
                    setState(() {
                      if(isChecked[index][2]==false){
                        isChecked[index][2]=true;
                        isChecked[index][1]=false;
                        isChecked[index][0]=false;
                        isChecked[index][3]=false;
                        isChecked[index][4]=false;
                        answers[index]=prePosition[2];

                      }

                    });

                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height:40,
                        width: 150,
                        decoration: BoxDecoration(
                          color:isChecked[index][2]?primaryColor: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                     //
                        child:   Center(
                          child: Text(prePosition[2],style: TextStyle(
                              fontFamily: "myriad",
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: isChecked[index][2]? Colors.white: Colors.black,
                          ),),
                        )
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      if(isChecked[index][3]==false){
                        isChecked[index][3]=true;
                        isChecked[index][1]=false;
                        isChecked[index][2]=false;
                        isChecked[index][0]=false;
                        isChecked[index][4]=false;
                        answers[index]=prePosition[3];
                      }

                    });

                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height:40,
                        width: 150,
                        decoration: BoxDecoration(
                          color:isChecked[index][3]?primaryColor: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),//answers[index]=prePosition[0];
                        child:   Center(
                          child: Text(prePosition[3],style: TextStyle(
                              fontFamily: "myriad",
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: isChecked[index][3]?Colors.white: Colors.black,
                          ),),
                        )
                    ),
                  ),
                ),
              ],
            ),

            GestureDetector(
              onTap: (){
                setState(() {
                  if(isChecked[index][4]==false){
                    isChecked[index][4]=true;
                    isChecked[index][1]=false;
                    isChecked[index][2]=false;
                    isChecked[index][0]=false;
                    isChecked[index][3]=false;
                    answers[index]=prePosition[4];
                  }

                });

              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                    height:40,
                    width: MediaQuery.of(context).size.width*0.8,
                    decoration: BoxDecoration(
                      color:isChecked[index][4]?primaryColor: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child:   Center(
                      child: Text(prePosition[4],
                        style: TextStyle(
                          fontFamily: "myriad",
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: isChecked[index][4]?Colors.white: Colors.black,
                      ),),
                    )
                ),
              ),

            ),
           GestureDetector(
              onTap: (){
                if(answers[index]!=''){

                  if(index!=4){
                    navigateToNextPage();
                  }else{
                    push(context: context, screen: EnvironmentSoundPage());
                  }

                 //
                 // ToastHelper.showToast(msg: "next Index", backgroundColor: pinklight);
                }else{
                  ToastHelper.showToast(msg: "اختر إجابة", backgroundColor: pinklight);
                }


              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                    height:50,
                    width: MediaQuery.of(context).size.width*0.8,
                    child:Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient:const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [pinklight,pink,Colors.pink],

                        ),
                      ),
                      child: const Center(child:  Text("التالي",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600,fontFamily: 'myriad'),)),
                    )
                ),
              ),
            ),
            //EnvironmentSoundPage

          ],
        ),
      ),
    );
  }

  void navigateToNextPage() {
    if (currentPageIndex < prePosition.length - 1) {
      setState(() {
        currentPageIndex++;
      });
    }
  }

   void navigateToPreviousPage() {
     if (currentPageIndex > 0) {
       setState(() {
         currentPageIndex--;
       });
     }
   }
}