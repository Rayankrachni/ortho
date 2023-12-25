import 'package:flutter/material.dart';
import 'package:orthophonienewversion/provider/save-date-provider.dart';
import 'package:orthophonienewversion/utils/config.dart';
import 'package:provider/provider.dart';



class DisplayGeneralInfo extends StatelessWidget {
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
                                padding:  EdgeInsets.all(8.0),
                                child: Text('الاسم: ',style: TextStyle(fontWeight: FontWeight.bold),),
                              ),
                              Container(
                                width:width*0.4,
                                height: 45,
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
                                  child: Text('${formDataProvider.generalInfoModel.name}',overflow: TextOverflow.ellipsis,),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding:  EdgeInsets.all(8.0),
                                child: Text('اللقب:  ',style: TextStyle(fontWeight: FontWeight.bold),),
                              ),
                              Container(
                                width:width*0.4,
                                height: 45,
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
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('${formDataProvider.generalInfoModel.lastName}')),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                      child: Text('تاريخ الميلاد: ',style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        width:width,
                        height: 45,
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

                          child:Text('${formDataProvider.generalInfoModel.birthdate}'),),
                      ),
                    ),

                    const Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                      child: Text('مكان الميلاد: ',style: TextStyle(fontWeight: FontWeight.bold),),
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
                          child:  Text(' ${formDataProvider.generalInfoModel.city}'),),
                      ),
                    ),

                    const Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                      child: Text('العنوان: ',style: TextStyle(fontWeight: FontWeight.bold),),
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
                          child: Text(' ${formDataProvider.generalInfoModel.address}'),
                        ),
                      ),
                    ),

                    const Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                      child: Text('الهاتف: ',style: TextStyle(fontWeight: FontWeight.bold),),
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
                            child: Text(' ${formDataProvider.generalInfoModel.phone}')),
                      ),
                    ),

                    const Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                      child: Text('موجه من طرف: ',style: TextStyle(fontWeight: FontWeight.bold),),
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
                            padding: const EdgeInsets.all(10.0),child: Text('موجه من طرف: ${formDataProvider.generalInfoModel.lastInfo}')),
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





