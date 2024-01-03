
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:orthophonienewversion/model/general-info-model.dart';
import 'package:orthophonienewversion/pages/Creation/generalInfo/generalInformation.dart';
import 'package:orthophonienewversion/pages/Result/dispaly-genearl-info.dart';
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

   Future<void> loadData()async{

     FormDataProvider provider=FormDataProvider(apiProvider);
     models=await  provider.fetchAllInterview();
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
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () async{

            await provider.signOut(context);
          }, icon:const Icon(Icons.logout,color: pink,))
        ],
      ),
      body:
    Directionality(
    textDirection: TextDirection.rtl,

        child: Padding(
          padding: const EdgeInsets.all(15.0),


          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: (){push(context: context, screen: GeneralInfo());},
                  child: Container(
                    height: height*0.3,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient:const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [deepBlueColor,primaryColor,blueColor],

                      ),
                    ),
                    child: Center(child:
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        SizedBox(
                            width: width*0.4,
                            height: height*0.17,
                            child: Lottie.asset('assets/lottie/consultation.json')),

                        Container(

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient:const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [pinklight,pink,Colors.pink],

                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20.0,right:20.0,top: 5,bottom: 5),
                              child:     Text("مقابلة جديدة",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: width*0.037),),

                            )),
                        SizedBox(height: width*0.07,)
                      ],
                    )),

                  ),
                ),


                SizedBox(height: 10,),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("عرض المقابلات",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold,fontSize: width*0.037),),
                  ),
                ),
                /*Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AppTextField(
                    textFieldType: TextFieldType.NAME,
                    onChanged: (query) {
                      // Filter the models based on the search query
                      setState(() {
                        filteredModels = models
                            .where((e) =>
                        e.name!.toLowerCase().contains(query.toLowerCase()) ||
                            e.lastName!.toLowerCase().contains(query.toLowerCase()))
                            .toList();
                      });
                    },



                    errorThisFieldRequired: "This Field is required",
                    decoration: inputDecoration(context, labelText: "بحث"),
                    suffix: Icon(Icons.search,size: 17,color: Colors.grey.withOpacity(0.8),),
                    autoFillHints: [AutofillHints.email],
                  ),
                ),*/




               !_dataLoaded ? Center(child: const CircularProgressIndicator()):
               models.isNotEmpty?  Padding(
                 padding: const EdgeInsets.all(5.0),
                 child: Column(
                     children: models.map((e) => Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(

                         decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(10.0), // Adjust the border radius as needed
                           //border: Border.all(color: Colors.grey), // Set the border color
                           boxShadow: [
                             BoxShadow(
                               color: Colors.grey.withOpacity(0.1), // Set the shadow color
                               spreadRadius: 2,
                               blurRadius: 5,
                               offset: Offset(0, 3), // changes the shadow position
                             ),
                           ],
                         ),
                         child: GestureDetector(
                           onTap: (){
                             push(context: context, screen: DisplayGeneralInfo(model: e,));
                           },
                           child: ListTile(
                             title:Text( "${e.name!} ${e.lastName!}" ),
                             subtitle: Text( "${e.date!} ",style: TextStyle(color: Colors.grey,fontSize: 12), ),
                             leading:const Icon(Icons.interests,color: Colors.pink,),
                             trailing:const Icon(Icons.arrow_forward_ios,color: primaryColor,size: 15,)
                           ),
                         ),
                       ),
                     )).toList()
                 )
               ):const SizedBox(
                   height: 150,
                   child: Center(child: Text("لا توجد مقابلات")))
              ],
            ),
          ),
        ),
      )

    );




  }
}
