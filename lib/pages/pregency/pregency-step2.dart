import 'package:flutter/material.dart';
import 'package:orthophonienewversion/pages/pregency/pregency-step3.dart';
import 'package:orthophonienewversion/utils/app-navigator.dart';
import 'package:orthophonienewversion/utils/appTextField.dart';
import 'package:orthophonienewversion/utils/common.dart';
import 'package:orthophonienewversion/utils/config.dart';

class PregrencyStep2 extends StatefulWidget {
  const PregrencyStep2({super.key});

  @override
  State<PregrencyStep2> createState() => _PregrencyStep2State();
}

class _PregrencyStep2State extends State<PregrencyStep2> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController nameCont = TextEditingController();
  TextEditingController lastNameCont = TextEditingController();
  TextEditingController emailCont = TextEditingController();
  TextEditingController passwordCont = TextEditingController();

  FocusNode nameFocus = FocusNode();
  FocusNode lastNameFocus = FocusNode();
  FocusNode emailFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();
  double _sliderValue = 0.0;
  bool isRemember = true;
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
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: primaryColor,
              ),
              child:const Icon(Icons.arrow_back,size: 17,),
            ),
          ),
        ),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Center(
                    child: const CircleAvatar(
                      radius: 70,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage("assets/pregancy2.png"),
                    ),
                  ),

                  //Center(child: Image.asset("assets/onboarding1.png",height:height*0.4 ,width: width*0.6,)),
                  Center(child: const  Text("مرحلة الحمل ",style: TextStyle(color: Colors.black,fontSize: 22 ,fontFamily: 'myriadBold' ),)),
                  const SizedBox(height: 5,),

                  Center(child: Text("لتجربة جيدة قم بإدخال كل المعلومات",style: TextStyle(color: Colors.grey.withOpacity(0.8),fontSize: 12,fontFamily: 'myriad'  ),)),
                  const SizedBox(height: 5,),
                  const Padding(
                    padding:  EdgeInsets.only(left: 5.0,right: 5.0,bottom: 5),
                    child: Text("هل الحمل مرغوب فيه  ؟",style: TextStyle(fontSize: 14,fontFamily: 'myriadBold'),),
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

                  const SizedBox(height: 20,),
                  const Padding(
                    padding: const EdgeInsets.only(left: 5.0,right: 5.0,bottom: 5),
                    child: Text("هل تناولت الام أدوية ؟",style: TextStyle(fontSize: 14,fontFamily: 'myriadBold'),),
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
                  const SizedBox(height: 20,),
                   Padding(
                    padding:  EdgeInsets.only(left: 5.0,right: 5.0),
                    child: Text(_sliderValue ~/ 1 == 0 ?"  عمر الام أثناء الحمل؟  " :"  عمر الام أثناء الحمل؟ ${_sliderValue ~/ 1} ",style: TextStyle(fontSize: 14,fontFamily: 'myriadBold'),),
                  ),

                  Slider(
                    value: _sliderValue,
                    min: 0.0,
                    max: 40.0,
                    onChanged: (value) {
                      setState(() {
                        _sliderValue = value;
                      });
                    },
                  ),
                  const SizedBox(height: 20,),
                  const Padding(
                    padding:  EdgeInsets.only(left: 5.0,right: 5.0,bottom: 5),
                    child: Text("هل الحمل طبيعي ؟",style: TextStyle(fontSize: 14,fontFamily: 'myriadBold'),),
                  ),
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
                  const SizedBox(height: 20,),
                  const Padding(
                    padding:  EdgeInsets.only(left: 5.0,right: 5.0,bottom: 5),
                    child: Text("هل أصيبت الام بأمراض معينة أثناء الحمل  ؟",style: TextStyle(fontSize: 14,fontFamily: 'myriadBold'),),
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


                  const SizedBox(height: 5,),
                  GestureDetector(
                    onTap: (){
                      push(context: context, screen: PregrencyStep3());
                      //    push(context: context, screen:  push(context: context, screen: PregrencyStep2());());
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                          height: 50,
                          width: width,
                          child:Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: primaryColor,

                            ),
                            child: Center(child: const Text("التالي",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600,fontFamily: 'myriad'),)),
                          )
                      ),
                    ),
                  ),



                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}
