


import 'package:flutter/material.dart';
import 'package:orthophonienewversion/model/general-info-model.dart';
import 'package:orthophonienewversion/pages/Result/display-language-dev.dart';
import 'package:orthophonienewversion/provider/save-date-provider.dart';
import 'package:orthophonienewversion/utils/app-navigator.dart';
import 'package:orthophonienewversion/utils/config.dart';
import 'package:provider/provider.dart';

class DisplayChildDev extends StatefulWidget {
   GeneralInfoModel model;

   DisplayChildDev({super.key, required this.model});


  @override
  State<DisplayChildDev> createState() => _DisplayChildDevState();
}

class _DisplayChildDevState extends State<DisplayChildDev> {
  @override
  Widget build(BuildContext context) {
    final  height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar:AppBar(
        //النمو الوجداني
        backgroundColor: Colors.white,
        title:const Text("الجانب الحسي",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),),
        centerTitle: true,

        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: (){

               Navigator.push(context, MaterialPageRoute(builder: (BuildContext context )=>DisplayLanguageDev(model: widget.model) ));

              },
              child: Container(
                height: 30,
                width: 30,
                decoration:const BoxDecoration(
                  shape: BoxShape.circle,
                  color: pink,
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
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding:  EdgeInsets.all(8.0),
                          child: Text(' سن الابتسامة:  ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0,right: 15.0,top: 5,bottom: 5),
                          child: Container(
                            width:width*0.4,
                            height: 40,
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

                              child:Text('${widget.model.developmental_milestones![0].smilAge} (اشهر) ',style: TextStyle(fontSize: 12),),),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding:  EdgeInsets.all(8.0),
                          child: Text(' سن الجلوس:  ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0,right: 15.0,top: 5,bottom: 5),
                          child: Container(
                            width:width*0.4,

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

                              child:Text(' ${widget.model.developmental_milestones![0].sittingAge} (اشهر) ',style: TextStyle(fontSize: 12) ),),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding:  EdgeInsets.all(8.0),
                          child: Text('سن الحبو:  ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0,right: 15.0,top: 5,bottom: 5),
                          child: Container(
                            width:width*0.4,

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

                              child:Text(' ${widget.model.developmental_milestones![0].crawlingAge} (اشهر) ',style: TextStyle(fontSize: 12)),),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding:  EdgeInsets.all(8.0),
                          child: Text('سن المشي ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0,right: 15.0,top: 5,bottom: 5),
                          child: Container(
                            width:width*0.4,

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

                              child:Text(' ${widget.model.developmental_milestones![0].walkingAge}  (اشهر) ',style: TextStyle(fontSize: 12)),),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 15.0,top: 5,bottom: 5),
                      child: Text('اكتساب النظافة',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 15.0,top: 5,bottom: 5),
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
                          child: Text('  ${widget.model.developmental_milestones![0].personalHygieneAcquisition}',style: TextStyle(fontSize: 12)),
                        ),
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
