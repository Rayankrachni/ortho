


import 'package:flutter/material.dart';
import 'package:orthophonienewversion/model/general-info-model.dart';
import 'package:orthophonienewversion/model/pregnancy-step1-model.dart';
import 'package:orthophonienewversion/pages/Result/display-child-dev.dart';
import 'package:orthophonienewversion/pages/Result/display-language-dev.dart';
import 'package:orthophonienewversion/provider/save-date-provider.dart';
import 'package:orthophonienewversion/utils/app-navigator.dart';
import 'package:orthophonienewversion/utils/config.dart';
import 'package:provider/provider.dart';

class PregnancyStep12 extends StatefulWidget {

  final GeneralInfoModel model;

  const PregnancyStep12({super.key, required this.model});
  @override
  State<PregnancyStep12> createState() => _PregnancyState();
}

class _PregnancyState extends State<PregnancyStep12> {
  @override
  Widget build(BuildContext context) {
    final  height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar:AppBar(
        //النمو الوجداني
        backgroundColor: Colors.white,
        title: Text("حالة الام أثناء الحمل",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),),
        centerTitle: true,

        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: (){
                push(context: context, screen: DisplayChildDev(model: widget.model,));
                //push(context: context, screen: DisplayLanguageDev(model: widget.model,));
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
                            child: Row(
                              children: [
                                Icon(Icons.calendar_month,size: 17,color: primaryColor,),
                                const SizedBox(width: 10,),
                                Text(' عمر الام : ',style: TextStyle(fontWeight: FontWeight.bold),),
                              ],
                            ),
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
                            child: Center(child: Text(' ${widget.model.pregnancy_details![0].mother_age_pregnancy}')),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding:  EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Icon(Icons.pregnant_woman,size: 17,color: primaryColor,),
                                const SizedBox(width: 10,),
                                Text(' الحمل طبيعي : ',style: TextStyle(fontWeight: FontWeight.bold),),
                              ],
                            ),
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
                            child: Center(child: Text(widget.model.pregnancy_details![0].was_normal_pregnancy ==false ? "لا":"نعم")),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.edit,size: 17,color: primaryColor,),
                      const SizedBox(width: 10,),
                      Text(' الحالة النفسية للام:  ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                    ],
                  ),
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

                      child:Text('${widget.model.pregnancy_details![0].psychological_state} ',overflow: TextOverflow.ellipsis,),),
                  ),
                ),

                const Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.edit,size: 17,color: primaryColor,),
                      const SizedBox(width: 10,),
                      Text(' هل كان عدم توافق عامل الريزوس؟  ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                    ],
                  ),
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
                      child:  Text(widget.model.pregnancy_details![0].rh_incompatibility ==false ? "لا":"نعم"),),
                  ),
                ),
                if(widget.model.pregnancy_details![0].take_medications==true) const Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.medical_information,size: 17,color: primaryColor,),
                      const SizedBox(width: 10,),
                      Text('  الادوية   ؟؟  ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                    ],
                  ),
                ),

                if(widget.model.pregnancy_details![0].take_medications==true)Padding(
                  padding: const EdgeInsets.only(left: 15.0,right: 15,top: 5,bottom: 5),
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
                      child:Text('   ${widget.model.pregnancy_details![0].medicationType}'),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.check,size: 17,color: primaryColor,),
                          const SizedBox(width: 10,),
                          Text(' هل الحمل مرغوب فيه ؟ ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 15,top: 5,bottom: 5),
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
                          child: Text(widget.model.pregnancy_details![0].is_pregnancy_planned ==false ? "لا":"نعم"),
                        ),
                      ),
                    ),
                  ],
                ),




                 const Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.sick_outlined,size: 17,color: primaryColor,),
                      const SizedBox(width: 10,),
                      Text(' أمراض معينة أثناء الحمل ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0,right: 15,top: 5,bottom: 5),
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
                    ),// ==false ? "لا":"نعم"diseases_during_pregnancy
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(widget.model.pregnancy_details![0].diseases_during_pregnancy ==false ? "لا":"نعم" ),
                    ),
                  ),
                ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding:  EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(Icons.watch_later,size: 17,color: primaryColor,),
                              const SizedBox(width: 10,),
                              Text(' هل ولد في الوقت المحدد  ؟ ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                            ],
                          ),
                        ),
                        //Step2
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
                              child: Text(widget.model.birth_details![0].birth_on_schedule ==false ? "لا":"نعم" ),
                            ),
                          ),
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
                         child: Row(
                           children: [
                             Icon(Icons.edit,size: 17,color: primaryColor,),
                             const SizedBox(width: 10,),
                             Text(' هل تم استعمال الملاقط؟ ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                           ],
                         ),
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
                             child: Text(widget.model.birth_details![0].is_forceps_used ==false ? "لا":"نعم",),
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
                         child: Row(
                           children: [
                             Icon(Icons.edit,size: 17,color: primaryColor,),
                             const SizedBox(width: 10,),
                             Text('نوع الولادة ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                           ],
                         ),
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
                             child: Text(widget.model.birth_details![0].is_normal_birth ==false ? "قيصرية ":"طبيعية",),
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
      ),
    );
  }
}
