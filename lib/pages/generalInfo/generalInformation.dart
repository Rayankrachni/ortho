
import 'package:flutter/material.dart';
import 'package:orthophonienewversion/pages/pregency/pregancy-main-page.dart';
import 'package:orthophonienewversion/utils/app-navigator.dart';
import 'package:orthophonienewversion/utils/appTextField.dart';
import 'package:orthophonienewversion/utils/config.dart';

import '../../utils/common.dart';


class GeneralInfo extends StatefulWidget {
  const GeneralInfo({super.key});

  @override
  State<GeneralInfo> createState() => _GeneralInfoState();
}

class _GeneralInfoState extends State<GeneralInfo> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController firstnameCont = TextEditingController();
  TextEditingController lastNameCont = TextEditingController();
  TextEditingController birthdayPlace = TextEditingController();
  TextEditingController birthdayDate = TextEditingController();
  TextEditingController duration = TextEditingController();
  TextEditingController lastInfo = TextEditingController();


  bool isRemember = true;

  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        print(selectedDate.toLocal());


      });
    }
  }

  String formatDate(DateTime date) {
    return '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}';
  }
  double _sliderValue = 0.0;
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
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  const CircleAvatar(
                    radius: 70,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("assets/onboarding2.png"),
                  ),

                  //Center(child: Image.asset("assets/onboarding1.png",height:height*0.4 ,width: width*0.6,)),
                  const  Text("المعلومات العامة",style: TextStyle(color: primaryColor,fontSize: 22 ,fontFamily: 'myriadBold',fontWeight: FontWeight.bold ),),
                  const SizedBox(height: 5,),

                  Text("لتجربة جيدة قم بإدخال كل المعلومات",style: TextStyle(color: Colors.grey.withOpacity(0.8),fontSize: 12,fontFamily: 'myriad'  ),),
                  const SizedBox(height: 5,),
                  GestureDetector(
                    onTap: (){_selectDate(context);},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: width,
                        height: 45,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Text(
                          'تاريخ المقابلة: ${formatDate(selectedDate)}',
                          style: TextStyle(fontSize: 14,fontFamily: 'myriad'),
                        ),
                      ),
                    ),
                  ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      SizedBox(
                        width: 185,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: AppTextField(
                            textFieldType: TextFieldType.NAME,
                            controller: firstnameCont,
                            title: 'الاسم',
                            errorThisFieldRequired: "This Field is required",
                            decoration: inputDecoration(context, labelText: "الاسم"),
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
                            title: 'اللقب',

                            errorThisFieldRequired: "This Field is required",
                            decoration: inputDecoration(context, labelText: "اللقب"),
                            suffix: Icon(Icons.person,size: 17,color: Colors.grey.withOpacity(0.8),),
                            autoFillHints: [AutofillHints.email],
                          ),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      SizedBox(
                        width: 185,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: AppTextField(
                            textFieldType: TextFieldType.NAME,
                            controller: birthdayPlace,
                            title: 'مكان الميلاد',

                            errorThisFieldRequired: "This Field is required",
                            decoration: inputDecoration(context, labelText: "مكان الميلاد"),
                            suffix: Icon(Icons.place,size: 17,color: Colors.grey.withOpacity(0.8),),
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
                            controller: birthdayDate,
                            title: 'تاريخ الميلاد ',

                            errorThisFieldRequired: "This Field is required",
                            decoration: inputDecoration(context, labelText: "تاريخ الميلاد"),
                            suffix: Icon(Icons.date_range,size: 17,color: Colors.grey.withOpacity(0.8),),
                            autoFillHints: [AutofillHints.email],
                          ),
                        ),
                      ),
                    ],
                  ),

                  /*Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AppTextField(
                      textFieldType: TextFieldType.EMAIL_ENHANCED,
                      controller: nameCont,
                      title: 'الجنس ',

                      focus: emailFocus,
                      nextFocus: passwordFocus,
                      errorThisFieldRequired: "This Field is required",
                      decoration: inputDecoration(context, labelText: "الجنس "),
                      suffix: Icon(Icons.email,size: 17,color: Colors.grey.withOpacity(0.8),),
                      autoFillHints: [AutofillHints.email],
                    ),
                  ),*/

                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Align(
                        alignment: Alignment.topRight,
                        child: Text(_sliderValue ~/ 1 == 0 ? "مدة التكفل في العيادة " :" ${_sliderValue ~/ 1} ايام ",style: TextStyle(fontSize: 12),)),
                  ),

                  Slider(
                    value: _sliderValue,
                    min: 0.0,
                    max: 60.0,
                    onChanged: (value) {
                      setState(() {
                        _sliderValue = value;
                      });
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),

                    child: AppTextField(
                      textFieldType: TextFieldType.EMAIL_ENHANCED,
                      controller: lastInfo,
                      //nextFocus: passwordFocus,
                      title: 'موجه من طرف',
                      errorThisFieldRequired: "This Field is required",
                      decoration: inputDecoration(context, labelText: "موجه من طرف",),
                      suffix: Icon(Icons.edit,size: 17,color: Colors.grey.withOpacity(0.8),),
                      autoFillHints: [AutofillHints.email],
                    ),
                  ),
                  const SizedBox(height: 5,),
                  GestureDetector(
                    onTap: (){
                      push(context: context, screen: PregancyMainPage());
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
