import 'package:flutter/material.dart';
import 'package:orthophonienewversion/provider/save-date-provider.dart';
import 'package:orthophonienewversion/utils/config.dart';
import 'package:provider/provider.dart';



class FamilyInfoDisplay extends StatelessWidget {
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
              padding: const EdgeInsets.all(8.0),
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
                                padding:  EdgeInsets.all(8.0),
                                child: Text('اسم الأب: ',style: TextStyle(fontWeight: FontWeight.bold),),
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
                                child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('  ${formDataProvider.completeFamilyInfo.model!.fatherName }')),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding:  EdgeInsets.all(8.0),
                                child: Text('سن الأب: ',style: TextStyle(fontWeight: FontWeight.bold),),
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
                                child:  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(' ${formDataProvider.completeFamilyInfo.model!.fatherAge}')),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding:  EdgeInsets.all(15.0),
                              child: Text('مستوى الأب التعليمي: ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
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
                                child:  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text('  ${formDataProvider.completeFamilyInfo.model!.fatherEducation}')),
                              ),
                            ),
                          ],
                        ),


                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding:  EdgeInsets.all(8.0),
                              child: Text('مهنة الأب: ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
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
                                child:  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text('  ${formDataProvider.completeFamilyInfo.model!.fatherJob }')),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),


                    const Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: Text('سوابق الأب الصحية: ',style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
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
                        child:  Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(' ${formDataProvider.completeFamilyInfo.model!.fatherHealthReport }')),
                      ),
                    ),



                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding:  EdgeInsets.all(8.0),
                                child: Text('اسم الام:',style: TextStyle(fontWeight: FontWeight.bold),),
                              ),
                              Container(
                                width:width*0.4,
                                height: 47,
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
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('  ${formDataProvider.completeFamilyInfo.model!.motherName }')),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding:  EdgeInsets.all(8.0),
                                child: Text('سن الام:',style: TextStyle(fontWeight: FontWeight.bold),),
                              ),
                              Container(
                                width:width*0.4,
                                height: 47,
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
                                child:  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(' ${formDataProvider.completeFamilyInfo.model!.motherAge}')),
                              ),
                            ],
                          ),

                        ],
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
                              child: Text('مستوى الام التعليمي:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
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
                                child:  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text('  ${formDataProvider.completeFamilyInfo.model!.motherEducation}')),
                              ),
                            ),
                          ],
                        ),


                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding:  EdgeInsets.all(8.0),
                              child: Text('مهنة الام:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
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
                                child:  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text('  ${formDataProvider.completeFamilyInfo.model1!.motherJob }')),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),



                    const Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: Text('سوابق الام الصحية:  ',style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
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
                        child:  Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text('سوابق الام الصحية: ${formDataProvider.completeFamilyInfo.model1!.motherHealthReport }')),
                      ),
                    ),



                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //
                              const Padding(
                                padding:  EdgeInsets.all(8.0),
                                child: Text('رتبة الطفل:',style: TextStyle(fontWeight: FontWeight.bold),),
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
                                child: Padding(
                                    padding:  EdgeInsets.all(8.0),
                                    child: Text(' رتبة الطفل:  ${formDataProvider.completeFamilyInfo.model1!.childNumber}')),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding:  EdgeInsets.all(8.0),
                                child: Text('عدد الاخوة:',style: TextStyle(fontWeight: FontWeight.bold),),
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
                                    ),]
                                ),
                                child: Padding(
                                    padding:  EdgeInsets.all(8.0),
                                    child: Text('  ${formDataProvider.completeFamilyInfo.model1!.nbrSiblings }')),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    const Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: Text('الحالة الصحية للأخوة:',style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
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
                            child: Text(' ${formDataProvider.completeFamilyInfo.model1!.siblingsHealth }')),
                      ),
                    ),

                    const Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: Text('توجد قرابة  بين الوالدين ؟',style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
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
                            child: Text('  ${formDataProvider.completeFamilyInfo.model1!.haveRelation }')),
                                  ),
                    ),

                    const Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: Text(' المستوى الاقتصادي للعائلة: ',style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
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
                        child:Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text('  ${formDataProvider.completeFamilyInfo.model1!.familySocialState }')),
                      ),
                    ),



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





