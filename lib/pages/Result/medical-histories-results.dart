




import 'package:flutter/material.dart';
import 'package:orthophonienewversion/model/general-info-model.dart';
import 'package:orthophonienewversion/provider/save-date-provider.dart';
import 'package:orthophonienewversion/utils/app-navigator.dart';
import 'package:orthophonienewversion/completed-home-page.dart';
import 'package:orthophonienewversion/utils/config.dart';
import 'package:provider/provider.dart';

class DisplayDiseasesNervousSystem extends StatefulWidget {
  final GeneralInfoModel model;
  const DisplayDiseasesNervousSystem({super.key, required this.model});


  @override
  State<DisplayDiseasesNervousSystem> createState() => _DisplayDiseasesNervousSystemState();
}

class _DisplayDiseasesNervousSystemState extends State<DisplayDiseasesNervousSystem> {


  @override
  Widget build(BuildContext context) {
    final  height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
      //
      appBar:AppBar(
        //النمو الوجداني الجانب السمعي امراض الجهاز العصبي
        backgroundColor: Colors.white,
        title: Text("امراض الجهاز العصبي",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),),
        centerTitle: true,

        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: (){

                pushAndRemove(context: context, screen: CompletedHomePage());
              },
              child: Container(
                height: 30,
                width: 30,
                decoration:const BoxDecoration(
                  shape: BoxShape.circle,
                  color: primaryColor,
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

                const Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Text('التهاب الدماغ:  ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
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

                      child:Text( widget.model.medical_histories![0].meningitis ==true?"نعم":"لا"),),
                  ),
                ),
                const Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Text('التهاب الدماغ:  ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
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

                      child:Text(widget.model.medical_histories![0].encephalitis ==true?"نعم":"لا"),),
                  ),
                ),
//

                const Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Text(' الصرع ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
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
                      child: Text( widget.model.medical_histories![0].epilepsy ==true?"نعم":"لا")
                    ),
                  ),
                ),

                const Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Text('   متى تحدث له النوبات: ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
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
                      child: Text(' ${widget.model.medical_histories![0].firstExperienceSeizures}'),
                    ),
                  ),
                ),
                const Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Text('  متى أصيب بالصرع ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
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
                      child: Text(' ${widget.model.medical_histories![0].seizuresTime}'),
                    ),
                  ),
                ),
                //
                const Padding(
                  padding:  EdgeInsets.only(left: 15.0,right: 15.0,top: 5,bottom: 5),
                  child: Text("هل الطفل كثير الإصابة بالتهاب اللوزتين و الجيوب الأنفية والتهاب الاذن؟",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
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
                      child: Text(widget.model.medical_histories![0].sufferFromTonsillitis ==true?"نعم":"لا"),
                    ),
                  ),
                ),
                const Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Text('  هل أخذ كل التطعيمات بانتظام ؟  ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
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
                      child: Text(widget.model.medical_histories![0].vaccinations ==true?"نعم":"لا"),
                    ),
                  ),
                ),
               /* const Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Text('  الفحوصات التي قام بها: ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
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
                      child: Text('  ${formDataProvider.diseaseModel.undergoneRegarding}'),
                    ),
                  ),
                ),*/

              ],
            ),
          ),
        ),
      ),
    );
  }
}
