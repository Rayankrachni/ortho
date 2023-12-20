
import 'package:flutter/material.dart';
import 'package:orthophonienewversion/model/audio_model.dart';
import 'package:orthophonienewversion/pages/childDev/child-dev-page1.dart';
import 'package:orthophonienewversion/pages/childDev/disorders.dart';
import 'package:orthophonienewversion/provider/save-date-provider.dart';
import 'package:orthophonienewversion/utils/app-navigator.dart';
import 'package:orthophonienewversion/utils/app-toast.dart';
import 'package:orthophonienewversion/utils/appTextField.dart';
import 'package:orthophonienewversion/utils/common.dart';
import 'package:orthophonienewversion/utils/config.dart';
import 'package:provider/provider.dart';
class ChildDevPage3 extends StatefulWidget {
  const ChildDevPage3({super.key});

  @override
  State<ChildDevPage3> createState() => _ChildDevPage3State();
}

class _ChildDevPage3State extends State<ChildDevPage3> {

  TextEditingController parenthearingImpairment = TextEditingController();
  TextEditingController typeHearingImpairment = TextEditingController();

  double _sliderValue = 0.0;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool isTrue0=false;
  bool  isNo0=false;
  double _sliderValue0 = 0.0;

  bool isTrue1=false;
  bool  isNo1=false;

  bool isTrue2=false;
  bool  isNo2=false;

  bool isTrue5=false;
  bool  isNo5=false;

  bool isTrue4=false;
  bool  isNo4=false;
  String? forth;


  bool right=false;
  bool  left=false;
  bool  both=false;

