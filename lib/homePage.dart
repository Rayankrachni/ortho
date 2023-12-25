import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:orthophonienewversion/pages/Creation/generalInfo/generalInformation.dart';
import 'package:orthophonienewversion/utils/app-navigator.dart';
import 'package:orthophonienewversion/utils/app-toast.dart';
import 'package:orthophonienewversion/utils/appTextField.dart';
import 'package:orthophonienewversion/utils/common.dart';

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
      appBar: AppBar(
        backgroundColor: primaryColor,
        automaticallyImplyLeading: false,
      ),
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

                      const SizedBox(height: 20,),
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
                            Text("اهلا انا هديل ",style: TextStyle(color: primaryColor,fontSize: 25,fontWeight: FontWeight.bold),),
                            Text(" مختصة ارطوفونية ",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
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


                            SizedBox(height: 30,),
                            Text("سعدت بمعرفتك",style: TextStyle(color: pink,fontSize: 20,fontWeight: FontWeight.bold),),
                            SizedBox(height:20,),
                            Text(" انت الان في رحلة معنا ليست بطويلة",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                            SizedBox(height: 20,),
                            Center(child: Text("هل انت مستعد؟",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),)),
                            SizedBox(height: 10,),
                            Center(child: Text("اضغط على الزر أدناه لمتابعة التقييم",style: TextStyle(color: Colors.black,fontSize: 14,),)),
                            SizedBox(height: 20,),
                          ],
                        )
                      ),
                    SizedBox(height: 40,),
                    GestureDetector(
                      onTap: (){
                        if(_formKey.currentState!.validate() ){
                          push(context: context, screen: GeneralInfo());
                        }else{
                         ToastHelper.showToast(msg: "يرجى إدخال الاسم", backgroundColor:pink);
                        }

                      },
                      child: Container(
                        width: width*0.9,
                        height: 70,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient:const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [pinklight,pink,Colors.pink],

                          ),
                        ),
                        child: Center(child: Text("إبدأ",style: TextStyle(color: Colors.white,fontSize: 22),)),
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
