import 'package:flutter/material.dart';
import 'package:orthophonienewversion/homePage.dart';
import 'package:orthophonienewversion/model/language-dev-model.dart';
import 'package:orthophonienewversion/pages/Creation/childDev/languageDev2.dart';
import 'package:orthophonienewversion/provider/save-date-provider.dart';
import 'package:orthophonienewversion/utils/app-navigator.dart';
import 'package:orthophonienewversion/utils/app-toast.dart';
import 'package:orthophonienewversion/utils/appTextField.dart';
import 'package:orthophonienewversion/utils/common.dart';
import 'package:orthophonienewversion/utils/config.dart';
import 'package:provider/provider.dart';
class languageDevPage extends StatefulWidget {
  const languageDevPage({super.key});

  @override
  State<languageDevPage> createState() => _ChildDevPage1State();
}

class _ChildDevPage1State extends State<languageDevPage> {

  TextEditingController homeLanguage = TextEditingController();
  TextEditingController bubbling = TextEditingController();
  TextEditingController firstWord = TextEditingController();
  TextEditingController talk= TextEditingController();
  TextEditingController firstPhrase = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();



  bool isTrue0=false;
  bool  isNo0=false;


  bool isTrue1=false;
  bool  isNo1=false;


  bool isTrue4=false;
  bool  isNo4=false;

  bool isTrue3=false;
  bool  isNo3=false;

  bool isTrue5=false;
  bool  isNo5=false;


  bool multichoice1=false;
  bool multichoice2=false;
  bool multichoice3=false;


