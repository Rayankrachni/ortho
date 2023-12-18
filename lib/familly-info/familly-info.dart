
import 'package:flutter/material.dart';
import 'package:orthophonienewversion/pages/childDev/child-dev-page3.dart';
import 'package:orthophonienewversion/utils/app-navigator.dart';
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
  TextEditingController nameCont = TextEditingController();
  TextEditingController lastNameCont = TextEditingController();
  TextEditingController emailCont = TextEditingController();
  TextEditingController childNumber = TextEditingController();
  TextEditingController famillyLevel = TextEditingController();
  TextEditingController fatherInfo = TextEditingController();
  TextEditingController motherInfo = TextEditingController();

  FocusNode nameFocus = FocusNode();
  FocusNode lastNameFocus = FocusNode();
  FocusNode emailFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();

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
                    backgroundImage: AssetImage("assets/onboarding2.png"),
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
                            controller: nameCont,
                            title: 'مهنة الأب ',

                            focus: nameFocus,
                            nextFocus: passwordFocus,
                            errorThisFieldRequired: "This Field is required",
                            decoration: inputDecoration(context, labelText: "مهنة الأب "),
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
                            controller: lastNameCont,
                            title: 'مهنة الام ',

                            focus: lastNameFocus,
                            nextFocus: passwordFocus,
                            errorThisFieldRequired: "This Field is required",
                            decoration: inputDecoration(context, labelText: "مهنة الام "),
                            suffix: Icon(Icons.person,size: 17,color: Colors.grey.withOpacity(0.8),),
                            autoFillHints: [AutofillHints.email],
                          ),
                        ),
                      ),
                    ],
                  ),




                  const SizedBox(height: 20,),
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
                      textFieldType: TextFieldType.EMAIL_ENHANCED,
                      controller: famillyLevel,
                      title: 'المستوى المادي للعائلة',
                      errorThisFieldRequired: "This Field is required",
                      decoration: inputDecoration(context, labelText: "المستوى المادي للعائلة",),
                     // suffix: Icon(Icons.code,size: 17,color: Colors.grey.withOpacity(0.8),),
                      autoFillHints: [AutofillHints.email],
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),

                    child: AppTextField(
                      textFieldType: TextFieldType.EMAIL_ENHANCED,
                      controller: fatherInfo,
                      title: 'المستوى الثقافي للاب',
                      errorThisFieldRequired: "This Field is required",
                      decoration: inputDecoration(context, labelText: "المستوى الثقافي للاب",),
                     //suffix: Icon(Icons.code,size: 17,color: Colors.grey.withOpacity(0.8),),
                      autoFillHints: [AutofillHints.email],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),

                    child: AppTextField(
                      textFieldType: TextFieldType.EMAIL_ENHANCED,
                      controller: motherInfo,
                      title: 'المستوى الثقافي للام',
                      errorThisFieldRequired: "This Field is required",
                      decoration: inputDecoration(context, labelText: "المستوى الثقافي للام",),
                     // suffix: Icon(Icons.code,size: 17,color: Colors.grey.withOpacity(0.8),),
                      autoFillHints: [AutofillHints.email],
                    ),
                  ),
                  const SizedBox(height: 5,),
                  GestureDetector(
                    onTap: (){
                      push(context: context, screen: ChildDevPage3());
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

    );
  }
}
