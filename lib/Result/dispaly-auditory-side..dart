


import 'package:flutter/material.dart';
import 'package:orthophonienewversion/provider/save-date-provider.dart';
import 'package:orthophonienewversion/utils/config.dart';
import 'package:provider/provider.dart';

class DisplayAuditorySide extends StatefulWidget {
  const DisplayAuditorySide({super.key});

  @override
  State<DisplayAuditorySide> createState() => _DisplayAuditorySideState();
}

class _DisplayAuditorySideState extends State<DisplayAuditorySide> {
  @override
  Widget build(BuildContext context) {
    final  height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Consumer<FormDataProvider>(
        builder: (context, formDataProvider, child) {
          return Directionality(
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

                          child:Text(' ${formDataProvider.audioModel.parenthearingImpairment}'),),
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

                          child:Text('  ${formDataProvider.audioModel.hearingCapabilities} سنوات '),),
                      ),
                    ),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
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

                                  child:Text('  ${formDataProvider.audioModel.typeHearingImpairment}'),),
                              ),
                            ),
                          ],
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

                                  child:Text('  ${formDataProvider.audioModel.hearingInfo}'),),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),


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

                          child:Text(' درجة الصمم: ${formDataProvider.audioModel.hearingCapabilities} DB'),),
                      ),
                    ),



                    if(formDataProvider.audioModel.treatment=="نعم")

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

                                    child:Text('  ${formDataProvider.audioModel.treatmentType}'),),
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

                                    child:Text('  ${formDataProvider.audioModel.treatmentDate}'),),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding:  EdgeInsets.all(8.0),
                                child: Text('هل هو صمم:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
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

                                    child:Text(' ${formDataProvider.audioModel.type}'),),
                                ),
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

                                    child:Text(' ${formDataProvider.audioModel.affectedEars}'),),
                                ),
                              ),
                            ],
                          )
                        ],
                      )



                    //


                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
