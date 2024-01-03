
import 'package:flutter/material.dart';
import 'package:orthophonienewversion/model/general-info-model.dart';
import 'package:orthophonienewversion/provider/save-date-provider.dart';
import 'package:orthophonienewversion/utils/app-navigator.dart';
import 'package:orthophonienewversion/utils/app-toast.dart';
import 'package:orthophonienewversion/utils/appTextField.dart';
import 'package:orthophonienewversion/utils/common.dart';
import 'package:orthophonienewversion/utils/config.dart';
import 'package:provider/provider.dart';


class GeneralInfo extends StatefulWidget {

  GeneralInfo({super.key});

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


  //add
  TextEditingController address = TextEditingController();
  TextEditingController phone = TextEditingController();


  bool isRemember = true;

  bool isTrue1=false;
  bool isTrue2=false;


  String? firstChoice;

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



  DateTime? birthDate;

  Future<void> _selectBirthDate(BuildContext context) async {
    DateTime? initialDate = birthDate ?? DateTime.now();

    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != birthDate) {
      setState(() {
        birthDate = picked;
        print(birthDate!.toLocal());
        birthdayDate.text=formatDate(birthDate!);
      });
    }
  }

  String formatDate(DateTime date) {
    return '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}';
  }
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  double _sliderValue = 0.0;


  @override
  Widget build(BuildContext context) {

    final provider=Provider.of<FormDataProvider>(context);
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;


    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,

        title:Text("المعلومات العامة",style: TextStyle(color: primaryColor,fontSize: height*0.03 ,fontFamily: 'myriadBold',fontWeight: FontWeight.bold ),),
        centerTitle: true,
        iconTheme:const IconThemeData(
            color: Colors.white
        ),
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Padding(
            padding:  EdgeInsets.all(height*0.02),
            child: Container(
              height: height*0.02,
              width: height*0.02,
              decoration:const BoxDecoration(
                shape: BoxShape.circle,
                color: primaryColor,
              ),
              child: Icon(Icons.arrow_back,size: height*0.02,),
            ),
          ),
        ),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Center(
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(height*0.02),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [


                    Text("لتجربة جيدة قم بإدخال كل المعلومات",style: TextStyle(color: Colors.grey.withOpacity(0.8),fontSize: height*0.02,fontFamily: 'myriad'  ),),

                    Padding(
                      padding:  EdgeInsets.only(top: 12.0,left: 12,right: 12),
                      child: Align(
                          alignment: Alignment.topRight,
                          child: Text("تاريخ المقابلة: ",style: TextStyle(fontSize: width*0.03,fontWeight: FontWeight.bold),)),
                    ),
                    GestureDetector(
                      onTap: (){_selectDate(context);},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: width,
                          height: height*0.055,
                          padding: EdgeInsets.all(height*0.012),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 2,
                                offset: Offset(0, 1),
                              ),
                            ],
                          ),
                          child: Text(
                            '${formatDate(selectedDate)}',
                            style: TextStyle(fontSize: height*0.017,fontFamily: 'myriad'),
                          ),
                        ),
                      ),
                    ),




                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        SizedBox(
                          width: width*0.4,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: AppTextField(
                              textFieldType: TextFieldType.NAME,
                              controller: firstnameCont,
                              title: 'الاسم',
                              errorThisFieldRequired: "This Field is required",
                              decoration: inputDecoration(context, labelText: "الاسم"),
                              suffix: Icon(Icons.person_2,size:  width*0.04,color: Colors.grey.withOpacity(0.8),),
                              autoFillHints: [AutofillHints.email],
                            ),
                          ),
                        ),

                        SizedBox(
                          width: width*0.4,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: AppTextField(
                              textFieldType: TextFieldType.NAME,
                              controller: lastNameCont,
                              title: 'اللقب',

                              errorThisFieldRequired: "This Field is required",
                              decoration: inputDecoration(context, labelText: "اللقب"),
                              suffix: Icon(Icons.person,size:  width*0.04,color: Colors.grey.withOpacity(0.8),),
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
                          width: width*0.4,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: AppTextField(
                              textFieldType: TextFieldType.NAME,
                              controller: birthdayPlace,
                              title: 'مكان الميلاد',

                              errorThisFieldRequired: "This Field is required",
                              decoration: inputDecoration(context, labelText: "مكان الميلاد"),
                              suffix: Icon(Icons.place,size:  width*0.04,color: Colors.grey.withOpacity(0.8),),
                              autoFillHints: [AutofillHints.email],
                            ),
                          ),
                        ),

                        GestureDetector(
                          onTap: () => _selectBirthDate(context),
                          child: SizedBox(
                            width: width*0.4,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: AppTextField(
                                textFieldType: TextFieldType.NAME,
                                controller: birthdayDate,
                                title: 'تاريخ الميلاد ',
                                enabled: false,


                                errorThisFieldRequired: "This Field is required",
                                decoration: inputDecoration(context, labelText: "تاريخ الميلاد"),
                                suffix: Icon(Icons.date_range,size:  width*0.04,color: Colors.grey.withOpacity(0.8),),
                                autoFillHints: [AutofillHints.email],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),



                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Align(
                          alignment: Alignment.topRight,
                          child: Text(_sliderValue ~/ 1 == 0 ? "مدة التكفل في العيادة " :"مدة التكفل في العيادة : ${_sliderValue ~/ 1} ايام ",style: TextStyle(fontSize: 12),)),
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
                        textFieldType: TextFieldType.NAME,
                        controller: address,
                        //nextFocus: passwordFocus,
                        title: 'العنوان ',
                        errorThisFieldRequired: "This Field is required",
                        decoration: inputDecoration(context, labelText: "العنوان ",),
                        suffix: Icon(Icons.add_location_rounded,size:  width*0.04,color: Colors.grey.withOpacity(0.8),),
                        autoFillHints: [AutofillHints.email],
                      ),
                    ),
                    const SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),

                      child: AppTextField(
                        textFieldType: TextFieldType.NUMBER,
                        controller: phone,
                        //nextFocus: passwordFocus,
                        title: 'رقم الهاتف',
                        errorThisFieldRequired: "This Field is required",
                        decoration: inputDecoration(context, labelText: "رقم الهاتف",),
                        suffix: Icon(Icons.phone,size:  width*0.04,color: Colors.grey.withOpacity(0.8),),
                        autoFillHints: [AutofillHints.email],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),

                      child: AppTextField(
                        textFieldType: TextFieldType.NAME,
                        controller: lastInfo,
                        //nextFocus: passwordFocus,
                        title: 'موجه من طرف',
                        errorThisFieldRequired: "This Field is required",
                        decoration: inputDecoration(context, labelText: "موجه من طرف",),
                        suffix: Icon(Icons.edit,size:  width*0.04,color: Colors.grey.withOpacity(0.8),),
                        autoFillHints: [AutofillHints.email],
                      ),
                    ),

                    GestureDetector(
                      onTap: (){

                          if(_formKey.currentState!.validate() ){
                            GeneralInfoModel model= GeneralInfoModel(
                              name: firstnameCont.text,
                              lastName: lastNameCont.text,
                              address: address.text,
                              phone: phone.text,
                              birthdate: birthdayDate.text,
                              place_birth: birthdayPlace.text,
                              clinic_care_duration: "${(_sliderValue ~/ 1).toInt()} أشهر ",
                              directed_by: lastInfo.text,
                              date: formatDate(selectedDate),


                            );

                            provider.updateGeneralInfoModel(model);
                            provider.postGeneralInfo(model,context);

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

                           // push(context: context, screen: DisplayDataWidget());

                          }else{
                            ToastHelper.showToast(msg: "يرجى إدخال المعلومات", backgroundColor:pink);
                          }

                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                            height: height*0.06,
                            width: width,
                            child:Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: primaryColor,

                              ),
                              child: Center(child:  Text("حفظ",style: TextStyle(color: Colors.white,fontSize: width*0.04,fontWeight: FontWeight.w600,fontFamily: 'myriad'),)),
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
