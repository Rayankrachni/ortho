import 'package:flutter/material.dart';
import 'package:orthophonienewversion/model/deiseases-model.dart';
import 'package:orthophonienewversion/pages/Creation/Primary%20Achievements/PlacePreposition.dart';
import 'package:orthophonienewversion/provider/save-date-provider.dart';
import 'package:orthophonienewversion/utils/app-navigator.dart';
import 'package:orthophonienewversion/utils/app-toast.dart';
import 'package:orthophonienewversion/utils/appTextField.dart';
import 'package:orthophonienewversion/utils/common.dart';
import 'package:orthophonienewversion/utils/config.dart';
import 'package:provider/provider.dart';
class ChildDevPage2 extends StatefulWidget {
  const ChildDevPage2({super.key});

  @override
  State<ChildDevPage2> createState() => _ChildDevPage1State();
}

class _ChildDevPage1State extends State<ChildDevPage2> {

  String? firstChoice;
  String? secondChoice;
  String? thirdChoice;

  TextEditingController meningitis = TextEditingController();
  TextEditingController encephalitis = TextEditingController();
  TextEditingController developEpilepsyTime = TextEditingController();
  TextEditingController seizuresOccurTime= TextEditingController();
  TextEditingController undergoneRegarding = TextEditingController();
  TextEditingController epilepsy = TextEditingController();





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
    final provider=Provider.of<FormDataProvider>(context);
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

                  const  Text("امراض الجهاز العصبي",style: TextStyle(color: Colors.black,fontSize: 20 ,fontFamily: 'myriadBold' ),),
                  const SizedBox(height: 5,),


                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: AppTextField(
                      textFieldType: TextFieldType.NAME,
                      controller: meningitis,
                      title: 'التهاب السحايا ',

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
                      controller: encephalitis,

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
                      controller: epilepsy,
                      title: 'الصرع ',

                      errorThisFieldRequired: "This Field is required",
                      decoration: inputDecoration(context, labelText: "الصرع "),
                      // suffix: Icon(Icons.email,size: 17,color: Colors.grey.withOpacity(0.8),),
                      autoFillHints: [AutofillHints.email],
                    ),
                  ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 180,
                        child:  Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: AppTextField(
                            textFieldType: TextFieldType.NAME,
                            controller: developEpilepsyTime,
                            title: 'متى أصيب بالصرع؟',

                            errorThisFieldRequired: "This Field is required",
                            decoration: inputDecoration(context, labelText: "متى أصيب بالصرع؟"),
                            // suffix: Icon(Icons.email,size: 17,color: Colors.grey.withOpacity(0.8),),
                            autoFillHints: [AutofillHints.email],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 180,
                        child:    Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: AppTextField(
                            textFieldType: TextFieldType.NAME,
                            controller: seizuresOccurTime,
                            title: 'متى تحدث له النوبات',

                            errorThisFieldRequired: "This Field is required",
                            decoration: inputDecoration(context, labelText: "متى تحدث له النوبات"),
                            // suffix: Icon(Icons.email,size: 17,color: Colors.grey.withOpacity(0.8),),
                            autoFillHints: [AutofillHints.email],
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 10,),
                  Align(
                    alignment: Alignment.topRight,
                    child: const Padding(
                      padding:  EdgeInsets.only(left: 10.0,right: 10.0,bottom: 5),
                      child: Text("هل الطفل كثير الإصابة بالتهاب اللوزتين و الجيوب الأنفية والتهاب الاذن؟",style: TextStyle(fontSize: 11,fontFamily: 'myriadBold'),),
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
                      child: Text("هل أخذ كل التطعيمات بانتظام ؟",style: TextStyle(fontSize: 11,fontFamily: 'myriadBold'),),
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
                  /*Align(
                    alignment: Alignment.topRight,
                    child: const Padding(
                      padding:  EdgeInsets.only(left: 10.0,right: 10.0,bottom: 5),
                      child: Text("هل قام بكل الفحوص المطلوب؟",style: TextStyle(fontSize: 11,fontFamily: 'myriadBold'),),
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
                  ),*/
                  const SizedBox(height: 10,),
                  if(isTrue2) Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: AppTextField(
                      textFieldType: TextFieldType.NAME,
                      controller: undergoneRegarding,
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

                      if(formKey.currentState!.validate() && firstChoice!=null && secondChoice!=null  ){
                        DiseaseModel model= DiseaseModel(
                          developEpilepsyTime:developEpilepsyTime.text ,
                          encephalitis:encephalitis.text ,
                          meningitis: meningitis.text,
                          hasTonsillitis:firstChoice ,
                          seizuresOccurTime:seizuresOccurTime.text ,
                          takeVaccinations:secondChoice ,
                          undergoneRegarding: undergoneRegarding.text,
                        );
                        provider.updateDiseaseModel(model);

                       //

                        push(context: context, screen: PlacePreposition());


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
