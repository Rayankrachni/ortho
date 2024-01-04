import 'package:flutter/material.dart';
import 'package:orthophonienewversion/pages/Result/familly-info.dart';
import 'package:orthophonienewversion/provider/save-date-provider.dart';
import 'package:orthophonienewversion/utils/app-navigator.dart';
import 'package:orthophonienewversion/utils/config.dart';
import 'package:provider/provider.dart';

import '../../model/general-info-model.dart';



class DisplayGeneralInfo extends StatefulWidget {
  final GeneralInfoModel model;

  const DisplayGeneralInfo({super.key, required this.model});
  @override
  State<DisplayGeneralInfo> createState() => _DisplayGeneralInfoState();
}

class _DisplayGeneralInfoState extends State<DisplayGeneralInfo> {
  @override
  Widget build(BuildContext context) {
    final  height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:const Text("المعلومات العامة",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),),
        centerTitle: true,

        actions: [
          GestureDetector(
              onTap: (){
            push(context: context, screen: FamilyInfoDisplay(model: widget.model,));

          }, child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 30,width: 30,
              decoration:const BoxDecoration(
                shape: BoxShape.circle,
                color: primaryColor,
              ),
              child: Icon(Icons.arrow_forward,color: Colors.white,size: 17),
            ),
          ),)
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
                            padding:  EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.person,size: 17,color: primaryColor,),
                                SizedBox(width: 10,),
                                Text('الاسم: ',style: TextStyle(fontWeight: FontWeight.bold),),
                              ],
                            ),
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
                              child: Text('${widget.model.name} ',overflow: TextOverflow.ellipsis,),
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
                                 Icon(Icons.person,size: 17,color: primaryColor,),
                                 SizedBox(width: 10,),
                                Text('اللقب:  ',style: TextStyle(fontWeight: FontWeight.bold),),
                              ],
                            ),
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
                                  offset:const Offset(0, 3), // Offset from the top
                                ),
                              ],
                            ),
                            child: Padding(
                                padding:const  EdgeInsets.all(8.0),
                                child: Text('${widget.model.lastName}')),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding:  EdgeInsets.only(left: 15.0,right: 15.0),
                  child: Row(
                    children: [
                      Icon(Icons.calendar_month,size: 17,color: primaryColor,),
                      SizedBox(width: 10,),
                      Text('تاريخ الميلاد: ',style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
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
                          offset:const Offset(0, 3), // Offset from the top
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),

                      child:Text('${widget.model.birthdate}'),),
                  ),
                ),

                const Padding(
                  padding:  EdgeInsets.only(left: 15.0,right: 15.0),
                  child: Row(
                    children: [
                       Icon(Icons.location_on_sharp,size: 17,color: primaryColor,),
                       SizedBox(width: 10,),
                      Text('مكان الميلاد: ',style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
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
                      child:  Text(' ${widget.model.place_birth}'),),
                  ),
                ),

                const Padding(
                  padding:  EdgeInsets.only(left: 15.0,right: 15.0),
                  child: Row(
                    children: [
                       Icon(Icons.location_city,size: 17,color: primaryColor,),
                       SizedBox(width: 10,),
                      Text('العنوان: ',style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
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
                      child: Text(' ${widget.model.address}'),
                    ),
                  ),
                ),

                const Padding(
                  padding:  EdgeInsets.only(left: 15.0,right: 15.0),
                  child: Row(
                    children: [
                      Icon(Icons.phone,size: 17,color: primaryColor,),
                      SizedBox(width: 10,),
                      Text('الهاتف: ',style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
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
                          offset:const Offset(0, 3), // Offset from the top
                        ),
                      ],
                    ),
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(' ${widget.model.phone}')),
                  ),
                ),

                const Padding(
                  padding:  EdgeInsets.only(left: 15.0,right: 15.0),
                  child: Row(
                    children: [
                      Icon(Icons.edit,size: 17,color: primaryColor,),
                      SizedBox(width: 10,),
                      Text('موجه من طرف: ',style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
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

                        padding: const EdgeInsets.all(10.0),child: Text('موجه من طرف: ${widget.model.directed_by}')),
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





