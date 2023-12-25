import 'package:flutter/material.dart';
import 'package:orthophonienewversion/familly-info/familly-info.dart';
import 'package:orthophonienewversion/model/pregrancy-step3-model.dart';
import 'package:orthophonienewversion/pages/Creation/childDev/child-dev-page1.dart';
import 'package:orthophonienewversion/provider/save-date-provider.dart';
import 'package:orthophonienewversion/utils/app-navigator.dart';
import 'package:orthophonienewversion/utils/app-toast.dart';
import 'package:orthophonienewversion/utils/appTextField.dart';
import 'package:orthophonienewversion/utils/common.dart';
import 'package:orthophonienewversion/utils/config.dart';
import 'package:provider/provider.dart';
class PregrencyStep4 extends StatefulWidget {
  const PregrencyStep4({super.key});

  @override
  State<PregrencyStep4> createState() => _PregrencyStep4State();
}

class _PregrencyStep4State extends State<PregrencyStep4> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  double _sliderValue = 0.0;
  double _sliderValue1 = 0.0;
  bool isRemember = true;
  String? firstChoice;
  String? secondChoice;
  String? thirdChoice;
  bool isTrue1=false;
  bool isNo1=false;

  bool isTrue2=false;
  bool isNo2=false;

  bool isTrue3=false;
  bool isNo3=false;
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
        child: Form(
          key: _formKey,
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
                        radius: 70,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage("assets/preg3.png"),
                      ),
                    ),

                    //Center(child: Image.asset("assets/onboarding1.png",height:height*0.4 ,width: width*0.6,)),
                    Center(child: const  Text("مرحلة بعد الولادة",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22 ,fontFamily: 'myriadBold' ),)),
                    const SizedBox(height: 5,),

                    Center(child: Text("لتجربة جيدة قم بإدخال كل المعلومات",style: TextStyle(color: Colors.grey.withOpacity(0.8),fontSize: 12,fontFamily: 'myriad'  ),)),
                    const SizedBox(height: 5,),



                    Padding(
                      padding:  EdgeInsets.only(left: 5.0,right: 5.0),
                      child: Text(_sliderValue ~/ 1 == 0 ?"  وزن الطفل؟  " :"  وزن الطفل kg ${_sliderValue ~/ 1} ",style: TextStyle(fontSize: 14,fontFamily: 'myriadBold'),),
                    ),

                    Slider(
                      value: _sliderValue,
                      min: 0.0,
                      max: 5.0,
                      onChanged: (value) {
                        setState(() {
                          _sliderValue = value;
                        });
                      },
                    ),
                    const Padding(
                      padding:  EdgeInsets.only(left: 8.0,right: 8.0,bottom: 5),
                      child: Text("هل صرخ مباشرة ؟",style: TextStyle(fontSize: 11,fontFamily: 'myriadBold'),),
                    ),
                    const SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              isTrue3=!isTrue3;
                              isNo3=false;

                              thirdChoice= "نعم";

                            });
                          },
                          child: Container(
                            width: 170,
                            height:40,
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
                              thirdChoice="لا";

                            });
                          },
                          child: Container(
                            width: 170,
                            height:40,
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
                    const SizedBox(height: 15,),
                    const Padding(
                      padding:  EdgeInsets.only(left: 8.0,right: 8.0,bottom: 5),
                      child: Text("هل تعرض لنقص في ؟",style: TextStyle(fontSize: 11,fontFamily: 'myriadBold'),),
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
                              secondChoice= "نعم";
                            });
                          },
                          child: Container(
                            width: 170,
                            height:40,
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
                            child: Center(child: Text("نعم",style: TextStyle(color:!isTrue2? Colors.black:Colors.white, ),)),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              isNo2=!isNo2;
                              isTrue2=false;

                              secondChoice="لا";
                            });
                          },
                          child: Container(
                            width: 170,
                            height:40,
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
                            child: Center(child: Text("لا",style: TextStyle(color:!isNo2? Colors.black:Colors.white,),)),
                          ),
                        )
                      ],
                    ),

                    const SizedBox(height: 20,),
                    const Padding(
                      padding:  EdgeInsets.only(left: 8.0,right: 8.0,bottom: 5),
                      child: Text("هل كان بحاجة إلى إنعاش   ؟",style: TextStyle(fontSize: 11,fontFamily: 'myriadBold'),),
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
                              firstChoice="نعم";

                            });
                          },
                          child: Container(
                            width: 170,
                            height:40,
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
                              firstChoice="لا";

                            });
                          },
                          child: Container(
                            width: 170,
                            height:40,
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
                    const SizedBox(height: 15,),


                    if(isTrue1)Padding(
                      padding:  EdgeInsets.only(left: 5.0,right: 5.0),
                      child: Text(_sliderValue1 ~/ 1 == 0 ?"   ما مدته؟  " :"   مدة الانعاش ${_sliderValue1 ~/ 1} ساعات ",style: TextStyle(fontSize: 14,fontFamily: 'myriadBold'),),
                    ),

                    if(isTrue1) Slider(
                      value: _sliderValue1,
                      min: 0.0,
                      max: 240.0,
                      onChanged: (value) {
                        setState(() {
                          _sliderValue1 = value;
                        });
                      },
                    ),
                    SizedBox(height: 15,),





                    const SizedBox(height: 5,),
                    GestureDetector(
                      onTap: (){
                        if(_formKey.currentState!.validate() && firstChoice!=null && secondChoice !=null && thirdChoice!=null ){
                          PregnancyStep3Model model= PregnancyStep3Model(


                            childWeight:  (_sliderValue ~/ 1).toInt(),
                            duration:(_sliderValue1 ~/ 1).toString(),
                            cry: firstChoice,
                            experienceDeficiency:secondChoice ,
                            needResuscitation: thirdChoice
                          );
                          provider.updatePregnancyStep3Model(model);

                          push(context: context, screen: ChildDevPage1());
                        }else{
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
                              child:const Center(child:  Text("التالي",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600,fontFamily: 'myriad'),)),
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
      ),

    );
  }
}
