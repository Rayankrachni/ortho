import 'package:flutter/material.dart';
import 'package:orthophonienewversion/pages/childDev/languageDev.dart';
import 'package:orthophonienewversion/utils/app-navigator.dart';
import 'package:orthophonienewversion/utils/appTextField.dart';
import 'package:orthophonienewversion/utils/common.dart';
import 'package:orthophonienewversion/utils/config.dart';
class ChildDevPage1 extends StatefulWidget {
  const ChildDevPage1({super.key});

  @override
  State<ChildDevPage1> createState() => _ChildDevPage1State();
}

class _ChildDevPage1State extends State<ChildDevPage1> {

  TextEditingController sittingAge = TextEditingController();
  TextEditingController crawlingAge = TextEditingController();
  TextEditingController walkingAge = TextEditingController();
  TextEditingController personalHygieneAcquisition = TextEditingController();

  FocusNode sittingAgeFocus = FocusNode();
  FocusNode crawlingAgeFocus = FocusNode();
  FocusNode walkingAgeFocus = FocusNode();
  FocusNode personalHygieneAcquisitionFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,


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
                  radius:80,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage("assets/onboarding1.png"),
                ),
                const  Text("النمو الحسي الحركي",style: TextStyle(color: Colors.black,fontSize: 20 ,fontFamily: 'myriadBold' ),),
                const SizedBox(height: 5,),


                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: AppTextField(
                    textFieldType: TextFieldType.NAME,
                    controller: sittingAge,
                    title: 'سن الجلوس',

                    focus: sittingAgeFocus,
                    nextFocus: crawlingAgeFocus,
                    errorThisFieldRequired: "This Field is required",
                    decoration: inputDecoration(context, labelText: "سن الجلوس"),
                   // suffix: Icon(Icons.email,size: 17,color: Colors.grey.withOpacity(0.8),),
                    autoFillHints: [AutofillHints.email],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),

                  child: AppTextField(
                    textFieldType: TextFieldType.EMAIL_ENHANCED,
                    controller: crawlingAge,
                    focus: crawlingAgeFocus,

                    title: 'سن الحبو',
                    errorThisFieldRequired: "This Field is required",
                    decoration: inputDecoration(context, labelText: "سن الحبو",),
                    //suffix: Icon(Icons.code,size: 17,color: Colors.grey.withOpacity(0.8),),
                    autoFillHints: [AutofillHints.email],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: AppTextField(
                    textFieldType: TextFieldType.NAME,
                    controller: walkingAge,
                    title: 'سن المشي',

                    focus: walkingAgeFocus,
                    nextFocus: sittingAgeFocus,
                    errorThisFieldRequired: "This Field is required",
                    decoration: inputDecoration(context, labelText: "سن المشي"),
                   // suffix: Icon(Icons.email,size: 17,color: Colors.grey.withOpacity(0.8),),
                    autoFillHints: [AutofillHints.email],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: AppTextField(
                    textFieldType: TextFieldType.NAME,
                    controller: personalHygieneAcquisition,
                    title: 'اكتساب النظافة',
                    maxLines: 3,

                    focus: personalHygieneAcquisitionFocus,

                    errorThisFieldRequired: "This Field is required",
                    decoration: inputDecoration(context, labelText: "اكتساب النظافة"),
                  //  suffix: Icon(Icons.email,size: 17,color: Colors.grey.withOpacity(0.8),),
                    autoFillHints: [AutofillHints.email],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    push(context: context, screen: languageDevPage());
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