  String? firstChoice;
  String? secondChoice;
  String? thirdChoice;
  String? fourth;
  bool? fifth;
  String? multiChoice;

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
            decoration:const BoxDecoration(
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
                    radius: 70,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("assets/language.png"),
                  ),*/
                  const  Text("النمو اللغوي",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold,fontSize: 20 ,fontFamily: 'myriadBold' ),),
                  const SizedBox(height: 5,),






                  Padding(
                    padding: const EdgeInsets.all(10.0),

                    child: AppTextField(
                      textFieldType: TextFieldType.NAME,
                      controller: homeLanguage,

                      title: 'اللغة المعتمد عليها في المنزل',
                      errorThisFieldRequired: "This Field is required",
                      decoration: inputDecoration(context, labelText: "اللغة المعتمد عليها في المنزل",),
                      //suffix: Icon(Icons.code,size: 17,color: Colors.grey.withOpacity(0.8),),
                      autoFillHints: [AutofillHints.email],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                      
                        child: SizedBox(
                          width: width*0.4,
                          child: AppTextField(
                            textFieldType: TextFieldType.NAME,
                            controller: bubbling,
                      
                            title: 'المناغاة ',
                            errorThisFieldRequired: "This Field is required",
                            decoration: inputDecoration(context, labelText: "المناغاة",),
                            //suffix: Icon(Icons.code,size: 17,color: Colors.grey.withOpacity(0.8),),
                            autoFillHints: [AutofillHints.email],
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SizedBox(
                          width: width*0.4,
                          child: AppTextField(
                            textFieldType: TextFieldType.NAME,
                            controller: firstWord,
                            title: 'الكلمة الاولى',
                      
                            errorThisFieldRequired: "This Field is required",
                            decoration: inputDecoration(context, labelText: "الكلمة الاولى"),
                            // suffix: Icon(Icons.email,size: 17,color: Colors.grey.withOpacity(0.8),),
                            autoFillHints: [AutofillHints.email],
                          ),
                        ),
                      ),
                    ),
                  ],),

                  const Align(
                    alignment: Alignment.topRight,
                    child:  Padding(
                      padding:  EdgeInsets.only(left: 10.0,right: 10.0,bottom: 5),
                      child: Text("هل لديه بوادر في الكلام ",style: TextStyle(fontSize: 11,fontFamily: 'myriadBold'),),
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
                              isTrue5=!isTrue5;
                              isNo5=false;
                              fifth=true;

                            });
                          },
                          child: Container(
                            width: width*0.4,
                            height: height*0.05,
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
                            child: Center(child: Text("نعم",style: TextStyle(color:!isTrue5? Colors.black:Colors.white, ),)),
                          ),
                        ),
                      ),
                      Flexible(
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              isNo5=!isNo5;
                              isTrue5=false;
                              fifth=false;
                            });
                          },
                          child: Container(
                            width: width*0.4,
                            height: height*0.05,
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
                            child: Center(child: Text("لا",style: TextStyle(color:!isNo5? Colors.black:Colors.white,),)),
                          ),
                        ),
                      )
                    ],
                  ),
                  if(isTrue5)Padding(
                    padding: const EdgeInsets.all(10.0),

                    child: AppTextField(
                      textFieldType: TextFieldType.NAME,
                      controller: talk,

                      title: 'ماهي؟',
                      errorThisFieldRequired: "This Field is required",
                      decoration: inputDecoration(context, labelText: " ",),
                      //suffix: Icon(Icons.code,size: 17,color: Colors.grey.withOpacity(0.8),),
                      autoFillHints: [AutofillHints.email],
                    ),
                  ),
                  //ماهي؟
                  Padding(
                    padding: const EdgeInsets.all(10.0),

                    child: AppTextField(
                      textFieldType: TextFieldType.NAME,
                      controller: firstPhrase,

                      title: 'الجملة الاولى',
                      errorThisFieldRequired: "This Field is required",
                      decoration: inputDecoration(context, labelText: "الجملة الاولى ",),
                      //suffix: Icon(Icons.code,size: 17,color: Colors.grey.withOpacity(0.8),),
                      autoFillHints: [AutofillHints.email],
                    ),
                  ),

                  SizedBox(height: 20,),

                  Align(
                    alignment: Alignment.topRight,
                    child: const Padding(
                      padding:  EdgeInsets.only(left: 10.0,right: 10.0,bottom: 5),
                      child: Text("نوع الكلام عند الطفل",style: TextStyle(fontSize: 11,fontFamily: 'myriadBold'),),
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
                              multichoice1=!multichoice1;
                              multichoice2=false;
                              multichoice3=false;
                              multiChoice="ايماءات";
                            });
                          },
                          child: Container(
                            width: width*0.25,
                            height: height*0.05,
                            decoration: BoxDecoration(
                              color:!multichoice1? Colors.white:primaryColor,
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
                            child: Center(child: Text("ايماءات",style: TextStyle(color:!multichoice1? Colors.black:Colors.white, ),)),
                          ),
                        ),
                      ),
                      Flexible(
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              multichoice2=!multichoice2;
                              multichoice1=false;
                              multichoice3=false;
                              multiChoice="إشارات ";
                        
                            });
                          },
                          child: Container(
                            width: width*0.25,
                            height: height*0.05,
                            decoration: BoxDecoration(
                              color:!multichoice2? Colors.white:primaryColor,
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
                            child: Center(child: Text("إشارات ",style: TextStyle(color:!multichoice2? Colors.black:Colors.white,),)),
                          ),
                        ),
                      ),
                      Flexible(
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              multichoice3=!multichoice3;
                              multichoice2=false;
                              multichoice1=false;
                              multiChoice="تعيين";
                            });
                          },
                          child: Container(
                            width: width*0.25,
                            height: height*0.05,
                            decoration: BoxDecoration(
                              color:!multichoice3? Colors.white:primaryColor,
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
                            child: Center(child: Text("تعيين",style: TextStyle(color:!multichoice3? Colors.black:Colors.white,),)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),

                  SizedBox(height: 10,),

                  SizedBox(height: 10,),


                  GestureDetector(
                    onTap: (){


                      if(formKey.currentState!.validate()  && fifth!=null ){
                        LanguageDevModel model= LanguageDevModel(
                          babbling: bubbling.text,
                          firstPhrase:firstPhrase.text ,
                          isTalking:fifth ,
                          firstWord: firstPhrase.text,
                          language: homeLanguage.text,
                          talk: talk.text,
                          talkType: multiChoice,
                        );
                        provider.updateLanguageDev(model);
                        provider.languageDevelopments(model, context);

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
