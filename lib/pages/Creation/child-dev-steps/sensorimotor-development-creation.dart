import 'package:flutter/material.dart';
import 'package:orthophonienewversion/model/sensorimotor-development.dart';
import 'package:orthophonienewversion/provider/save-date-provider.dart';
import 'package:orthophonienewversion/utils/app-navigator.dart';
import 'package:orthophonienewversion/utils/app-toast.dart';
import 'package:orthophonienewversion/utils/appTextField.dart';
import 'package:orthophonienewversion/utils/common.dart';
import 'package:orthophonienewversion/utils/config.dart';
import 'package:provider/provider.dart';
class SensorimotorDevelopmentCreation extends StatefulWidget {
  const SensorimotorDevelopmentCreation({super.key});

  @override
  State<SensorimotorDevelopmentCreation> createState() => _SensorimotorDevelopmentCreationState();
}

class _SensorimotorDevelopmentCreationState extends State<SensorimotorDevelopmentCreation> {


  TextEditingController personalHygieneAcquisition = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  FocusNode sittingAgeFocus = FocusNode();
  FocusNode crawlingAgeFocus = FocusNode();
  FocusNode walkingAgeFocus = FocusNode();
  FocusNode personalHygieneAcquisitionFocus = FocusNode();

  double _sliderValue = 0.0;
  double _sliderValue0 = 0.0;
  double _sliderValue1 = 0.0;
  double _sliderValue2 = 0.0;

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
          key:  formKey,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const CircleAvatar(
                    radius:80,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("assets/onboarding1.png"),
                  ),
                  const  Text("النمو الحسي الحركي",style: TextStyle(color: Colors.black,fontSize: 20 ,fontFamily: 'myriadBold' ),),
                  const SizedBox(height: 5,),



                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding:  EdgeInsets.only(left: 5.0,right: 5.0),
                      child: Text(_sliderValue0 ~/ 1 == 0 ?"  سن الابتسامة " :"   سن الابتسامة${_sliderValue0 ~/ 1} أشهر ",style: TextStyle(fontSize: 12,fontFamily: 'myriadBold'),),
                    ),
                  ),

                  Slider(
                    value: _sliderValue0,
                    min: 0.0,
                    max: 24.0,
                    onChanged: (value) {
                      setState(() {
                        _sliderValue0 = value;
                      });
                    },
                  ),

                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding:  EdgeInsets.only(left: 5.0,right: 5.0),
                      child: Text(_sliderValue ~/ 1 == 0 ?"  سن الجلوس " :"   سن الجلوس${_sliderValue ~/ 1} أشهر ",style: TextStyle(fontSize: 12,fontFamily: 'myriadBold'),),
                    ),
                  ),

                  Slider(
                    value: _sliderValue,
                    min: 0.0,
                    max: 24.0,
                    onChanged: (value) {
                      setState(() {
                        _sliderValue = value;
                      });
                    },
                  ),



                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding:  EdgeInsets.only(left: 5.0,right: 5.0),
                      child: Text(_sliderValue1 ~/ 1 == 0 ?" سن الحبو " :" سن الحبو${_sliderValue1 ~/ 1} أشهر",style: TextStyle(fontSize: 12,fontFamily: 'myriadBold'),),
                    ),
                  ),

                  Slider(
                    value: _sliderValue1,
                    min: 0.0,
                    max: 24.0,
                    onChanged: (value) {
                      setState(() {
                        _sliderValue1 = value;
                      });
                    },
                  ),


                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding:  EdgeInsets.only(left: 5.0,right: 5.0),
                      child: Text(_sliderValue2 ~/ 1 == 0 ?"  سن المشي " :"   سن المشي${_sliderValue2 ~/ 1} أشهر",style: TextStyle(fontSize: 12,fontFamily: 'myriadBold'),),
                    ),
                  ),

                  Slider(
                    value: _sliderValue2,
                    min: 0.0,
                    max: 24.0,
                    onChanged: (value) {
                      setState(() {
                        _sliderValue2 = value;
                      });
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: AppTextField(
                      textFieldType: TextFieldType.NAME,
                      controller: personalHygieneAcquisition,
                      title: 'اكتساب النظافة',
                      maxLines: 3,

                      focus: personalHygieneAcquisitionFocus,

                      errorThisFieldRequired: "This Field is required",
                      decoration: inputDecoration(context, labelText: "اكتساب النظافة"),
                    //  suffix: Icon(Icons.email,size: 17,color: Colors.grey.withOpacity(0.8),),
                      autoFillHints: [AutofillHints.email],
                    ),
                  ),
                  GestureDetector(
                    onTap: (){

                      if(formKey.currentState!.validate() ){
                        SensorimotorDevelopment model= SensorimotorDevelopment(
                          smilAge: _sliderValue0 ~/ 1,
                          sittingAge: _sliderValue ~/ 1,
                          crawlingAge: _sliderValue1 ~/ 1,
                          walkingAge: _sliderValue2 ~/ 1,
                          personalHygieneAcquisition:personalHygieneAcquisition.text ,



                        );
                        provider.updateSensorimotorDevelopment(model);
                        provider.developmentalMilestones(model, context);
                        if (provider.isLoading) {
                          showDialog(
                            barrierColor: Colors.transparent,
                            context: context,
                            barrierDismissible: false,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                elevation: 0,
                                backgroundColor: Colors.transparent,
                                content: Container(
                                  padding: EdgeInsets.all(16.0),
                                  color: Colors.white.withOpacity(0.0),
                                  child: Center(child: CircularProgressIndicator(color: primaryColor)),
                                ),
                              );
                            },
                          );
                        }
                        //push(context: context, screen: ChildDevPage1());

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
