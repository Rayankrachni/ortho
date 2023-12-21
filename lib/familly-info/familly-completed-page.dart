
import 'package:flutter/material.dart';
import 'package:orthophonienewversion/model/complete-info-model.dart';
import 'package:orthophonienewversion/model/familly-info-model.dart';
import 'package:orthophonienewversion/model/family-info1-model.dart';
import 'package:orthophonienewversion/pages/childDev/child-dev-page3.dart';
import 'package:orthophonienewversion/pages/pregency/pregancy-main-page.dart';
import 'package:orthophonienewversion/provider/save-date-provider.dart';
import 'package:orthophonienewversion/utils/app-navigator.dart';
import 'package:orthophonienewversion/utils/app-toast.dart';
import 'package:orthophonienewversion/utils/appTextField.dart';
import 'package:orthophonienewversion/utils/common.dart';
import 'package:orthophonienewversion/utils/config.dart';
import 'package:provider/provider.dart';

class FamilyCompletedInfo extends StatefulWidget {

  final FamilyInfoPart1 familyInfo;
  const FamilyCompletedInfo({super.key,required this.familyInfo});

  @override
  State<FamilyCompletedInfo> createState() => _FamilyInfoState();
}

class _FamilyInfoState extends State<FamilyCompletedInfo> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  double _sliderValue = 0.0;
  double _sliderValue1 = 0.0;
  TextEditingController motherJob = TextEditingController();
  TextEditingController motherHealthReport = TextEditingController();
  TextEditingController siblingsHealth = TextEditingController();



  String? firstChoice;


  bool isTrue3=false;
  bool isNo3=false;


  String? secondChoice;


  bool bad=false;
  bool medium=false;
  bool good=false;


  bool isRemember = true;
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    final provider=Provider.of<FormDataProvider>(context);


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
            padding: const EdgeInsets.only(left:15.0,right: 15.0),
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
          key: formKey,
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [





                    Padding(
                      padding: const EdgeInsets.all(8.0),

                      child: AppTextField(
                        textFieldType: TextFieldType.NAME,
                        controller: motherJob,
                        title: 'مهنة الام',
                        errorThisFieldRequired: "This Field is required",
                        decoration: inputDecoration(context, labelText: "المهنة ",),
                        // suffix: Icon(Icons.code,size: 17,color: Colors.grey.withOpacity(0.8),),
                        autoFillHints: [AutofillHints.email],
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.all(8.0),

                      child: AppTextField(
                        textFieldType: TextFieldType.NAME,
                        controller: motherHealthReport,
                        title: 'سوابق الام الصحية',
                        errorThisFieldRequired: "This Field is required",
                        decoration: inputDecoration(context, labelText: "السوابق الصحية للعائلة",),
                        // suffix: Icon(Icons.code,size: 17,color: Colors.grey.withOpacity(0.8),),
                        autoFillHints: [AutofillHints.email],
                      ),
                    ),
                    const SizedBox(height: 5,),
                    const Align(
                      alignment: Alignment.topRight,
                      child: const Padding(
                        padding:  EdgeInsets.only(left: 8.0,right: 8.0,bottom: 5),
                        child: Text("هل توجد قرابة  بين الوالدين ؟",style: TextStyle(fontSize: 11,fontFamily: 'myriadBold'),),
                      ),
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
                              firstChoice="نعم";

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
                              firstChoice="لا";
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
                    SizedBox(height: 20,),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding:  EdgeInsets.only(left: 5.0,right: 5.0),
                        child: Text(_sliderValue ~/ 1 == 0 ?"  عدد الاخوة  " :"  عدد الاخوة ${_sliderValue ~/ 1} ",style: TextStyle(fontSize: 12,fontFamily: 'myriadBold'),),
                      ),
                    ),



                    Slider(
                      value: _sliderValue,
                      min: 0.0,
                      max: 10.0,
                      onChanged: (value) {
                        setState(() {
                          _sliderValue = value;
                        });
                      },
                    ),

                    const SizedBox(height: 20,),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding:  EdgeInsets.only(left: 5.0,right: 5.0),
                        child: Text(_sliderValue1 ~/ 1 == 0 ?"رتبة الطفل  " :"  رتبة الطفل ${_sliderValue1 ~/ 1} ",style: TextStyle(fontSize: 12,fontFamily: 'myriadBold'),),
                      ),
                    ),

                    Slider(
                      value: _sliderValue1,
                      min: 0.0,
                      max: 10.0,
                      onChanged: (value) {
                        setState(() {
                          _sliderValue1 = value;
                        });
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),

                      child: AppTextField(
                        textFieldType: TextFieldType.NAME,
                        controller: siblingsHealth,
                        title: 'الحالة الصحية للأخوة',
                        errorThisFieldRequired: "This Field is required",
                        decoration: inputDecoration(context, labelText: "الحالة الصحية للأخوة",),
                        // suffix: Icon(Icons.code,size: 17,color: Colors.grey.withOpacity(0.8),),

                      ),
                    ),

                    SizedBox(height: 20,),


                    const Align(
                      alignment: Alignment.topRight,
                      child:  Padding(
                        padding:  EdgeInsets.only(left: 8.0,right: 8.0,bottom: 5),
                        child: Text("المستوى الاقتصادي للعائلة",style: TextStyle(fontSize: 11,fontFamily: 'myriadBold'),),
                      ),
                    ),
                    const SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [

                        GestureDetector(
                          onTap: (){
                            setState(() {
                              bad=!bad;
                              good=false;
                              medium=false;
                              secondChoice="ضعيف";

                            });
                          },
                          child: Container(
                            width: 100,
                            height:40,
                            decoration: BoxDecoration(
                              color:!bad? Colors.white:primaryColor,
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
                            child: Center(child: Text("ضعيف",style: TextStyle(color:!bad? Colors.black:Colors.white, ),)),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              medium=!medium;
                              bad=false;
                              good=false;
                              secondChoice="متوسط";
                            });
                          },
                          child: Container(
                            width: 100,
                            height:40,
                            decoration: BoxDecoration(
                              color:!medium? Colors.white:primaryColor,
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
                            child: Center(child: Text("متوسط",style: TextStyle(color:!medium? Colors.black:Colors.white,),)),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              good=!good;
                              bad=false;
                              medium=false;
                              secondChoice="جيد";
                            });
                          },
                          child: Container(
                            width: 100,
                            height:40,
                            decoration: BoxDecoration(
                              color:!good? Colors.white:primaryColor,
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
                            child: Center(child: Text("جيد",style: TextStyle(color:!good? Colors.black:Colors.white,),)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    GestureDetector(
                      onTap: (){

                        if(formKey.currentState!.validate() && firstChoice!=null && secondChoice!=null){
                          FamilyInfoPart2 familyModel =FamilyInfoPart2(
                             motherJob:motherJob.text,
                             motherHealthReport:motherHealthReport.text,
                            haveRelation: firstChoice,
                            familySocialState: secondChoice,
                            siblingsHealth: siblingsHealth.text,
                            childNumber: (_sliderValue ~/ 1).toInt(),
                            nbrSiblings: (_sliderValue1 ~/ 1).toInt(),


                          );

                          CompleteFamilyInfo familyCompletModel =CompleteFamilyInfo(

                          model: widget.familyInfo,
                          model1: familyModel


                          );

                          provider.updatecompleteFamilyInfo(familyCompletModel);

                          push(context: context, screen: PregancyMainPage());
                          //   push(context: context, screen: ChildDevPage3());
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
                              child: Center(child: const Text("حفظ",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600,fontFamily: 'myriad'),)),
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
