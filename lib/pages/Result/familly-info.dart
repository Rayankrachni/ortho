import 'package:flutter/material.dart';
import 'package:orthophonienewversion/model/general-info-model.dart';
import 'package:orthophonienewversion/pages/Result/pregnancy-step12.dart';
import 'package:orthophonienewversion/utils/app-navigator.dart';
import 'package:orthophonienewversion/utils/config.dart';
import 'package:provider/provider.dart';



class FamilyInfoDisplay extends StatefulWidget {
  final GeneralInfoModel model;

  const FamilyInfoDisplay({super.key, required this.model});
  @override
  State<FamilyInfoDisplay> createState() => _FamilyInfoDisplayState();
}

class _FamilyInfoDisplayState extends State<FamilyInfoDisplay> {
  @override
  Widget build(BuildContext context) {
    final  height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("معلومات العائلة",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),),
        centerTitle: true,

        actions: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: (){
                push(context: context, screen: PregnancyStep12(model: widget.model,));
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
                            child: Row(
                              children: [
                                Icon(Icons.person,size: 17,color: primaryColor,),
                                 SizedBox(width: 10,),
                                Text('اسم الأب: ',style: TextStyle(fontWeight: FontWeight.bold),),
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
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('  ${widget.model.family_details![0].fatherName }',overflow: TextOverflow.ellipsis,)),
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
                                const Icon(Icons.calendar_month,size: 17,color: primaryColor,),
                                const SizedBox(width: 10,),
                                Text('سن الأب: ',style: TextStyle(fontWeight: FontWeight.bold),),
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
                            child:  Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(' ${widget.model.family_details![0].fatherAge}')),
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
                          child: Row(
                            children: [
                              Icon(Icons.history_edu_outlined,size: 17,color: primaryColor,),
                              SizedBox(width: 10,),
                              Text('مستوى الأب التعليمي: ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                            ],
                          ),
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
                                child: Text('  ${widget.model.family_details![0].fatherEducationalLevel}')),
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
                               Icon(Icons.work,size: 17,color: primaryColor,),
                               SizedBox(width: 10,),
                              Text('مهنة الأب: ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                            ],
                          ),
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
                                child: Text('  ${widget.model.family_details![0].fatherJob }')),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),


                const Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Icon(Icons.health_and_safety_outlined,size: 17,color: primaryColor,),
                      const SizedBox(width: 10,),
                      Text('سوابق الأب الصحية: ',style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
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
                        child: Text(' ${widget.model.family_details![0].fatherHealthHistory }')),
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
                            child: Row(
                              children: [
                                Icon(Icons.person,size: 17,color: primaryColor,),
                                const SizedBox(width: 10,),
                                Text('اسم الام:',style: TextStyle(fontWeight: FontWeight.bold),),
                              ],
                            ),
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
                                child: Text('  ${widget.model.family_details![0].motherName }')),
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
                                Icon(Icons.calendar_month,size: 17,color: primaryColor,),
                                const SizedBox(width: 10,),

                                Text('سن الام:',style: TextStyle(fontWeight: FontWeight.bold),),
                              ],
                            ),
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
                                child: Text(' ${widget.model.family_details![0].motherAge}')),
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
                          child: Row(
                            children: [
                              Icon(Icons.cast_for_education,size: 17,color: primaryColor,),
                               SizedBox(width: 10,),
                              Text('مستوى الام التعليمي:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                            ],
                          ),
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
                                child: Text('  ${widget.model.family_details![0].motherEducationalLevel}')),
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
                              Icon(Icons.work,size: 17,color: primaryColor,),
                              const SizedBox(width: 10,),
                              Text('مهنة الام:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                            ],
                          ),
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
                                child: Text('  ${widget.model.family_details![0].motherJob }')),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),



                const Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.health_and_safety_outlined,size: 17,color: primaryColor,),
                      const SizedBox(width: 10,),
                      Text('سوابق الام الصحية:  ',style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
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
                        child: Text('سوابق الام الصحية: ${widget.model.family_details![0].motherHealthHistory }')),
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
                            child: Row(
                              children: [
                                Icon(Icons.person,size: 17,color: primaryColor,),
                                const SizedBox(width: 10,),
                                Text('رتبة الطفل:',style: TextStyle(fontWeight: FontWeight.bold),),
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
                            child: Padding(
                                padding:  EdgeInsets.all(8.0),
                                child: Text('  ${widget.model.family_details![0].childOrder}')),
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
                                Icon(Icons.supervisor_account,size: 17,color: primaryColor,),
                                const SizedBox(width: 10,),
                                Text('عدد الاخوة:',style: TextStyle(fontWeight: FontWeight.bold),),
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
                                ),]
                            ),
                            child: Padding(
                                padding:  EdgeInsets.all(8.0),
                                child: Text('  ${widget.model.family_details![0].numberOfSiblings }')),
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
                      Icon(Icons.health_and_safety_outlined,size: 17,color: primaryColor,),
                      const SizedBox(width: 10,),
                      Text('الحالة الصحية للأخوة:',style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
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
                        child: Text(' ${widget.model.family_details![0].siblingsHealthState }')),
                  ),
                ),

                const Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.people_alt_outlined,size: 17,color: primaryColor,),
                      const SizedBox(width: 10,),
                      Text('توجد قرابة  بين الوالدين ؟',style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
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
                        child: Text(widget.model.family_details![0].relatedByBlood !=1 ? "لا":"نعم" )),
                              ),
                ),

                const Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.monetization_on_outlined,size: 17,color: primaryColor,),
                      const SizedBox(width: 10,),
                      Text(' المستوى الاقتصادي للعائلة: ',style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
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
                        child: Text('  ${widget.model.family_details![0].familyEconomicStatus }')),
                  ),
                ),



                // Display other form fields as needed
              ],
            ),
          ),
        ),
      ),
    );
  }
}





