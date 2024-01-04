


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:orthophonienewversion/model/general-info-model.dart';
import 'package:orthophonienewversion/pages/Result/display-emotional-growth.dart';
import 'package:orthophonienewversion/provider/save-date-provider.dart';
import 'package:orthophonienewversion/utils/app-navigator.dart';
import 'package:orthophonienewversion/utils/config.dart';
import 'package:provider/provider.dart';

class DisplayLanguageDev extends StatefulWidget {
  final GeneralInfoModel model;

  const DisplayLanguageDev({super.key, required this.model});


  @override
  State<DisplayLanguageDev> createState() => _DisplayLanguageDevState();
}

class _DisplayLanguageDevState extends State<DisplayLanguageDev> {
  @override
  Widget build(BuildContext context) {
    final  height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("النمو اللغوي",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),),
        centerTitle: true,

        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: (){
                push(context: context, screen: DisplayEmotionalGrowth(model: widget.model,));
              },
              child: Container(
                height: 30,
                width: 30,
                decoration:const BoxDecoration(
                  shape: BoxShape.circle,
                  color: primaryColor,
                ),
                child: Icon(Icons.arrow_forward,color: Colors.white,size: 17),
              ),
            ),
          ),

        ],

        iconTheme:const IconThemeData(
            color: Colors.white
        ),
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.only(left:15.0,right: 15.0),
            child: Container(
              height: 20,
              width: 20,
              decoration:const BoxDecoration(
                shape: BoxShape.circle,
                color: primaryColor,
              ),
              child:const Icon(Icons.arrow_back,size: 17,),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding:  EdgeInsets.all(width*0.02),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: SizedBox(
                      height:height*0.25,
                      child: Image.asset("assets/language.png")),
                ),
                SizedBox(height: height*0.05,),
                 Padding(
                  padding:  EdgeInsets.only(right:width*0.02),
                  child: Row(
                    children: [
                      Icon(Icons.language,size: 17,color: primaryColor,),
                       SizedBox(width: width*0.01,),
                      Text(' اللغة المعتمد عليها في المنزل:  ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.all(width*0.02),
                  child: Container(
                    width:width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1), // Shadow color
                          spreadRadius: 2, // Spread radius
                          blurRadius: 5, // Blur radius
                          offset: Offset(0, 3), // Offset from the top
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),

                      child:Text(' ${widget.model.language_developments![0].language}'),),
                  ),
                ),


                 Padding(
                  padding:  EdgeInsets.only(right:width*0.02),
                  child: Row(
                    children: [
                      Icon(CupertinoIcons.text_bubble,size: 17,color: primaryColor,),
                      SizedBox(width: width*0.01,),
                      Text(' المناغاة:  ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.all(width*0.02),
                  child: Container(
                    width:width,

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1), // Shadow color
                          spreadRadius: 2, // Spread radius
                          blurRadius: 5, // Blur radius
                          offset: Offset(0, 3), // Offset from the top
                        ),
                      ],
                    ),
                    child: Padding(
                      padding:  EdgeInsets.all(width*0.03),

                      child:Text('  ${widget.model.language_developments![0].babbling}'),),
                  ),
                ),

                 Padding(
                  padding:  EdgeInsets.only(right: width*0.03),
                  child: Row(
                    children: [
                      Icon(CupertinoIcons.text_bubble,size: 17,color: primaryColor,),
                      SizedBox(width: width*0.01,),
                      Text(' الكلمة الاولى:  ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.all(width*0.03),
                  child: Container(
                    width:width,

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1), // Shadow color
                          spreadRadius: 2, // Spread radius
                          blurRadius: 5, // Blur radius
                          offset: Offset(0, 3), // Offset from the top
                        ),
                      ],
                    ),
                    child: Padding(
                      padding:  EdgeInsets.all(width*0.03),

                      child:Text('  ${widget.model.language_developments![0].firstWord}'),),
                  ),
                ),


                 Padding(
                  padding:  EdgeInsets.only(right: width*0.03),
                  child: Row(
                    children: [
                      Icon(CupertinoIcons.text_bubble,size: 17,color: primaryColor,),
                      SizedBox(width: width*0.01,),
                      Text(' الجملة الاولى:  ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.all(width*0.02),
                  child: Container(
                    width:width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1), // Shadow color
                          spreadRadius: 2, // Spread radius
                          blurRadius: 5, // Blur radius
                          offset: Offset(0, 3), // Offset from the top
                        ),
                      ],
                    ),
                    child: Padding(
                      padding:  EdgeInsets.all(width*0.02),

                      child:Text('  ${widget.model.language_developments![0].firstPhrase}'),),
                  ),
                ),



                if(widget.model.language_developments![0].isTalking==true) Padding(
                  padding:  EdgeInsets.all(width*0.02),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding:  EdgeInsets.only(right: 8.0),
                        child: Text(' بوادر في الكلام:  ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                      ),
                      Container(
                        width:width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1), // Shadow color
                              spreadRadius: 2, // Spread radius
                              blurRadius: 5, // Blur radius
                              offset: Offset(0, 3), // Offset from the top
                            ),
                          ],
                        ),
                        child: Padding(
                          padding:  EdgeInsets.all(width*0.02),

                          child:SizedBox(
                              width:width*0.6,
                              child: Text('   ${widget.model.language_developments![0].talk}',overflow: TextOverflow.ellipsis,)),),
                      ),
                    ],
                  ),
                ),


                //


              ],
            ),
          ),
        ),
      ),
    );
  }
}
