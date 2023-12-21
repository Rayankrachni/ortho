
import 'package:flutter/material.dart';
import 'package:orthophonienewversion/familly-info/familly-completed-page.dart';
import 'package:orthophonienewversion/model/familly-info-model.dart';
import 'package:orthophonienewversion/pages/childDev/child-dev-page3.dart';
import 'package:orthophonienewversion/utils/app-navigator.dart';
import 'package:orthophonienewversion/utils/app-toast.dart';
import 'package:orthophonienewversion/utils/appTextField.dart';
import 'package:orthophonienewversion/utils/common.dart';
import 'package:orthophonienewversion/utils/config.dart';
class FamilyInfo extends StatefulWidget {
  const FamilyInfo({super.key});

  @override
  State<FamilyInfo> createState() => _FamilyInfoState();
}

class _FamilyInfoState extends State<FamilyInfo> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController fatherName = TextEditingController();
  TextEditingController fatherAge = TextEditingController();
  TextEditingController fatherEducation = TextEditingController();
  TextEditingController fatherJob = TextEditingController();
  TextEditingController fatherHealth = TextEditingController();
  TextEditingController motherName = TextEditingController();
  TextEditingController motherAge = TextEditingController();
  TextEditingController motherEducation = TextEditingController();




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
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    //Center(child: Image.asset("assets/onboarding1.png",height:height*0.4 ,width: width*0.6,)),
                    const  Text("المعلومات العامة للعائلة",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold,fontSize: 18 ,fontFamily: 'myriadBold' ),),
                    const SizedBox(height: 5,),

                    Text("لتجربة جيدة قم بإدخال كل المعلومات",style: TextStyle(color: Colors.grey.withOpacity(0.8),fontSize: 12,fontFamily: 'myriad'  ),),
                    const SizedBox(height: 5,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        SizedBox(
                          width: 185,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: AppTextField(
                              textFieldType: TextFieldType.NAME,
                              controller: fatherName,
                              title: 'اسم  الأب ',

                              errorThisFieldRequired: "This Field is required",
                              decoration: inputDecoration(context, labelText: "اسم  الأب "),
                              suffix: Icon(Icons.person_2,size: 17,color: Colors.grey.withOpacity(0.8),),
                              autoFillHints: [AutofillHints.email],
                            ),
                          ),
                        ),

                        SizedBox(
                          width: 185,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: AppTextField(
                              textFieldType: TextFieldType.NUMBER,
                              controller: fatherAge,
                              title: 'السن  ',

                              errorThisFieldRequired: "This Field is required",
                              decoration: inputDecoration(context, labelText: "السن"),
                              suffix: Icon(Icons.calendar_month,size: 17,color: Colors.grey.withOpacity(0.8),),

                              autoFillHints: [AutofillHints.email],
                            ),
                          ),
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),

                      child: AppTextField(
                        textFieldType: TextFieldType.NAME,
                        controller: fatherEducation,
                        title: 'المستوى التعليمي',
                        errorThisFieldRequired: "This Field is required",
                        decoration: inputDecoration(context, labelText: "المستوى التعليمي",),
                        // suffix: Icon(Icons.code,size: 17,color: Colors.grey.withOpacity(0.8),),
                        autoFillHints: [AutofillHints.email],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),

                      child: AppTextField(
                        textFieldType: TextFieldType.NAME,
                        controller: fatherJob,
                        title: 'المهنة ',
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
                        controller: fatherHealth,
                        title: 'سوابق الأب الصحية',
                        errorThisFieldRequired: "This Field is required",
                        decoration: inputDecoration(context, labelText: "السوابق الصحية للعائلة",),
                        // suffix: Icon(Icons.code,size: 17,color: Colors.grey.withOpacity(0.8),),
                        autoFillHints: [AutofillHints.email],
                      ),
                    ),
                    const SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
//مهنة الام
                        SizedBox(
                          width: 185,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: AppTextField(
                              textFieldType: TextFieldType.NAME,
                              controller: motherName,
                              title: 'اسم  الام',

                              errorThisFieldRequired: "This Field is required",
                              decoration: inputDecoration(context, labelText: "اسم الام"),
                              suffix: Icon(Icons.person_2,size: 17,color: Colors.grey.withOpacity(0.8),),
                              autoFillHints: [AutofillHints.email],
                            ),
                          ),
                        ),

                        SizedBox(
                          width: 185,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: AppTextField(
                              textFieldType:TextFieldType.NUMBER,
                              controller: motherAge,
                              title: 'السن  ',

                              errorThisFieldRequired: "This Field is required",
                              decoration: inputDecoration(context, labelText: "السن"),
                              suffix: Icon(Icons.calendar_month,size: 17,color: Colors.grey.withOpacity(0.8),),
                              autoFillHints: [AutofillHints.email],
                            ),
                          ),
                        ),
                      ],
                    ),


                    Padding(
                      padding: const EdgeInsets.all(8.0),

                      child: AppTextField(
                        textFieldType: TextFieldType.NAME,
                        controller: motherEducation,
                        title: 'مستوى  الام التعليمي',
                        errorThisFieldRequired: "This Field is required",
                        decoration: inputDecoration(context, labelText: "المستوى التعليمي",),
                        // suffix: Icon(Icons.code,size: 17,color: Colors.grey.withOpacity(0.8),),
                        autoFillHints: [AutofillHints.email],
                      ),
                    ),




                    GestureDetector(
                      onTap: (){

                        if(formKey.currentState!.validate() ){

                          FamilyInfoPart1 familyModel =FamilyInfoPart1(
                            fatherName: fatherName.text,
                            fatherAge: fatherAge.text,
                            fatherEducation: fatherEducation.text,
                            fatherHealthReport: fatherHealth.text,
                            motherName: motherName.text,
                            motherAge: motherAge.text,
                            motherEducation: motherEducation.text,
                            fatherJob: fatherJob.text
                          );
                          push(context: context, screen: FamilyCompletedInfo(familyInfo:familyModel ,));
                        //  push(context: context, screen: ChildDevPage3());
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
