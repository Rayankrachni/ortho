import 'package:flutter/material.dart';
import 'package:orthophonienewversion/homePage.dart';
import 'package:orthophonienewversion/pages/childDev/child-dev-page1.dart';
import 'package:orthophonienewversion/utils/app-navigator.dart';
import 'package:orthophonienewversion/utils/appTextField.dart';
import 'package:orthophonienewversion/utils/common.dart';
import 'package:orthophonienewversion/utils/config.dart';
class languageDevPage extends StatefulWidget {
  const languageDevPage({super.key});

  @override
  State<languageDevPage> createState() => _ChildDevPage1State();
}

class _ChildDevPage1State extends State<languageDevPage> {

  TextEditingController sittingAge = TextEditingController();
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3= TextEditingController();
  TextEditingController controller4 = TextEditingController();
  TextEditingController controller5 = TextEditingController();
  TextEditingController controller6 = TextEditingController();
  TextEditingController walkingAge = TextEditingController();
  TextEditingController personalHygieneAcquisition = TextEditingController();

  FocusNode sittingAgeFocus = FocusNode();
  FocusNode crawlingAgeFocus = FocusNode();
  FocusNode walkingAgeFocus = FocusNode();
  FocusNode personalHygieneAcquisitionFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
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
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage("assets/language.png"),
                ),
                const  Text("ميزانية اللغة",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold,fontSize: 20 ,fontFamily: 'myriadBold' ),),
                const SizedBox(height: 5,),





                Align(
                  alignment: Alignment.topRight,
                  child: const Padding(
                    padding:  EdgeInsets.only(left: 10.0,right: 10.0,bottom: 5),
                    child: Text("هل هو اجتماعي",style: TextStyle(fontSize: 11,fontFamily: 'myriadBold'),),
                  ),
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Container(
                      width: 170,
                      height:40,
                      decoration: BoxDecoration(
                        color: Colors.white,
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
                      child: Center(child: Text("نعم")),
                    ),
                    Container(
                      width: 170,
                      height:40,
                      decoration: BoxDecoration(
                        color: Colors.white,
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
                      child: Center(child: Text("لا")),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),

                  child: AppTextField(
                    textFieldType: TextFieldType.EMAIL_ENHANCED,
                    controller: controller1,
                    focus: crawlingAgeFocus,

                    title: 'المناغاة الاولى',
                    errorThisFieldRequired: "This Field is required",
                    decoration: inputDecoration(context, labelText: "المناغاة الاولى",),
                    //suffix: Icon(Icons.code,size: 17,color: Colors.grey.withOpacity(0.8),),
                    autoFillHints: [AutofillHints.email],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: AppTextField(
                    textFieldType: TextFieldType.NAME,
                    controller: controller2,
                    title: 'الكلمة الاولى',

                    focus: walkingAgeFocus,
                    nextFocus: sittingAgeFocus,
                    errorThisFieldRequired: "This Field is required",
                    decoration: inputDecoration(context, labelText: "الكلمة الاولى"),
                    // suffix: Icon(Icons.email,size: 17,color: Colors.grey.withOpacity(0.8),),
                    autoFillHints: [AutofillHints.email],
                  ),
                ),



                SizedBox(height: 10,),
                Align(
                  alignment: Alignment.topRight,
                  child: const Padding(
                    padding:  EdgeInsets.only(left: 10.0,right: 10.0,bottom: 5),
                    child: Text("هل يلعب مع الآخرين ",style: TextStyle(fontSize: 11,fontFamily: 'myriadBold'),),
                  ),
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Container(
                      width: 170,
                      height:40,
                      decoration: BoxDecoration(
                        color: Colors.white,
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
                      child: Center(child: Text("نعم")),
                    ),
                    Container(
                      width: 170,
                      height:40,
                      decoration: BoxDecoration(
                        color: Colors.white,
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
                      child: Center(child: Text("لا")),
                    )
                  ],
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: AppTextField(
                    textFieldType: TextFieldType.NAME,
                    controller: controller4,
                    title: 'هل له علاقات  متعددة',


                    errorThisFieldRequired: "This Field is required",
                    decoration: inputDecoration(context, labelText: "هل له علاقات  متعددة"),
                    //  suffix: Icon(Icons.email,size: 17,color: Colors.grey.withOpacity(0.8),),
                    autoFillHints: [AutofillHints.email],
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    pushAndRemove(context: context, screen: HomePage());
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
    );
  }
}
