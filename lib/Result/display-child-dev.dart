


import 'package:flutter/material.dart';
import 'package:orthophonienewversion/provider/save-date-provider.dart';
import 'package:orthophonienewversion/utils/config.dart';
import 'package:provider/provider.dart';

class DisplayChildDev extends StatefulWidget {
  const DisplayChildDev({super.key});

  @override
  State<DisplayChildDev> createState() => _DisplayChildDevState();
}

class _DisplayChildDevState extends State<DisplayChildDev> {
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

                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            width:width*0.4,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: primaryColor.withOpacity(0.3)
                                )
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),

                              child:Text(' سن الابتسامة:${formDataProvider.sensorimotorDevelopment.smilAge}'),),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            width:width*0.4,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: primaryColor.withOpacity(0.3)
                                )
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),

                              child:Text('سن الجلوس ${formDataProvider.sensorimotorDevelopment.sittingAge}'),),
                          ),
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            width:width*0.4,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: primaryColor.withOpacity(0.3)
                                )
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),

                              child:Text(' سن الحبو:${formDataProvider.sensorimotorDevelopment.crawlingAge}'),),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            width:width*0.4,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: primaryColor.withOpacity(0.3)
                                )
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),

                              child:Text(' سن المشي${formDataProvider.sensorimotorDevelopment.walkingAge}'),),
                          ),
                        ),
                      ],
                    ),



                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        width:width,

                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: primaryColor.withOpacity(0.3)
                            )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(' اكتساب النظافة ${formDataProvider.sensorimotorDevelopment.personalHygieneAcquisition}'),
                        ),
                      ),
                    ),

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
