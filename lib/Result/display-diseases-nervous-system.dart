




import 'package:flutter/material.dart';
import 'package:orthophonienewversion/provider/save-date-provider.dart';
import 'package:orthophonienewversion/utils/config.dart';
import 'package:provider/provider.dart';

class DisplayDiseasesNervousSystem extends StatefulWidget {
  const DisplayDiseasesNervousSystem({super.key});

  @override
  State<DisplayDiseasesNervousSystem> createState() => _DisplayDiseasesNervousSystemState();
}

class _DisplayDiseasesNervousSystemState extends State<DisplayDiseasesNervousSystem> {
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
                      child: Text('التهاب الدماغ:  ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
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

                          child:Text(' التهاب السحايا: ${formDataProvider.diseaseModel.meningitis}'),),
                      ),
                    ),
                    const Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: Text('التهاب الدماغ:  ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
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

                          child:Text('  ${formDataProvider.diseaseModel.encephalitis}'),),
                      ),
                    ),


                    const Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: Text('  متى أصيب بالصرع؟  ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
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
                          child: Text(' ${formDataProvider.diseaseModel.developEpilepsyTime}'),
                        ),
                      ),
                    ),

                    const Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: Text('   متى تحدث له النوبات: ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
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
                          child: Text(' ${formDataProvider.diseaseModel.seizuresOccurTime}'),
                        ),
                      ),
                    ),
                    //
                    const Padding(
                      padding:  EdgeInsets.only(left: 15.0,right: 15.0,top: 5,bottom: 5),
                      child: Text("هل الطفل كثير الإصابة بالتهاب اللوزتين و الجيوب الأنفية والتهاب الاذن؟",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
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
                          child: Text(' ${formDataProvider.diseaseModel.hasTonsillitis}'),
                        ),
                      ),
                    ),
                    const Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: Text('  هل أخذ كل التطعيمات بانتظام ؟  ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
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
                          child: Text(' ${formDataProvider.diseaseModel.takeVaccinations}'),
                        ),
                      ),
                    ),
                   /* const Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: Text('  الفحوصات التي قام بها: ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
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
                          child: Text('  ${formDataProvider.diseaseModel.undergoneRegarding}'),
                        ),
                      ),
                    ),*/

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
