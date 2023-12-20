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

      body: Consumer<FormDataProvider>(
        builder: (context, formDataProvider, child) {
          return Directionality(
            textDirection: TextDirection.rtl,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width:width*0.4,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: primaryColor.withOpacity(0.3),

                            )
                          ),
                          child: Center(child: Text('الاسم: ${formDataProvider.generalInfoModel.name}')),
                        ),
                        Container(
                          width:width*0.4,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: primaryColor.withOpacity(0.3)
                              )
                          ),
                          child: Center(child: Text('اللقب: ${formDataProvider.generalInfoModel.lastName}')),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      width:width,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: primaryColor.withOpacity(0.3)
                          )
                      ),
                      child: Text('العنوان: ${formDataProvider.generalInfoModel.address}'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      width:width,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: primaryColor.withOpacity(0.3)
                          )
                      ),
                      child: Center(child: Text('الهاتف: ${formDataProvider.generalInfoModel.phone}')),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      width:width,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: primaryColor.withOpacity(0.3)
                          )
                      ),
                      child: Center(child: Text('موجه من طرف: ${formDataProvider.generalInfoModel.phone}')),
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      width:width,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: primaryColor.withOpacity(0.3)
                          )
                      ),
                      child: Center(child:

                      Text('تاريخ الميلاد: ${formDataProvider.generalInfoModel.birthdate}'),),
                    ),
                  ),







                  // Display other form fields as needed
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}





