import 'package:flutter/material.dart';
import 'package:orthophonienewversion/pages/childDev/child-dev-page1.dart';
import 'package:orthophonienewversion/pages/childDev/disorders.dart';
import 'package:orthophonienewversion/utils/app-navigator.dart';
import 'package:orthophonienewversion/utils/appTextField.dart';
import 'package:orthophonienewversion/utils/common.dart';
import 'package:orthophonienewversion/utils/config.dart';
class ChildDevPage3 extends StatefulWidget {
  const ChildDevPage3({super.key});

  @override
  State<ChildDevPage3> createState() => _ChildDevPage3State();
}

class _ChildDevPage3State extends State<ChildDevPage3> {

  TextEditingController controller1 = TextEditingController();
  TextEditingController controller0 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  TextEditingController personalHygieneAcquisition = TextEditingController();
  double _sliderValue = 0.0;


  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,

        iconTheme:const IconThemeData(
            color: Colors.white
        ),

        leading: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: primaryColor,
            ),
            child:GestureDetector(
                onTap: (){Navigator.pop(context);},
                child: const Icon(Icons.arrow_back,size: 17,)),
          ),
        ),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage("assets/childListen.png"),
                ),
                const  Text("الجانب السمعي",style: TextStyle(color: Colors.black,fontSize: 20 ,fontFamily: 'myriadBold' ),),
                const SizedBox(height: 5,),
                const  Text("السلوك السمعي اكتشاف الصم",style: TextStyle(color: Colors.grey,fontSize: 16 ,fontFamily: 'myriadBold' ),),



                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: AppTextField(
                    textFieldType: TextFieldType.NAME,
                    controller: controller0,
                    title: 'متى شك الأولياء في العجز السمعي',

                    errorThisFieldRequired: "This Field is required",
                    decoration: inputDecoration(context, labelText: "متى شك الأولياء في العجز السمعي"),
                   // suffix: Icon(Icons.email,size: 17,color: Colors.grey.withOpacity(0.8),),
                    autoFillHints: [AutofillHints.email],
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.all(10.0),

                  child: AppTextField(
                    textFieldType: TextFieldType.EMAIL_ENHANCED,
                    controller: controller1,

                    title: 'نوع الإعاقة السمعية',
                    errorThisFieldRequired: "This Field is required",
                    decoration: inputDecoration(context, labelText: "نوع الإعاقة السمعية",),
                  //  suffix: Icon(Icons.code,size: 17,color: Colors.grey.withOpacity(0.8),),
                    autoFillHints: [AutofillHints.email],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: AppTextField(
                    textFieldType: TextFieldType.NAME,
                    controller: controller2,
                    title: 'هل هناك بقايا سمعية',

                    errorThisFieldRequired: "This Field is required",
                    decoration: inputDecoration(context, labelText: "هل هناك بقايا سمعية"),
                   // suffix: Icon(Icons.email,size: 17,color: Colors.grey.withOpacity(0.8),),
                    autoFillHints: [AutofillHints.email],
                  ),
                ),


                Align(
                  alignment: Alignment.topRight,
                  child: const Padding(
                    padding:  EdgeInsets.only(left: 10.0,right: 10.0,bottom: 5),
                    child: Text("هل قام بالتجهيز",style: TextStyle(fontSize: 12,fontFamily: 'myriadBold'),),
                  ),
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Container(
                      width: 170,
                      height:40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1), // Shadow color
                            spreadRadius: 2, // How much the shadow should spread
                            blurRadius: 5, // How blurry the shadow should be
                            offset: Offset(0, 2), // Offset of the shadow
                          ),
                        ],
                      ),
                      child: Center(child: Text("نعم")),
                    ),
                    Container(
                      width: 170,
                      height:40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1), // Shadow color
                            spreadRadius: 2, // How much the shadow should spread
                            blurRadius: 5, // How blurry the shadow should be
                            offset: Offset(0, 2), // Offset of the shadow
                          ),
                        ],
                      ),
                      child: Center(child: Text("لا")),
                    )
                  ],
                ),
                const SizedBox(height: 10,),

                Padding(
                  padding: const EdgeInsets.all(10.0),

                  child: AppTextField(
                    textFieldType: TextFieldType.EMAIL_ENHANCED,
                    controller: controller3,

                    title: 'تاريخ والتجهيز',
                    errorThisFieldRequired: "This Field is required",
                    decoration: inputDecoration(context, labelText: "تاريخ والتجهيز",),
                    //  suffix: Icon(Icons.code,size: 17,color: Colors.grey.withOpacity(0.8),),
                    autoFillHints: [AutofillHints.email],
                  ),
                ),

                Align(
                  alignment: Alignment.topRight,
                  child: const Padding(
                    padding:  EdgeInsets.only(left: 10.0,right: 10.0,bottom: 5),
                    child: Text("نوع والتجهيز ",style: TextStyle(fontSize: 12,fontFamily: 'myriadBold'),),
                  ),
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Container(
                      width: 170,
                      height:40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1), // Shadow color
                            spreadRadius: 2, // How much the shadow should spread
                            blurRadius: 5, // How blurry the shadow should be
                            offset: Offset(0, 2), // Offset of the shadow
                          ),
                        ],
                      ),
                      child: Center(child: Text("معين سمعي")),
                    ),
                    Container(
                      width: 170,
                      height:40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1), // Shadow color
                            spreadRadius: 2, // How much the shadow should spread
                            blurRadius: 5, // How blurry the shadow should be
                            offset: Offset(0, 2), // Offset of the shadow
                          ),
                        ],
                      ),
                      child: Center(child: Text("زرع قوقعي")),
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                Align(
                  alignment: Alignment.topRight,
                  child: const Padding(
                    padding:  EdgeInsets.only(left: 10.0,right: 10.0,bottom: 5),
                    child: Text("الاذن المصابة",style: TextStyle(fontSize: 12,fontFamily: 'myriadBold'),),
                  ),
                ),
                const SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Container(
                      width: 170,
                      height:40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1), // Shadow color
                            spreadRadius: 2, // How much the shadow should spread
                            blurRadius: 5, // How blurry the shadow should be
                            offset: Offset(0, 2), // Offset of the shadow
                          ),
                        ],
                      ),
                      child: Center(child: Text("اليمنى ")),
                    ),
                    Container(
                      width: 170,
                      height:40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1), // Shadow color
                            spreadRadius: 2, // How much the shadow should spread
                            blurRadius: 5, // How blurry the shadow should be
                            offset: Offset(0, 2), // Offset of the shadow
                          ),
                        ],
                      ),
                      child: Center(child: Text("اليسرى")),
                    )
                  ],
                ),
                GestureDetector(
                  onTap: (){
                    push(context: context, screen: ChildDevPage2());
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                        height: 50,
                        width: width,
                        child:Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: primaryColor,

                          ),
                          child:const Center(child:  Text("حفظ",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700,fontFamily: 'myriad'),)),
                        )
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
