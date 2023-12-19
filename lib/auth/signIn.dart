import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:orthophonienewversion/homePage.dart';
import 'package:orthophonienewversion/utils/app-navigator.dart';
import 'package:orthophonienewversion/utils/appTextField.dart';
import 'package:orthophonienewversion/utils/common.dart';
import 'package:orthophonienewversion/utils/config.dart';

class SignInScreen extends StatelessWidget {
   SignInScreen({super.key});

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController emailCont = TextEditingController();
  TextEditingController passwordCont = TextEditingController();

  FocusNode emailFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();

  bool isRemember = true;
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: primaryColor,
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            
            child: Container(

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Form(
                key: formKey,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [


                        SizedBox(
                            height:height*0.15,
                            child: Lottie.asset('assets/lottie/login.json')),
                       // Center(child: Image.asset("assets/onboarding1.png",height:height*0.4 ,width: width*0.6,)),
                        const  Text("تسجيل الدخول باستخدام حسابك ",style: TextStyle(color: Colors.black,fontSize: 20,fontFamily: 'myriadBold'  ),),
                        const SizedBox(height: 10,),
                        Text("يرجى إدخال كل المعلومات المطلوبة",style: TextStyle(color: Colors.grey.withOpacity(0.8),fontSize: 12,fontFamily: 'myriad'  ),),
                        const SizedBox(height:10,),

                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: AppTextField(
                            textFieldType: TextFieldType.EMAIL_ENHANCED,
                            controller: emailCont,
                            title: 'البريد الإلكتروني ',

                            focus: emailFocus,
                            nextFocus: passwordFocus,
                            errorThisFieldRequired: "This Field is required",
                            decoration: inputDecoration(context, labelText: "البريد الإلكتروني "),
                            suffix: Icon(Icons.email,size: 17,color: Colors.grey.withOpacity(0.8),),
                            autoFillHints: [AutofillHints.email],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),

                          child: AppTextField(
                            textFieldType: TextFieldType.NAME,
                            controller: passwordCont,
                            focus: passwordFocus,
                            nextFocus: passwordFocus,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'This Field is required';
                              } else if (!RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$').hasMatch(value)) {
                                return 'Enter a valid email address';
                              }
                              return null; // Return null if the validation passes
                            },
                            title: 'الرمز السري',
                            errorThisFieldRequired: "This Field is required",
                            decoration: inputDecoration(context, labelText: "الرمز السري",),
                            suffix: Icon(Icons.code,size: 17,color: Colors.grey.withOpacity(0.8),),
                            autoFillHints: [AutofillHints.email],
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            if(formKey.currentState!.validate()){
                              push(context: context, screen: HomePage());
                            }

                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SizedBox(
                              height: 50,
                              width: width,
                              child:Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    gradient:const LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [pinklight,pink,Colors.pink],

                                    ),
                                  ),
                                child:const Center(child:  Text("تسجيل ",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700,fontFamily: 'myriad'),)),
                              )
                            ),
                          ),
                        ),

                        Text("او التسجيل عن طريق ",style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 14  ),),
                        const SizedBox(height: 20,),
                        Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: width*0.35,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    spreadRadius: 2,
                                    blurRadius: 3,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(8), // Adjust the radius value as needed
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/google.png",height:height*0.03,),
                                  SizedBox(width: 10,),
                                  const Text("Google",style: TextStyle(fontFamily: 'myriad',fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ),
                            const SizedBox(width: 20,),
                            Container(
                              width: width*0.35,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,

                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    spreadRadius: 2,
                                    blurRadius: 3,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(8), // Adjust the radius value as needed
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/facebook.png",
                                    height: height * 0.03,
                                  ),
                                  SizedBox(width: 10,),
                                  Text("facebook",style: TextStyle(fontFamily: 'myriad',fontWeight: FontWeight.bold),)
                                ],
                              ),
                            )

                          ],
                        ),
                        const SizedBox(height: 40,),

                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),

    );
  }
}
