import 'package:flutter/material.dart';
import 'package:orthophonienewversion/model/deiseases-model.dart';
import 'package:orthophonienewversion/pages/Creation/Primary%20Achievements/PlacePreposition.dart';
import 'package:orthophonienewversion/pages/Creation/Primary%20Achievements/primary_achievements.main.dart';
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

  bool? firstChoice;
  bool? secondChoice;
  String? thirdChoice;

  bool? isMeningitis;
  bool? isEncephalitis;
  bool? isepilepsy;

  TextEditingController meningitis = TextEditingController();
  TextEditingController encephalitis = TextEditingController();
  TextEditingController developEpilepsyTime = TextEditingController();
  TextEditingController seizuresOccurTime= TextEditingController();
  TextEditingController undergoneRegarding = TextEditingController();
  TextEditingController epilepsy = TextEditingController();

  DateTime? siesureTime;
  DateTime? devEp;

  Future<void> _selectSeizureTime(BuildContext context) async {
    TimeOfDay initialTime = TimeOfDay.fromDateTime(siesureTime ?? DateTime.now());

    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: initialTime,
    );

    if (picked != null) {
      DateTime selectedDateTime = DateTime(
        DateTime.now().year,
        DateTime.now().month,
        DateTime.now().day,
        picked.hour,
        picked.minute,
      );

      setState(() {
        siesureTime = selectedDateTime;
        print(siesureTime!.toLocal());

        // Format the DateTime to display only the hour and minute
        seizuresOccurTime.text =formatDateMin(siesureTime!);

      });
    }
  }


  Future<void> _selectdevelopEpilepsyTime(BuildContext context) async {
    DateTime? initialDate = devEp ?? DateTime.now();

    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != devEp) {
      setState(() {
        devEp = picked;
        print(devEp!.toLocal());
        developEpilepsyTime.text=formatDate(devEp!);
      });
    }
  }


  String formatDate(DateTime date) {
    return '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}';
  }

  String formatDateMin(DateTime date) {
    return '${date.hour.toString().padLeft(2, '0')}:${date.minute.toString().padLeft(2, '0')}';
  }

  FocusNode sittingAgeFocus = FocusNode();
  FocusNode crawlingAgeFocus = FocusNode();
  FocusNode walkingAgeFocus = FocusNode();
  FocusNode personalHygieneAcquisitionFocus = FocusNode();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool isTrue0=false;
  bool  isNo0=false;


  bool isMTrue0=false;
  bool  isMNo0=false;

  bool isPTrue0=false;
  bool  isPNo0=false;


  bool isETrue0=false;
  bool  isENo0=false;


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

                  Align(
                    alignment: Alignment.topRight,
                    child: const Padding(
                      padding:  EdgeInsets.only(left: 10.0,right: 10.0,bottom: 5),
                      child: Text("التهاب السحايا؟",style: TextStyle(fontSize: 11,fontFamily: 'myriadBold'),),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      Flexible(
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                               isMTrue0=!isMTrue0;
                                isMNo0=false;
                              isMeningitis=true;

                            });
                          },
                          child: Container(
                            width: width*0.4,
                            height: height*0.05,
                            decoration: BoxDecoration(
                              color:!isMTrue0? Colors.white:primaryColor,
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
                            child: Center(child: Text("نعم",style: TextStyle(color:!isMTrue0!? Colors.black:Colors.white, ),)),
                          ),
                        ),
                      ),
                      Flexible(
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              isMNo0=!isMNo0;
                              isMTrue0=false;
                              isMeningitis=false;
                            });
                          },
                          child: Container(
                            width: width*0.4,
                            height: height*0.05,
                            decoration: BoxDecoration(
                              color:!isMNo0? Colors.white:primaryColor,
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
                            child: Center(child: Text("لا",style: TextStyle(color:!isMNo0? Colors.black:Colors.white,),)),
                          ),
                        ),
                      )
                    ],
                  ),


                  SizedBox(height: 20,),
                  Align(
                    alignment: Alignment.topRight,
                    child: const Padding(
                      padding:  EdgeInsets.only(left: 10.0,right: 10.0,bottom: 5),
                      child: Text("التهاب الدماغ؟",style: TextStyle(fontSize: 11,fontFamily: 'myriadBold'),),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      Flexible(
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              isETrue0=!isETrue0;
                              isENo0=false;
                              isepilepsy=true;

                            });
                          },
                          child: Container(
                            width: width*0.4,
                            height: height*0.05,
                            decoration: BoxDecoration(
                              color:!isETrue0? Colors.white:primaryColor,
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
                            child: Center(child: Text("نعم",style: TextStyle(color:!isETrue0? Colors.black:Colors.white, ),)),
                          ),
                        ),
                      ),
                      Flexible(
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              isETrue0=false;
                              isENo0=!isENo0;
                              isepilepsy=false;
                            });
                          },
                          child: Container(
                            width: width*0.4,
                            height: height*0.05,
                            decoration: BoxDecoration(
                              color:!isENo0? Colors.white:primaryColor,
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
                            child: Center(child: Text("لا",style: TextStyle(color:!isENo0? Colors.black:Colors.white,),)),
                          ),
                        ),
                      )
                    ],
                  ),


                  SizedBox(height: 20,),



                  const Align(
                    alignment: Alignment.topRight,
                    child:  Padding(
                      padding:  EdgeInsets.only(left: 10.0,right: 10.0,bottom: 5),
                      child: Text("الصرع؟",style: TextStyle(fontSize: 11,fontFamily: 'myriadBold'),),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      Flexible(
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              isPTrue0=!isPTrue0;
                              isPNo0=false;
                              isEncephalitis=true;
                        
                            });
                          },
                          child: Container(
                            width: width*0.4,
                            height: height*0.05,
                            decoration: BoxDecoration(
                              color:!isPTrue0? Colors.white:primaryColor,
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
                            child: Center(child: Text("نعم",style: TextStyle(color:!isPTrue0? Colors.black:Colors.white, ),)),
                          ),
                        ),
                      ),
                      Flexible(
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              isPTrue0=false;
                              isPNo0=!isPNo0;
                              isEncephalitis=true;
                            });
                          },
                          child: Container(
                            width: width*0.4,
                            height: height*0.05,
                            decoration: BoxDecoration(
                              color:!isPNo0? Colors.white:primaryColor,
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
                            child: Center(child: Text("لا",style: TextStyle(color:!isPNo0? Colors.black:Colors.white,),)),
                          ),
                        ),
                      )
                    ],
                  ),

                  const SizedBox(height: 20,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: GestureDetector(
                          onTap: (){
                            _selectdevelopEpilepsyTime(context);
                          },
                          child: SizedBox(
                            width: width*0.4,
                         
                            child:  Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: AppTextField(

                                textFieldType: TextFieldType.NAME,
                                controller: developEpilepsyTime,
                                title: 'متى أصيب بالصرع؟',
                                enabled: false,

                                errorThisFieldRequired: "This Field is required",
                                decoration: inputDecoration(context, labelText: "متى أصيب بالصرع؟"),
                                // suffix: Icon(Icons.email,size: 17,color: Colors.grey.withOpacity(0.8),),
                                autoFillHints: [AutofillHints.email],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        child: GestureDetector(
                          onTap: (){
                            _selectSeizureTime(context);
                          },
                          child: SizedBox(
                            width: width*0.4,

                            child:    Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: AppTextField(
                                textFieldType: TextFieldType.NAME,
                                controller: seizuresOccurTime,
                                title: 'متى تحدث له النوبات',
                                enabled: false,

                                errorThisFieldRequired: "This Field is required",
                                decoration: inputDecoration(context, labelText: "متى تحدث له النوبات"),
                                // suffix: Icon(Icons.email,size: 17,color: Colors.grey.withOpacity(0.8),),
                                autoFillHints: [AutofillHints.email],
                              ),
                            ),
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
                      Flexible(
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              isTrue0=!isTrue0;
                              isNo0=false;
                              firstChoice=true;
                        
                            });
                          },
                          child: Container(
                            width: width*0.4,
                            height: height*0.05,
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
                      ),
                      Flexible(
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              isNo0=!isNo0;
                              isTrue0=false;
                              firstChoice=false;
                            });
                          },
                          child: Container(
                            width: width*0.4,
                            height: height*0.05,
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

                      Flexible(
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              isTrue1=!isTrue1;
                              isNo1=false;
                              secondChoice=true;

                            });
                          },
                          child: Container(
                            width: width*0.4,
                            height: height*0.05,
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
                      ),
                      Flexible(
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              isNo1=!isNo1;
                              isTrue1=false;

                              secondChoice=false;
                            });
                          },
                          child: Container(
                            width: width*0.4,
                            height: height*0.05,
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
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),

                  const SizedBox(height: 10,),


                  GestureDetector(
                    onTap: (){


                      if(formKey.currentState!.validate() && isMeningitis!=null && isEncephalitis!=null && isepilepsy!=null && firstChoice!=null && secondChoice!=null  ){
                        DiseaseModel model= DiseaseModel(

                          encephalitis:isEncephalitis ,
                          epilepsy: isepilepsy,
                          meningitis: isMeningitis,
                          sufferFromTonsillitis:firstChoice ,
                          seizuresTime:seizuresOccurTime.text ,
                          vaccinations:secondChoice ,
                          firstExperienceSeizures: developEpilepsyTime.text,

                        );
                        provider.updateDiseaseModel(model);

                        provider.medicalHistories(model, context);

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
