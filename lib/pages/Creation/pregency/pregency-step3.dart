import 'package:flutter/material.dart';
import 'package:orthophonienewversion/homePage.dart';
import 'package:orthophonienewversion/model/pregnancy-step2-model.dart';
import 'package:orthophonienewversion/pages/Creation/pregency/pregency-step4.dart';
import 'package:orthophonienewversion/provider/save-date-provider.dart';
import 'package:orthophonienewversion/utils/app-navigator.dart';
import 'package:orthophonienewversion/utils/app-toast.dart';
import 'package:orthophonienewversion/utils/appTextField.dart';
import 'package:orthophonienewversion/utils/common.dart';
import 'package:orthophonienewversion/utils/config.dart';
import 'package:provider/provider.dart';

class PregrencyStep3 extends StatefulWidget {
  const PregrencyStep3({super.key});

  @override
  State<PregrencyStep3> createState() => _PregrencyStep3State();
}

class _PregrencyStep3State extends State<PregrencyStep3> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();


  bool isRemember = true;

  bool isTrue1=false;
  bool isNo1=false;
  bool? firstChoice;
  bool isTrue2=false;
  bool isNo2=false;
  bool? secondChoice;
  bool isTrue3=false;
  bool isNo3=false;
  bool? thirdChoice;
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    final provider=Provider.of<FormDataProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,

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
              decoration:const BoxDecoration(
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
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Center(
                    child: const CircleAvatar(
                      radius: 80,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage("assets/preg3.png"),
                    ),
                  ),

                  //Center(child: Image.asset("assets/onboarding1.png",height:height*0.4 ,width: width*0.6,)),
                  Center(child: const  Text("مرحلة الولادة",style: TextStyle(color: Colors.black,fontSize: 22 ,fontWeight: FontWeight.bold,fontFamily: 'myriadBold' ),)),
                  const SizedBox(height: 5,),

                  Center(child: Text("لتجربة جيدة قم بإدخال كل المعلومات",style: TextStyle(color: Colors.grey.withOpacity(0.8),fontSize: 12,fontFamily: 'myriad'  ),)),
                  const SizedBox(height: 35,),
                  const Padding(
                    padding:  EdgeInsets.only(left: 5.0,right: 5.0,bottom: 5),
                    child: Text("هل ولد في الوقت المحدد  ؟",style: TextStyle(fontSize: 14,fontFamily: 'myriadBold'),),
                  ),
                  const SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            isTrue1=!isTrue1;
                            isNo1=false;
                            firstChoice=true;

                          });
                        },
                        child: Container(
                          width: width*0.45,
                          height: height*0.05,

                          decoration: BoxDecoration(
                            color:!isTrue1? Colors.white:primaryColor,
                            borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1), // Shadow color
                                spreadRadius: 2, // How much the shadow should spread
                                blurRadius: 5, // How blurry the shadow should be
                                offset: Offset(0, 2), // Offset of the shadow
                              ),
                            ],
                          ),
                          child: Center(child: Text("نعم",style: TextStyle(color:!isTrue1? Colors.black:Colors.white, ),)),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            isNo1=!isNo1;
                            isTrue1=false;
                            firstChoice=false;

                          });
                        },
                        child: Container(
                          width: width*0.45,
                          height: height*0.05,
                          decoration: BoxDecoration(
                            color:!isNo1? Colors.white:primaryColor,
                            borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1), // Shadow color
                                spreadRadius: 2, // How much the shadow should spread
                                blurRadius: 5, // How blurry the shadow should be
                                offset: Offset(0, 2), // Offset of the shadow
                              ),
                            ],
                          ),
                          child: Center(child: Text("لا",style: TextStyle(color:!isNo1? Colors.black:Colors.white,),)),
                        ),
                      )
                    ],
                  ),

                  const SizedBox(height: 20,),
                  const Padding(
                    padding: const EdgeInsets.only(left: 5.0,right: 5.0,bottom: 5),
                    child: Text("الولادة طبيعية؟ ",style: TextStyle(fontSize: 14,fontFamily: 'myriadBold'),),
                  ),
                  const SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      GestureDetector(

                        onTap: (){
                          setState(() {
                            isTrue2=!isTrue2;
                            isNo2=false;
                            secondChoice=true;

                          });
                        },
                        child: Container(
                          width: width*0.45,
                          height: height*0.05,
                          decoration: BoxDecoration(
                            color:!isTrue2? Colors.white:primaryColor,
                            borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1), // Shadow color
                                spreadRadius: 2, // How much the shadow should spread
                                blurRadius: 5, // How blurry the shadow should be
                                offset: Offset(0, 2), // Offset of the shadow
                              ),
                            ],
                          ),
                          child: Center(child: Text("طبيعية",style: TextStyle(color:!isTrue2? Colors.black:Colors.white, ),)),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            isNo2=!isNo2;
                            isTrue2=false;
                            secondChoice=false;

                          });
                        },
                        child: Container(
                          width: width*0.45,
                          height: height*0.05,
                          decoration: BoxDecoration(
                            color:!isNo2? Colors.white:primaryColor,
                            borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1), // Shadow color
                                spreadRadius: 2, // How much the shadow should spread
                                blurRadius: 5, // How blurry the shadow should be
                                offset: Offset(0, 2), // Offset of the shadow
                              ),
                            ],
                          ),
                          child: Center(child: Text("قيصرية",style: TextStyle(color: !isNo2? Colors.black:Colors.white,),)),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20,),
                  const Padding(
                    padding:  EdgeInsets.only(left: 5.0,right: 5.0,bottom: 5),
                    child: Text("هل تم استعمال الملاقط؟",style: TextStyle(fontSize: 14,fontFamily: 'myriadBold'),),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            isTrue3=!isTrue3;
                            isNo3=false;
                            thirdChoice=true;

                          });
                        },
                        child: Container(
                          width: width*0.45,
                          height: height*0.05,
                          decoration: BoxDecoration(
                            color:!isTrue3? Colors.white:primaryColor,
                            borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1), // Shadow color
                                spreadRadius: 2, // How much the shadow should spread
                                blurRadius: 5, // How blurry the shadow should be
                                offset: Offset(0, 2), // Offset of the shadow
                              ),
                            ],
                          ),
                          child: Center(child: Text("نعم",style: TextStyle(color:!isTrue3? Colors.black:Colors.white, ),)),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            isNo3=!isNo3;
                            isTrue3=false;
                            thirdChoice=false;

                          });
                        },
                        child: Container(
                          width: width*0.45,
                          height: height*0.05,
                          decoration: BoxDecoration(
                            color:!isNo3? Colors.white:primaryColor,
                            borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1), // Shadow color
                                spreadRadius: 2, // How much the shadow should spread
                                blurRadius: 5, // How blurry the shadow should be
                                offset: Offset(0, 2), // Offset of the shadow
                              ),
                            ],
                          ),
                          child: Center(child: Text("لا",style: TextStyle(color:!isNo3? Colors.black:Colors.white,),)),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20,),

                  GestureDetector(
                    onTap: (){
                      if(  firstChoice!=null && secondChoice !=null && thirdChoice!=null )
                        {


                          PregnancyStep2Model model= PregnancyStep2Model(

                            birth_on_schedule: firstChoice,
                            is_normal_birth: secondChoice,
                            is_forceps_used: thirdChoice,

                          );
                          provider.updatePregnancyStep2Model(model);
                          provider.birthDetails(model, context);
                          if (provider.isLoading) {
                            showDialog(
                              barrierColor: Colors.transparent,
                              context: context,
                              barrierDismissible: false,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  elevation: 0,
                                  backgroundColor: Colors.transparent,
                                  content: Container(
                                    padding: EdgeInsets.all(16.0),
                                    color: Colors.white.withOpacity(0.0),
                                    child: Center(child: CircularProgressIndicator(color: primaryColor)),
                                  ),
                                );
                              },
                            );
                          }




                        }
                      else{
                        ToastHelper.showToast(msg: "يرجى إدخال المعلومات", backgroundColor:pink);
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                          height: 50,
                          width: width,
                          child:Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: primaryColor,

                            ),
                            child: Center(child: const Text("التالي",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600,fontFamily: 'myriad'),)),
                          )
                      ),
                    ),
                  ),



                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}
