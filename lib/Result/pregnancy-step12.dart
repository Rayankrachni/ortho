


import 'package:flutter/material.dart';
import 'package:orthophonienewversion/provider/save-date-provider.dart';
import 'package:orthophonienewversion/utils/config.dart';
import 'package:provider/provider.dart';

class PregnancyStep12 extends StatefulWidget {
  const PregnancyStep12({super.key});

  @override
  State<PregnancyStep12> createState() => _PregnancyState();
}

class _PregnancyState extends State<PregnancyStep12> {
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
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding:  EdgeInsets.all(10),
                                child: Text(' عمر الام : ',style: TextStyle(fontWeight: FontWeight.bold),),
                              ),
                              Container(
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
                                child: Center(child: Text(' ${formDataProvider.pregnancyStep1Model.motherAge}')),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding:  EdgeInsets.all(10),
                                child: Text(' الحمل طبيعي : ',style: TextStyle(fontWeight: FontWeight.bold),),
                              ),
                              Container(
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
                                child: Center(child: Text(' ${formDataProvider.pregnancyStep1Model.normalPregnancy}')),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: Text(' الحالة النفسية للام:  ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:15.0,right: 15.0,top: 8,bottom: 8),
                      child: Container(
                        width:width,
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

                          child:Text('${formDataProvider.pregnancyStep1Model.motherPsychology}'),),
                      ),
                    ),

                    const Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: Text(' هل كان عدم توافق عامل الريزوس؟  ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left:15.0,right: 15.0,top: 8,bottom: 8),

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
                          child:  Text(' ${formDataProvider.pregnancyStep1Model.rh}'),),
                      ),
                    ),


                    if(formDataProvider.pregnancyStep1Model.medications=="نعم")Padding(
                      padding: const EdgeInsets.all(15.0),
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
                          child: Text('  الادوية   ؟  ${formDataProvider.pregnancyStep1Model.medicationType}'),
                        ),
                      ),
                    ),

                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding:  EdgeInsets.all(8.0),
                              child: Text(' هل الحمل مرغوب فيه ؟ ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(15.0),
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
                                  child: Text('    ${formDataProvider.pregnancyStep1Model.pregnancy}'),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding:  EdgeInsets.all(8.0),
                              child: Text(' هل ولد في الوقت المحدد  ؟ ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                            ),
                            //Step2
                            Padding(
                              padding: const EdgeInsets.all(15.0),
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
                                  child: Text(' ${formDataProvider.pregnancyStep2Model.pregnancyExactTime}'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    const Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: Text(' أمراض معينة أثناء الحمل ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
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
                          child: Text('   ${formDataProvider.pregnancyStep1Model.diseasePregnancy}'),
                        ),
                      ),
                    ),





                   Row(
                     children: [
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           const Padding(
                             padding:  EdgeInsets.all(8.0),
                             child: Text(' هل تم استعمال الملاقط؟ ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                           ),
                           Padding(
                             padding: const EdgeInsets.all(10.0),
                             child: Container(
                               width:width*0.42,

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
                                 child: Text('  ${formDataProvider.pregnancyStep2Model.lastInfo}',),
                               ),
                             ),
                           ),
                         ],
                       ),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           const Padding(
                             padding:  EdgeInsets.all(8.0),
                             child: Text(' طبيعية الولادة؟ ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                           ),
                           Padding(
                             padding: const EdgeInsets.all(10.0),
                             child: Container(
                               width:width*0.42,

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
                                 child: Text('  ${formDataProvider.pregnancyStep2Model.isNormal}',),
                               ),
                             ),
                           ),
                         ],
                       )
                     ],
                   )












                    // Display other form fields as needed
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