  String? firstChoice;
  String? secondChoice;
  String? thirdChoice;

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
                  /*const CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("assets/childListen.png"),
                  ),*/
                  const  Text("الجانب السمعي",style: TextStyle(color:primaryColor,fontSize: 23 ,fontWeight: FontWeight.bold,fontFamily: 'myriadBold' ),),
                  const SizedBox(height: 5,),
                  const  Text("السلوك السمعي اكتشاف الصم",style: TextStyle(color: Colors.grey,fontSize: 16 ,fontFamily: 'myriadBold' ),),



                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: AppTextField(
                      textFieldType: TextFieldType.NAME,
                      controller: parenthearingImpairment,
                      title: 'متى شك الأولياء في العجز السمعي',

                      errorThisFieldRequired: "This Field is required",
                      decoration: inputDecoration(context, labelText: "متى شك الأولياء في العجز السمعي"),
                     // suffix: Icon(Icons.email,size: 17,color: Colors.grey.withOpacity(0.8),),
                      autoFillHints: [AutofillHints.email],
                    ),
                  ),


                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding:  EdgeInsets.only(left: 5.0,right: 5.0),
                      child: Text(_sliderValue ~/ 1 == 0 ?"   سن إكتشاف الصمم" :"    سن إكتشاف الصمم${_sliderValue ~/ 1} ",style: TextStyle(fontSize: 12,fontFamily: 'myriadBold'),),
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


                  Padding(
                    padding: const EdgeInsets.all(10.0),

                    child: AppTextField(
                      textFieldType: TextFieldType.NAME,
                      controller: typeHearingImpairment,

                      title: 'نوع الإعاقة السمعية',
                      errorThisFieldRequired: "This Field is required",
                      decoration: inputDecoration(context, labelText: "نوع الإعاقة السمعية",),
                    //  suffix: Icon(Icons.code,size: 17,color: Colors.grey.withOpacity(0.8),),
                      autoFillHints: [AutofillHints.email],
                    ),
                  ),

                  Align(
                    alignment: Alignment.topRight,
                    child: const Padding(
                      padding:  EdgeInsets.only(left: 10.0,right: 10.0,bottom: 5),
                      child: Text("هل هناك بقايا سمعية",style: TextStyle(fontSize: 12,fontFamily: 'myriadBold'),),
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
                            isTrue4=!isTrue4;
                            isNo4=false;
                            forth="نعم";

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
                             forth="لا";
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
                  const SizedBox(height: 20,),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding:  EdgeInsets.only(left: 5.0,right: 5.0),
                      child: Text(_sliderValue0 ~/ 1 == 0 ?"  درجة الصمم" :"   درجة الصمم${_sliderValue0 ~/ 1} DB",style: TextStyle(fontSize: 12,fontFamily: 'myriadBold'),),
                    ),
                  ),

                  Slider(
                    value: _sliderValue0,
                    min: 0.0,
                    max: 10.0,
                    onChanged: (value) {
                      setState(() {
                        _sliderValue0 = value;
                      });
                    },
                  ),


                  Align(
                    alignment: Alignment.topRight,
                    child: const Padding(
                      padding:  EdgeInsets.only(left: 10.0,right: 10.0,bottom: 5),
                      child: Text("هل قام بالتجهيز",style: TextStyle(fontSize: 12,fontFamily: 'myriadBold'),),
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
                  const SizedBox(height: 10,),
                  if(isTrue0) Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Align(
                        alignment: Alignment.topRight,
                        child: Text("تاريخ التجهيز:",style: TextStyle(color:Colors.black,fontFamily: "myriad",fontSize: 12),)),
                  ),


                  if(isTrue0) GestureDetector(
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
                          '${formatDate(selectedDate)}',
                          style: TextStyle(fontSize: 14,fontFamily: 'myriad'),
                        ),
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.topRight,
                    child:  Padding(
                      padding:  EdgeInsets.only(left: 10.0,right: 10.0,bottom: 5),
                      child: Text("هل هو صمم ",style: TextStyle(fontSize: 12,fontFamily: 'myriadBold'),),
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
                            isTrue5=!isTrue5;
                            isNo5=false;
                           // firstChoice="وراثي ";

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
                          child: Center(child: Text("وراثي ",style: TextStyle(color:!isTrue5? Colors.black:Colors.white, ),)),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            isNo5=!isNo5;
                            isTrue5=false;
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
                          child: Center(child: Text("مكتسب",style: TextStyle(color:!isNo5? Colors.black:Colors.white,),)),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10,),


                  const SizedBox(height: 5,),
                  Align(
                    alignment: Alignment.topRight,
                    child: const Padding(
                      padding:  EdgeInsets.only(left: 10.0,right: 10.0,bottom: 5),
                      child: Text("نوع التجهيز ",style: TextStyle(fontSize: 12,fontFamily: 'myriadBold'),),
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
                            secondChoice="معين سمعي";

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
                          child: Center(child: Text("معين سمعي",style: TextStyle(color: !isTrue1? Colors.black:Colors.white,),)),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                         setState(() {
                           isNo1=!isNo1;
                           isTrue1=false;
                           secondChoice="زرع قوقعي";
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
                          child: Center(child: Text("زرع قوقعي",style: TextStyle(color: !isNo1? Colors.black:Colors.white,),)),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 15,),
                  Align(
                    alignment: Alignment.topRight,
                    child: const Padding(
                      padding:  EdgeInsets.only(left: 10.0,right: 10.0,bottom: 5),
                      child: Text("الاذن المصابة",style: TextStyle(fontSize: 12,fontFamily: 'myriadBold'),),
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      GestureDetector(
                        onTap:(){
                          setState(() {
                            right=!right;
                            left=false;
                            both=false;
                            thirdChoice="اليمنى";
                          });
                       },
                        child: Container(
                          width: 100,
                          height:40,
                          decoration: BoxDecoration(
                            color:!right ? Colors.white :primaryColor,
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
                          child: Center(child: Text("اليمنى ",style: TextStyle(color: !right ? Colors.black :Colors.white,),)),
                        ),
                      ),
                      GestureDetector(
                        onTap:(){
                          setState(() {
                            left=!left;
                            right=false;
                            both=false;
                            thirdChoice="اليسرى";
                          });
                        },
                        child: Container(
                          width: 100,
                          height:40,
                          decoration: BoxDecoration(
                            color: !left ? Colors.white : primaryColor,
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
                          child: Center(child: Text("اليسرى",style: TextStyle(color: !left ? Colors.black : Colors.white,),)),
                        ),
                      ),
                      GestureDetector(
                        onTap:(){
                          setState(() {
                            both=!both;
                            right=false;
                            left=false;
                            thirdChoice="اليسرى";
                          });
                        },
                        child: Container(
                          width: 100,
                          height:40,
                          decoration: BoxDecoration(
                            color: !both ? Colors.white : primaryColor,
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
                          child: Center(child: Text("الاثنين",style: TextStyle(color: !both ? Colors.black : Colors.white,),)),
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: (){


                      if(formKey.currentState!.validate() && firstChoice!=null && secondChoice!=null && thirdChoice!=null && forth!=null){

                        AudioModel model= AudioModel(
                         parenthearingImpairment: parenthearingImpairment.text,
                          typeHearingImpairment:typeHearingImpairment.text ,
                          hearingCapabilities: (_sliderValue0 ~/ 1).toString(),
                          treatment: firstChoice,
                          treatmentDate: formatDate(selectedDate),
                          treatmentType:secondChoice ,
                          hearingInfo: forth,
                          affectedEars:thirdChoice ,
                        );
                        provider.updateAudioModel(model);
                        push(context: context, screen: ChildDevPage2());
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
