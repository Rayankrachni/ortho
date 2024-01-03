


import 'package:flutter/material.dart';
import 'package:orthophonienewversion/model/general-info-model.dart';
import 'package:orthophonienewversion/pages/Result/display-diseases-nervous-system.dart';
import 'package:orthophonienewversion/provider/save-date-provider.dart';
import 'package:orthophonienewversion/utils/app-navigator.dart';
import 'package:orthophonienewversion/utils/config.dart';
import 'package:provider/provider.dart';

class DisplayAuditorySide extends StatefulWidget {

  final GeneralInfoModel model;

  const DisplayAuditorySide({super.key, required this.model});


  @override
  State<DisplayAuditorySide> createState() => _DisplayAuditorySideState();
}

class _DisplayAuditorySideState extends State<DisplayAuditorySide> {
  @override
  Widget build(BuildContext context) {
    final  height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
      //
      appBar:AppBar(
        //
        backgroundColor: Colors.white,
        title: Text("الجانب السمعي",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),),
        centerTitle: true,

        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: (){
                push(context: context, screen: DisplayDiseasesNervousSystem(model: widget.model,));
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

                const Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Text('متى شك الأولياء في العجز السمعي: ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                ),
                Padding(
                    padding: const EdgeInsets.all(10.0),

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

                      child:Text(' ${widget.model.hearing_impairments![0].firstNotice}'),),
                  ),
                ),



                const Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Text('سن إكتشاف الصمم: ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),

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

                      child:Text('  ${widget.model.hearing_impairments![0].deafnessDiscoveryAge} سنوات '),),
                  ),
                ),


                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    const Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: Text('نوع الإعاقة السمعية:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
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

                          child:Text('  ${widget.model.hearing_impairments![0].therapyHirringType}'),),
                      ),
                    ),
                  ],
                ),
                Column(

                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [

                      const Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: Text('صمم:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                    ),
                      Padding(
                      padding: const EdgeInsets.all(10.0),
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

                          child:Text('  ${widget.model.hearing_impairments![0].deafType}'),),
                      ),
                    ),
                  ],
                ),

                const Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Text('درجة الصمم:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
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
                       // ${formDataProvider.audioModel.deafnessDegree}
                      child:Text('   2DB'),),
                  ),
                ),



                if(widget.model.hearing_impairments![0].therapyHirring==true)

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          const Padding(
                            padding:  EdgeInsets.all(8.0),
                            child: Text('نوع التجهيز:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                          ),
                          Padding(

                            padding: const EdgeInsets.all(10.0),
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

                                child:Text('  ${widget.model.hearing_impairments![0].therapyHirringType}'),),
                            ),
                          ),
                        ],
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding:  EdgeInsets.all(8.0),
                            child: Text('تاريخ التجهيز:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
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

                                child:Text('  ${widget.model.hearing_impairments![0].therapyHirringType}'),),
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
                      padding:  EdgeInsets.all(8.0),
                      child: Text('الاذن المصابة:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
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

                          child:Text(' ${widget.model.hearing_impairments![0].affectedEar}'),),
                      ),
                    ),
                  ],
                )
 ],
                  )



                //




          ),
        ),
      ),
    );
  }
}
