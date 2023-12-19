import 'package:flutter/material.dart';
import 'package:orthophonienewversion/pages/pregency/pregency-step3.dart';
import 'package:orthophonienewversion/utils/app-navigator.dart';
import 'package:orthophonienewversion/utils/app-toast.dart';
import 'package:orthophonienewversion/utils/appTextField.dart';
import 'package:orthophonienewversion/utils/common.dart';
import 'package:orthophonienewversion/utils/config.dart';

class PregrencyStep2 extends StatefulWidget {
  const PregrencyStep2({super.key});

  @override
  State<PregrencyStep2> createState() => _PregrencyStep2State();
}

class _PregrencyStep2State extends State<PregrencyStep2> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  FocusNode controller1Focus = FocusNode();
  FocusNode controller2Focus = FocusNode();
  double _sliderValue = 0.0;
  bool isRemember = true;
  bool isTrue1=false;
  bool isNo1=false;

  String? firstChoice;

  bool isTrue2=false;
  bool isNo2=false;

  String? secondChoice;

  bool isTrue3=false;
  bool isNo3=false;

  String? thirdChoice;
  bool isTrue4=false;
  bool isNo4=false;

  String? fourthChoice;


  String? fifthChoice;
  bool isTrue5=false;
  bool isNo5=false;
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;

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
        child: Center(
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [



                    //Center(child: Image.asset("assets/onboarding1.png",height:height*0.4 ,width: width*0.6,)),
                    Center(child: const  Text("مرحلة الحمل ",style: TextStyle(color: Colors.black,fontSize: 22 ,fontWeight: FontWeight.bold,fontFamily: 'myriadBold' ),)),
                    const SizedBox(height: 5,),

                    Center(child: Text("لتجربة جيدة قم بإدخال كل المعلومات",style: TextStyle(color: Colors.grey.withOpacity(0.8),fontSize: 12,fontFamily: 'myriad'  ),)),
                    const SizedBox(height: 25,),
                    const Padding(
                      padding:  EdgeInsets.only(left: 5.0,right: 5.0,bottom: 5),
                      child: Text("هل الحمل مرغوب فيه  ؟",style: TextStyle(fontSize: 14,fontFamily: 'myriadBold'),),
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

                    const SizedBox(height: 20,),
                    const Padding(
                      padding: const EdgeInsets.only(left: 5.0,right: 5.0,bottom: 5),
                      child: Text("هل تناولت الام أدوية ؟",style: TextStyle(fontSize: 14,fontFamily: 'myriadBold'),),
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
                              secondChoice="نعم";

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
                    const Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 5.0,bottom: 0,top: 15),
                      child: Text("ماهي؟",style: TextStyle(fontSize: 14,fontFamily: 'myriadBold'),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8.0,bottom: 8.0),

                      child: AppTextField(
                        textFieldType:TextFieldType.NAME,
                        controller: controller1,
                        focus: controller1Focus,
                        nextFocus: controller2Focus,
                        title: '',
                        errorThisFieldRequired: "This Field is required",
                        decoration: inputDecoration(context, labelText: "",),
                        //suffix: Icon(Icons.code,size: 17,color: Colors.grey.withOpacity(0.8),),
                        autoFillHints: [AutofillHints.email],
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Padding(
                      padding:  EdgeInsets.only(left: 5.0,right: 5.0,bottom: 5),
                      child: Text("هل كان عدم توافق عامل الريزوس؟",style: TextStyle(fontSize: 14,fontFamily: 'myriadBold'),),
                    ),
                    const SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              isTrue5=!isTrue5;
                              isNo5=false;
                              fifthChoice="نعم";

                            });
                          },
                          child: Container(
                            width: 170,
                            height:40,
                            decoration: BoxDecoration(
                              color:!isTrue5? Colors.white:primaryColor,
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
                            child: Center(child: Text("نعم",style: TextStyle(color:!isTrue5? Colors.black:Colors.white, ),)),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              isNo5=!isNo5;
                              isTrue5=false;
                              fifthChoice="لا";
                            });
                          },
                          child: Container(
                            width: 170,
                            height:40,
                            decoration: BoxDecoration(
                              color:!isNo5? Colors.white:primaryColor,
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
                            child: Center(child: Text("لا",style: TextStyle(color:!isNo5? Colors.black:Colors.white,),)),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 15,),
                     Padding(
                      padding:  EdgeInsets.only(left: 5.0,right: 5.0),
                      child: Text(_sliderValue ~/ 1 == 0 ?"  عمر الام أثناء الحمل؟  " :"  عمر الام أثناء الحمل؟ ${_sliderValue ~/ 1} ",style: TextStyle(fontSize: 14,fontFamily: 'myriadBold'),),
                    ),

                    Slider(
                      value: _sliderValue,
                      min: 0.0,
                      max: 40.0,
                      onChanged: (value) {
                        setState(() {
                          _sliderValue = value;
                        });
                      },
                    ),
                    const SizedBox(height: 20,),
                    const Padding(
                      padding:  EdgeInsets.only(left: 5.0,right: 5.0,bottom: 5),
                      child: Text("هل الحمل طبيعي ؟",style: TextStyle(fontSize: 14,fontFamily: 'myriadBold'),),
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
                              thirdChoice="نعم";

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
                    const SizedBox(height: 20,),
                    const Padding(
                      padding:  EdgeInsets.only(left: 5.0,right: 5.0,bottom: 5),
                      child: Text("هل أصيبت الام بأمراض معينة أثناء الحمل  ؟",style: TextStyle(fontSize: 14,fontFamily: 'myriadBold'),),
                    ),
                    const SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              isTrue4=!isTrue4;
                              isNo4=false;
                              fourthChoice="نعم";

                            });
                          },
                          child: Container(
                            width: 170,
                            height:40,
                            decoration: BoxDecoration(
                              color:!isTrue4? Colors.white:primaryColor,
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
                            child: Center(child: Text("نعم",style: TextStyle(color:!isTrue4? Colors.black:Colors.white, ),)),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              isNo4=!isNo4;
                              isTrue4=false;
                              fourthChoice="لا";

                            });
                          },
                          child: Container(
                            width: 170,
                            height:40,
                            decoration: BoxDecoration(
                              color:!isNo4? Colors.white:primaryColor,
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
                            child: Center(child: Text("لا",style: TextStyle(color:!isNo4? Colors.black:Colors.white,),)),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 5,),
                      const Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 5.0,top: 10),
                      child: Text("الحالة النفسية للام خلال هذه الفترة",style: TextStyle(fontSize: 14,fontFamily: 'myriadBold'),),
                    ),
                    AppTextField(
                      textFieldType: TextFieldType.NAME,
                      controller: controller2,
                      focus: controller2Focus,
                      title: '',
                      errorThisFieldRequired: "This Field is required",
                      decoration: inputDecoration(context, labelText: "",),
                      //suffix: Icon(Icons.code,size: 17,color: Colors.grey.withOpacity(0.8),),
                      autoFillHints: [AutofillHints.email],
                    ),



                    const SizedBox(height: 5,),
                    GestureDetector(
                      onTap: (){
                        if(_formKey.currentState!.validate() && firstChoice!=null && secondChoice !=null && thirdChoice!=null && fourthChoice!=null){
                          push(context: context, screen: PregrencyStep3());
                        }else{
                          ToastHelper.showToast(msg: "يرجى إدخال المعلومات", backgroundColor:pink);
                        }

                        //    push(context: context, screen:  push(context: context, screen: PregrencyStep2());());
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
      ),

    );
  }
}
