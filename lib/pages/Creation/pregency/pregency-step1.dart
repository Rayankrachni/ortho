import 'package:flutter/material.dart';
import 'package:orthophonienewversion/pages/Creation/pregency/pregency-step2.dart';
import 'package:orthophonienewversion/utils/app-navigator.dart';
import 'package:orthophonienewversion/utils/app-toast.dart';
import 'package:orthophonienewversion/utils/appTextField.dart';
import 'package:orthophonienewversion/utils/common.dart';
import 'package:orthophonienewversion/utils/config.dart';


class PregrencyStep1 extends StatefulWidget {
  const PregrencyStep1({super.key});

  @override
  State<PregrencyStep1> createState() => _PregrencyStep1State();
}

class _PregrencyStep1State extends State<PregrencyStep1> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController nameCont = TextEditingController();
  TextEditingController lastNameCont = TextEditingController();
  TextEditingController emailCont = TextEditingController();
  TextEditingController passwordCont = TextEditingController();

  FocusNode nameFocus = FocusNode();
  FocusNode lastNameFocus = FocusNode();
  FocusNode emailFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();

  bool isTrue1=false;
  bool isNo1=false;

  String? firstChoice;

  bool isTrue2=false;
  bool isNo2=false;

  String? secondChoice;

  bool isRemember = true;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
        child: Center(
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Center(
                      child: const CircleAvatar(
                        radius: 70,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage("assets/pregancy2.png"),
                      ),
                    ),

                    //Center(child: Image.asset("assets/onboarding1.png",height:height*0.4 ,width: width*0.6,)),
                    Center(child: const  Text("مرحلة ما قبل الحمل ",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold,fontSize: 22 ,fontFamily: 'myriadBold' ),)),
                    const SizedBox(height: 5,),

                    Center(child: Text("لتجربة جيدة قم بإدخال كل المعلومات",style: TextStyle(color: Colors.grey.withOpacity(0.8),fontSize: 12,fontFamily: 'myriad'  ),)),
                    const SizedBox(height: 25,),
                    const Padding(
                      padding:  EdgeInsets.only(left: 5.0,right: 5.0,bottom: 5),
                      child: Text("هل هناك مانع للحمل  ؟",style: TextStyle(fontSize: 14,fontFamily: 'myriadBold'),),
                    ),
                    const SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              isTrue1=!isTrue1;
                              isNo1=false;
                              firstChoice='نعم';
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
                            child: Center(child: Text("نعم",style: TextStyle(color:!isTrue1? Colors.black:Colors.white, ),)),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              isNo1=!isNo1;
                              isTrue1=false;
                              firstChoice='لا';

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
                            child: Center(child: Text("لا",style: TextStyle(color:!isNo1? Colors.black:Colors.white,),)),
                          ),
                        )
                      ],
                    ),

                    const SizedBox(height: 20,),
                    const Padding(
                      padding: const EdgeInsets.only(left: 5.0,right: 5.0,bottom: 5),
                      child: Text("هل هناك إجهاض من قبل  ؟",style: TextStyle(fontSize: 14,fontFamily: 'myriadBold'),),
                    ),
                    const SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              isTrue2=!isTrue2;
                              isNo2=false;

                              secondChoice="نعم";

                            });
                          },
                          child: Container(
                            width: 170,
                            height:40,
                            decoration: BoxDecoration(
                              color:!isTrue2? Colors.white:primaryColor,
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
                            child: Center(child: Text("نعم",style: TextStyle(color:!isTrue2? Colors.black:Colors.white,),)),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              isNo2=!isNo2;
                              isTrue2=false;
                              secondChoice="لا";


                            });
                          },
                          child: Container(
                            width: 170,
                            height:40,
                            decoration: BoxDecoration(
                              color:!isNo2? Colors.white:primaryColor,
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
                            child: Center(child: Text("لا",style: TextStyle(color:!isNo2? Colors.black:Colors.white, ),)),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20,),

                    const Padding(
                      padding: const EdgeInsets.only(left: 5.0,right: 5.0,bottom: 5),
                      child: Text("الحالة الصحية للام",style: TextStyle(fontSize: 14,fontFamily: 'myriadBold'),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),

                      child: AppTextField(
                        textFieldType: TextFieldType.NAME,
                        controller: passwordCont,
                        focus: passwordFocus,
                        nextFocus: passwordFocus,
                        title: '',
                        maxLines: 5,
                        errorThisFieldRequired: "This Field is required",
                        decoration: inputDecoration(context, labelText: "",),
                        //suffix: Icon(Icons.code,size: 17,color: Colors.grey.withOpacity(0.8),),
                        autoFillHints: [AutofillHints.email],
                      ),
                    ),

                    const SizedBox(height: 5,),
                    GestureDetector(
                      onTap: (){
                        if(_formKey.currentState!.validate() && firstChoice!=null && secondChoice!=null ){
                          push(context: context, screen: PregrencyStep2());
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
                              child: Center(child: const Text("التالي",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600,fontFamily: 'myriad'),)),
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
