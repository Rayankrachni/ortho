
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:orthophonienewversion/homePage.dart';
import 'package:orthophonienewversion/model/general-info-model.dart';
import 'package:orthophonienewversion/pages/Creation/general-info-creation.dart';
import 'package:orthophonienewversion/pages/Result/general-info-resluts.dart';
import 'package:orthophonienewversion/provider/dio.dart';
import 'package:orthophonienewversion/provider/save-date-provider.dart';
import 'package:orthophonienewversion/utils/app-navigator.dart';
import 'package:orthophonienewversion/utils/appTextField.dart';
import 'package:orthophonienewversion/utils/common.dart';
import 'package:orthophonienewversion/utils/config.dart';
import 'package:provider/provider.dart';
class CompletedHomePage extends StatefulWidget {
  const CompletedHomePage({super.key});

  @override
  State<CompletedHomePage> createState() => _CompletedHomePageState();
}

class _CompletedHomePageState extends State<CompletedHomePage> {
  TextEditingController search=TextEditingController();
  bool _dataLoaded = false;
  ApiProvider apiProvider=ApiProvider();

  List<GeneralInfoModel> models=[];
  List<GeneralInfoModel> filteredModels=[];

  String? searchtext;

   Future<void> loadData()async{

     FormDataProvider provider=FormDataProvider(apiProvider);
     models=await  provider.fetchAllInterview();
     setState(() {
       filteredModels=models;
     });
     setState(() {
       _dataLoaded=true;
     });

   }


  @override
  void initState() {


    loadData();


    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final provider =Provider.of<FormDataProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
      child: Directionality(
      textDirection: TextDirection.rtl,
      
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("الصفحة الرئيسية",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),textAlign: TextAlign.center,),
                        Container(
                          height: 40,

                          decoration:const BoxDecoration(
                              color: primaryColor,
                              shape: BoxShape.circle
                          ),
                          child:const Padding(
                            padding:  EdgeInsets.all(8.0),
                            child:  Icon(Icons.logout,color: Colors.white,size: 16,),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AppTextField(
                      textFieldType: TextFieldType.NAME,
                      onChanged: (query) {
      
                        // Filter the models based on the search query
                        setState(() {
                          if (query.isEmpty) {
                            // If the search query is empty, show all models
                            filteredModels = models;
      
                          } else {
                            filteredModels = models
                                .where((e) =>
                            e.name!.toLowerCase().contains(query.toLowerCase()) ||
                                e.lastName!.toLowerCase().contains(query.toLowerCase()))
                                .toList();
      
                          }
      
                        });
                      },
                      errorThisFieldRequired: "",
                      decoration: inputDecoration(context, labelText: "بحث",),
                      suffix:const Icon(Icons.search,size: 17,color: primaryColor),
      
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                         borderRadius: BorderRadius.circular(10),
                         boxShadow: const[
                           BoxShadow(
                             color: Color.fromRGBO(99, 99, 99, 0.2),
                             offset: Offset(0, 2),
                             blurRadius: 8,
                             spreadRadius: 0,
                           )
      
                         ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                     width: width*0.5,
                                      child: const Text("مرحبًا بك في تطبيق الاختصاص الارطوفوني!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),textAlign: TextAlign.center,)),
                                  const SizedBox(height: 20,),
                                  GestureDetector(
                                    onTap: (){
                                      push(context: context, screen: HomePage());
                                    },
                                    child: Container(
      
      
                                        width: width*0.5,
                                        height: height*0.05,
                                        decoration: BoxDecoration(
                                           color: primaryColor,
      
                                            borderRadius: BorderRadius.circular(10)
                                        ),
      
                                        child:const  Center(child:
      
                                        Text("ابدأ مقابلة جديدة!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.white),),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                              child: Container(
                                  decoration:const BoxDecoration(
                                     // border: Border.all(color: primaryColor.withOpacity(0.2)),
                                      shape: BoxShape.circle
                                  ),
      
                                  height: height*0.25,
                                  child: Image.asset("assets/homevec.png")),
                            )  ,
      
      
      
      
      
                          ],
                        ),
                      ),
                    ),
                  ),
                  //Text("مرحبًا بك في تطبيق الاختصاص الارطوفوني!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: primaryColor),),
      
                  /*Container(
      
                      width: width,
                      height: height*0.07,
      
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient:const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [pinklight,pink,Colors.pink],
      
                        ),
                      ),
                      child: Center(
                       // padding: const EdgeInsets.only(left: 20.0,right:20.0,top: 5,bottom: 5),
                        child:     Text("مقابلة جديدة",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: width*0.04),),
      
                      )),*/
      
      
      
      
      
      
      
      
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("عرض المقابلات",style: TextStyle(color: pink,fontWeight: FontWeight.bold,fontSize: width*0.037),),
                        Icon(Icons.list,color: pink,)
      
                      ],
                    ),
                  ),
      
      
      
                 !_dataLoaded ? const Center(child:  CircularProgressIndicator()):
                 models.isNotEmpty? Container(
                   child: Padding(
                     padding: const EdgeInsets.all(5.0),
                     child: Column(
                       children:  filteredModels.map((e) => Padding(
                           padding: const EdgeInsets.only(bottom: 5.0),
                           child: GestureDetector(
                             onTap: (){
                               push(context: context, screen: DisplayGeneralInfo(model: e));
                             },
                             child: Container(
                               decoration: BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: BorderRadius.circular(10.0),
                                 border: Border.all(color: Colors.grey.withOpacity(0.2)),
                                 boxShadow: [
                                   BoxShadow(
                                     color: Colors.grey.withOpacity(0.1),
                                     spreadRadius: 2,
                                     blurRadius: 5,
                                     offset: Offset(0, 3),
                                   ),
                                 ],
                               ),
                               child: Padding(
                                 padding: const EdgeInsets.all(15.0),
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: [
                                     Row(
                                       children: [
                                         const CircleAvatar(backgroundColor: Colors.white,backgroundImage: AssetImage("assets/homevec.png"),),
                                         const SizedBox(width: 20,),
                                         Column(
                                           crossAxisAlignment: CrossAxisAlignment.start,
                                           children: [
                                             Text("${e.name!} ${e.lastName!}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                                             Text(e.address!,style: TextStyle(fontWeight: FontWeight.normal,color: Colors.grey,fontSize: 12),),
                                           ],
                                         ),
                                       ],
                                     ),
                                     const  Center(child: Icon(Icons.arrow_forward_ios,size: 12,color: Colors.pink,)),
      
      
      
                                   ],
                                 ),
                               ),
                             ),
                           ),
                         )).toList()
                     )
                   ),
                 )
      
              :const SizedBox(
                     height: 150,
                     child: Center(child: Text("لا توجد مقابلات")))
                ],
              ),
            ),
          ),
        ),
    )

    );




  }
}
