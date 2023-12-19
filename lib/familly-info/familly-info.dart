
import 'package:flutter/material.dart';
import 'package:orthophonienewversion/familly-info/familly-completed-page.dart';
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
  double _sliderValue = 0.0;
  double _sliderValue1 = 0.0;
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();
  TextEditingController controller5 = TextEditingController();
  TextEditingController controller6 = TextEditingController();
  TextEditingController controller7 = TextEditingController();
  TextEditingController controller8 = TextEditingController();
  TextEditingController controller9 = TextEditingController();
  TextEditingController controller10 = TextEditingController();

  FocusNode nameFocus = FocusNode();
  FocusNode lastNameFocus = FocusNode();
  FocusNode emailFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();

  String? firstChoice;


  bool isTrue3=false;
  bool isNo3=false;
  bool isRemember = true;
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

                    const CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage("assets/note.png"),
                    ),

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
                              controller: controller1,
                              title: 'اسم  الأب ',

                              errorThisFieldRequired: "This Field is required",
                              decoration: inputDecoration(context, labelText: "اسم  الأب "),
                             // suffix: Icon(Icons.person_2,size: 17,color: Colors.grey.withOpacity(0.8),),
                              autoFillHints: [AutofillHints.email],
                            ),
                          ),
                        ),

                        SizedBox(
                          width: 185,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: AppTextField(
                              textFieldType: TextFieldType.NAME,
                              controller: controller2,
                              title: 'السن  ',

                              errorThisFieldRequired: "This Field is required",
                              decoration: inputDecoration(context, labelText: "السن"),
                              //suffix: Icon(Icons.person,size: 17,color: Colors.grey.withOpacity(0.8),),
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
                        controller: controller3,
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
                        controller: controller4,
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
                        controller: controller10,
                        title: 'السوابق الصحية للعائلة',
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
                              controller: controller5,
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
                              textFieldType: TextFieldType.NAME,
                              controller: controller6,
                              title: 'السن  ',

                              focus: lastNameFocus,
                              nextFocus: passwordFocus,
                              errorThisFieldRequired: "This Field is required",
                              decoration: inputDecoration(context, labelText: "السن"),
                              suffix: Icon(Icons.person,size: 17,color: Colors.grey.withOpacity(0.8),),
                              autoFillHints: [AutofillHints.email],
                            ),
                          ),
                        ),
                      ],
                    ),





                    GestureDetector(
                      onTap: (){

                        if(formKey.currentState!.validate() ){
                          push(context: context, screen: FamilyCompletedInfo());
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
