import 'package:flutter/material.dart';
import 'package:orthophonienewversion/model/language-dev2-model.dart';
import 'package:orthophonienewversion/provider/save-date-provider.dart';
import 'package:orthophonienewversion/utils/app-toast.dart';
import 'package:orthophonienewversion/utils/config.dart';
import 'package:provider/provider.dart';
class SocialInteractionsCreation extends StatefulWidget {
  const SocialInteractionsCreation({super.key});

  @override
  State<SocialInteractionsCreation> createState() => _SocialInteractionsCreationState();
}

class _SocialInteractionsCreationState extends State<SocialInteractionsCreation> {


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


  bool? firstChoice;
  bool? secondChoice;
  bool? thirdChoice;
  bool? fourth;
  String? fifth;
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
                  const CircleAvatar(
                    radius: 70,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("assets/language.png"),
                  ),
                  const  Text("النمو الوجداني",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold,fontSize: 20 ,fontFamily: 'myriadBold' ),),
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



                  const SizedBox(height: 20,),



                  //ماهي؟
                  const Align(
                    alignment: Alignment.topRight,
                    child:  Padding(
                      padding:  EdgeInsets.only(left: 10.0,right: 10.0,bottom: 5),
                      child: Text("هل يلعب مع الآخرين ",style: TextStyle(fontSize: 11,fontFamily: 'myriadBold'),),
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
                      GestureDetector(
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
                  SizedBox(height: 20,),

                  const  Align(
                    alignment: Alignment.topRight,
                    child:  Padding(
                      padding:  EdgeInsets.only(left: 10.0,right: 10.0,bottom: 5),
                      child: Text("هل له علاقات  متعددة ",style: TextStyle(fontSize: 11,fontFamily: 'myriadBold'),),
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
                              isTrue3=!isTrue3;
                              isNo3=false;
                              thirdChoice=true;
                            });
                          },
                          child: Container(
                            width: width*0.4,
                            height: height*0.05,
                            decoration: BoxDecoration(
                              color:!isTrue3? Colors.white:primaryColor,
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
                            child: Center(child: Text("نعم",style: TextStyle(color:!isTrue3? Colors.black:Colors.white, ),)),
                          ),
                        ),
                      ), 
                      Flexible(
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              isNo3=!isNo3;
                              isTrue3=false;
                        
                              thirdChoice=false;
                            });
                          },
                          child: Container(
                            width: width*0.4,
                            height: height*0.05,
                            decoration: BoxDecoration(
                              color:!isNo3? Colors.white:primaryColor,
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
                            child: Center(child: Text("لا",style: TextStyle(color:!isNo3? Colors.black:Colors.white,),)),
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
                      child: Text("هل يستعمل العدوانية في اللعب ",style: TextStyle(fontSize: 11,fontFamily: 'myriadBold'),),
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
                              isTrue4=!isTrue4;
                              isNo4=false;
                        
                              fourth=true;
                            });
                          },
                          child: Container(
                            width: width*0.4,
                            height: height*0.05,
                            decoration: BoxDecoration(
                              color:!isTrue4? Colors.white:primaryColor,
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
                            child: Center(child: Text("نعم",style: TextStyle(color:!isTrue4? Colors.black:Colors.white, ),)),
                          ),
                        ),
                      ),
                      Flexible(
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              isNo4=!isNo4;
                              isTrue4=false;
                              fourth=false;
                            });
                          },
                          child: Container(
                            width: width*0.4,
                            height: height*0.05,
                            decoration: BoxDecoration(
                              color:!isNo4? Colors.white:primaryColor,
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
                            child: Center(child: Text("لا",style: TextStyle(color:!isNo4? Colors.black:Colors.white,),)),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),


                  GestureDetector(
                    onTap: (){


                      if(formKey.currentState!.validate() && firstChoice!=null && secondChoice!=null && thirdChoice!=null && fourth!=null ){


                        LanguageDevModel2 model= LanguageDevModel2(
                          hasRelations:thirdChoice ,
                          isAggressive:fourth ,
                          isPlayer:secondChoice ,
                          isSocial:firstChoice ,
                        );
                        provider.updateLanguageDev2(model);
                        provider.socialInteractions(model, context);

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
