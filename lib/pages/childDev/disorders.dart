import 'package:flutter/material.dart';
import 'package:orthophonienewversion/homePage.dart';
import 'package:orthophonienewversion/pages/childDev/child-dev-page1.dart';
import 'package:orthophonienewversion/utils/app-navigator.dart';
import 'package:orthophonienewversion/utils/app-toast.dart';
import 'package:orthophonienewversion/utils/appTextField.dart';
import 'package:orthophonienewversion/utils/common.dart';
import 'package:orthophonienewversion/utils/config.dart';
class ChildDevPage2 extends StatefulWidget {
  const ChildDevPage2({super.key});

  @override
  State<ChildDevPage2> createState() => _ChildDevPage1State();
}

class _ChildDevPage1State extends State<ChildDevPage2> {

  String? firstChoice;
  String? secondChoice;
  String? thirdChoice;

  TextEditingController sittingAge = TextEditingController();
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3= TextEditingController();
  TextEditingController controller4 = TextEditingController();
  TextEditingController controller5 = TextEditingController();
  TextEditingController controller6 = TextEditingController();
  TextEditingController controller8 = TextEditingController();
  TextEditingController controller7 = TextEditingController();
  TextEditingController walkingAge = TextEditingController();
  TextEditingController personalHygieneAcquisition = TextEditingController();

  double _sliderValue = 0.0;
  double _sliderValue1 = 0.0;




  FocusNode sittingAgeFocus = FocusNode();
  FocusNode crawlingAgeFocus = FocusNode();
  FocusNode walkingAgeFocus = FocusNode();
  FocusNode personalHygieneAcquisitionFocus = FocusNode();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool isTrue0=false;
  bool  isNo0=false;


  bool isTrue1=false;
  bool  isNo1=false;

  bool isTrue2=false;
  bool  isNo2=false;

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

        leading: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: primaryColor,
            ),
            child:GestureDetector(
                onTap: (){Navigator.pop(context);},
                child: const Icon(Icons.arrow_back,size: 17,)),
          ),
        ),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                children: [

                  const  Text("الأمراض المكتسبة",style: TextStyle(color: Colors.black,fontSize: 20 ,fontFamily: 'myriadBold' ),),
                  const SizedBox(height: 5,),


          Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: AppTextField(
                      textFieldType: TextFieldType.NAME,
                      controller: sittingAge,
                      title: 'التهاب السحايا ',


                      focus: sittingAgeFocus,
                      nextFocus: crawlingAgeFocus,
                      errorThisFieldRequired: "This Field is required",
                      decoration: inputDecoration(context, labelText: "التهاب السحايا"),
                      // suffix: Icon(Icons.email,size: 17,color: Colors.grey.withOpacity(0.8),),
                      autoFillHints: [AutofillHints.email],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),

                    child: AppTextField(
                      textFieldType:TextFieldType.NAME,
                      controller: controller1,
                      focus: crawlingAgeFocus,

                      title: ' التهاب الدماغ',
                      errorThisFieldRequired: "This Field is required",
                      decoration: inputDecoration(context, labelText: "التهاب الدماغ",),
                      //suffix: Icon(Icons.code,size: 17,color: Colors.grey.withOpacity(0.8),),
                      autoFillHints: [AutofillHints.email],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: AppTextField(
                      textFieldType: TextFieldType.NAME,
                      controller: controller2,
                      title: 'متى تحدث له النوبات',

                      focus: walkingAgeFocus,
                      nextFocus: sittingAgeFocus,
                      errorThisFieldRequired: "This Field is required",
                      decoration: inputDecoration(context, labelText: "متى تحدث له النوبات"),
                      // suffix: Icon(Icons.email,size: 17,color: Colors.grey.withOpacity(0.8),),
                      autoFillHints: [AutofillHints.email],
                    ),
                  ),

                  SizedBox(height: 10,),
                  Align(
                    alignment: Alignment.topRight,
                    child: const Padding(
                      padding:  EdgeInsets.only(left: 10.0,right: 10.0,bottom: 5),
                      child: Text("هل الطفل كثير الإصابة بالتهاب اللوزتين و الجيوب الأنفية والتهاب الاذن",style: TextStyle(fontSize: 11,fontFamily: 'myriadBold'),),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            isTrue0=!isTrue0;
                            isNo0=false;
                            firstChoice="نعم";

                          });
                        },
                        child: Container(
                          width: 170,
                          height:40,
                          decoration: BoxDecoration(
                            color:!isTrue0? Colors.white:primaryColor,
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
                          child: Center(child: Text("نعم",style: TextStyle(color:!isTrue0? Colors.black:Colors.white, ),)),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            isNo0=!isNo0;
                            isTrue0=false;
                            firstChoice="لا";
                          });
                        },
                        child: Container(
                          width: 170,
                          height:40,
                          decoration: BoxDecoration(
                            color:!isNo0? Colors.white:primaryColor,
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
                          child: Center(child: Text("لا",style: TextStyle(color:!isNo0? Colors.black:Colors.white,),)),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Align(
                    alignment: Alignment.topRight,
                    child: const Padding(
                      padding:  EdgeInsets.only(left: 10.0,right: 10.0,bottom: 5),
                      child: Text("هل أخذ كل التطعيمات بانتظام ",style: TextStyle(fontSize: 11,fontFamily: 'myriadBold'),),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            isTrue1=!isTrue1;
                            isNo1=false;
                            secondChoice="نعم";

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

                            secondChoice="لا";
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
                  SizedBox(height: 10,),
                  Align(
                    alignment: Alignment.topRight,
                    child: const Padding(
                      padding:  EdgeInsets.only(left: 10.0,right: 10.0,bottom: 5),
                      child: Text("هل قام بكل الفحوص المطلوب",style: TextStyle(fontSize: 11,fontFamily: 'myriadBold'),),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            isTrue2=!isTrue2;
                            isNo2=false;
                            thirdChoice="نعم";

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
                            thirdChoice="لا";
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
                  const SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: AppTextField(
                      textFieldType: TextFieldType.NAME,
                      controller: controller8,
                      title: 'ماهي الفحوصات التي قام بها',

                      errorThisFieldRequired: "This Field is required",
                      decoration: inputDecoration(context, labelText: "ماهي الفحوصات التي قام بها"),
                      // suffix: Icon(Icons.email,size: 17,color: Colors.grey.withOpacity(0.8),),
                      autoFillHints: [AutofillHints.email],
                    ),
                  ),

                  GestureDetector(
                    onTap: (){

                      print(firstChoice);

                      if(formKey.currentState!.validate() && firstChoice!=null && secondChoice!=null && thirdChoice!=null ){
                        push(context: context, screen: HomePage());
                      }else{
                        ToastHelper.showToast(msg: "يرجى إدخال المعلومات", backgroundColor:pink);
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SizedBox(
                          height: 50,
                          width: width,
                          child:Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: primaryColor,

                            ),
                            child:const Center(child:  Text("حفظ",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700,fontFamily: 'myriad'),)),
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
