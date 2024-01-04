import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:orthophonienewversion/pages/Creation/general-info-creation.dart';
import 'package:orthophonienewversion/utils/app-navigator.dart';
import 'package:orthophonienewversion/utils/app-toast.dart';
import 'package:orthophonienewversion/utils/appTextField.dart';
import 'package:orthophonienewversion/utils/common.dart';
import 'package:orthophonienewversion/completed-home-page.dart';

import '../../utils/config.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController name = TextEditingController();

  FocusNode nameFocus = FocusNode();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final  height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return  Scaffold(

      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          height:MediaQuery.of(context).size.height,
          width:MediaQuery.of(context).size.width,
          decoration:const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [blueColor,deepBlueColor,deepPurpleColor],
            ),
          ),
          child: Center(
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    SizedBox(height: height*0.05,),
                    Container(
                        width: width*0.9,
                       // height: 300,

                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          children: [
                            Align(
                              //assets/lottie/speech.json
                              alignment:Alignment.topRight,
                              child: SizedBox(
                                  height:height*0.1,
                                  child: Lottie.asset('assets/lottie/Animation.json')),
                            ),
                            Text("اهلا انا هديل ",style: TextStyle(color: primaryColor,fontSize: height*0.035,fontWeight: FontWeight.bold),),
                            Text(" مختصة ارطوفونية ",style: TextStyle(color: Colors.black,fontSize: height*0.025,fontWeight: FontWeight.bold),),
                            Padding(
                              padding:  EdgeInsets.all(height*0.02),
                              child: AppTextField(
                                textFieldType: TextFieldType.NAME,
                                controller: name,
                                title: 'ادخل الاسم اولا',


                                errorThisFieldRequired: "This Field is required",
                                decoration: inputDecoration(context, labelText: " اسمك"),
                                //  suffix: Icon(Icons.email,size: 17,color: Colors.grey.withOpacity(0.8),),
                                autoFillHints: [AutofillHints.email],
                              ),
                            ),


                            SizedBox(height: height*0.02,),
                            Text("سعدت بمعرفتك",style: TextStyle(color: pink,fontSize: height*0.023,fontWeight: FontWeight.bold),),
                            SizedBox(height: height*0.02,),
                            Text(" انت الان في رحلة معنا ليست بطويلة",style: TextStyle(color: Colors.black,fontSize: height*0.02,fontWeight: FontWeight.bold),),
                            SizedBox(height: height*0.02,),
                            Center(child: Text("هل انت مستعد؟",style: TextStyle(color: Colors.black,fontSize: height*0.02,fontWeight: FontWeight.bold),)),
                            SizedBox(height: height*0.02,),

                          ],
                        )
                      ),
                    SizedBox(height: height*0.02,),
                    Center(child: Text("اضغط على الزر أدناه لمتابعة التقييم",style: TextStyle(color: Colors.white,fontSize: height*0.02,),)),
                    SizedBox(height: height*0.02,),

                    GestureDetector(
                      onTap: (){
                        if(_formKey.currentState!.validate() ){

                          push(context: context, screen:  GeneralInfo());

                        }else{
                         ToastHelper.showToast(msg: "يرجى إدخال الاسم", backgroundColor:pink);
                        }

                      },
                      child: Container(
                        width: width*0.9,
                        height: height*0.07,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient:const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [pinklight,pink,Colors.pink],

                          ),
                        ),
                        child: Center(child: Text("إبدأ",style: TextStyle(color: Colors.white,fontSize: height*0.024),)),
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
