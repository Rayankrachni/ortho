import 'package:flutter/material.dart';
import 'package:orthophonienewversion/model/general-info-model.dart';
import 'package:orthophonienewversion/pages/Result/dispaly-auditory-side..dart';
import 'package:orthophonienewversion/pages/Result/display-language-dev.dart';
import 'package:orthophonienewversion/provider/save-date-provider.dart';
import 'package:orthophonienewversion/utils/app-navigator.dart';
import 'package:orthophonienewversion/utils/config.dart';
import 'package:provider/provider.dart';

class DisplayEmotionalGrowth extends StatefulWidget {
  final GeneralInfoModel model;

  const DisplayEmotionalGrowth({super.key, required this.model});


  @override
  State<DisplayEmotionalGrowth> createState() => _DisplayEmotionalGrowthState();
}

class _DisplayEmotionalGrowthState extends State<DisplayEmotionalGrowth> {
  @override
  Widget build(BuildContext context) {
    final  height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar:AppBar(
      //
      backgroundColor: Colors.white,
      title: Text("النمو الوجداني",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),),
      centerTitle: true,

      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: (){
              push(context: context, screen: DisplayAuditorySide(model: widget.model,));
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50,),
                Center(
                  child: SizedBox(
                      height:height*0.25,
                      child: Image.asset("assets/ortophonieSplash.png")),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [

                          const Padding(
                            padding:  EdgeInsets.all(8.0),
                            child: Text(' هل هو اجتماعي:   ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                          ),
                          Container(
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
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),

                              child:Text(widget.model.social_interactions![0].isSocial == true?"نعم":"لا",style: TextStyle(fontSize: 12),),),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding:  EdgeInsets.all(8.0),
                            child: Text(' هل يلعب مع الآخرين:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                          ),
                          Container(
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
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),

                              child:Text(widget.model.social_interactions![0].isPlayer == true?"نعم":"لا",style: TextStyle(fontSize: 12),),),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Text('  هل يستعمل العدوانية في اللعب:  ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
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

                      child:Text(widget.model.social_interactions![0].isAggressive == true?"نعم":"لا"),),
                  ),
                ),


                const Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Text(' هل له علاقات  متعددة:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
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

                      child:Text(widget.model.social_interactions![0].hasRelations == true?"نعم":"لا"),),
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
