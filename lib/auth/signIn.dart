import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:orthophonienewversion/auth/signUp.dart';
import 'package:orthophonienewversion/homePage.dart';
import 'package:orthophonienewversion/provider/save-date-provider.dart';
import 'package:orthophonienewversion/utils/app-navigator.dart';
import 'package:orthophonienewversion/utils/appTextField.dart';
import 'package:orthophonienewversion/utils/common.dart';
import 'package:orthophonienewversion/utils/config.dart';
import 'package:provider/provider.dart';

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
    final provider=Provider.of<FormDataProvider>(context);

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
                        Text("تسجيل الدخول باستخدام حسابك ",style: TextStyle(color: Colors.black,fontSize: height*0.026,fontFamily: 'myriadBold'  ),),
                        SizedBox(height:height*0.02,),
                        Text("يرجى إدخال كل المعلومات المطلوبة",style: TextStyle(color: Colors.grey.withOpacity(0.8),fontSize: width*0.035,fontFamily: 'myriad'  ),),
                        SizedBox(height:height*0.02,),


                        //TEXTFORMFIELD

                        Padding(
                          padding:  EdgeInsets.all(height*0.01),
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
                          padding:EdgeInsets.all(height*0.01),

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
                        SizedBox(height:height*0.02,),
                        !provider.isLoading?
                        GestureDetector(
                          onTap: (){
                            if(formKey.currentState!.validate()){
                              provider.loginWithEmail(emailCont.text,passwordCont.text,context);

                            }

                          },
                          child: Padding(
                            padding: EdgeInsets.all(height*0.01),
                            child: SizedBox(
                              height: height*0.06,
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
                                child: Center(child:  Text("تسجيل ",style: TextStyle(color: Colors.white,fontSize: height*0.022,fontWeight: FontWeight.w700,fontFamily: 'myriad'),)),
                              )
                            ),
                          ),
                        ):CircularProgressIndicator(color: primaryColor,),
                        SizedBox(height:height*0.02,),

                        //OTHERWAY TO REGISTER
                       // Text("او التسجيل عن طريق ",style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 14  ),),
                        SizedBox(height:height*0.02,),

                        TextButton(onPressed: (){
                          push(context: context, screen: SignUpScreen());
                        }, child:  const  Text("انشاء حساب جديد",style: TextStyle(color: primaryColor,fontSize:16 ,fontWeight: FontWeight.bold  ),),
                        ),


                        SizedBox(height: height*0.05,),
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
