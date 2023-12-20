import 'package:flutter/material.dart';
import 'package:orthophonienewversion/provider/save-date-provider.dart';
import 'package:provider/provider.dart';



class FamilyInfoDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Consumer<FormDataProvider>(
        builder: (context, formDataProvider, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('lastName: ${formDataProvider.completeFamilyInfo.model!.fatherName}'),
              Text('lastName: ${formDataProvider.completeFamilyInfo.model!.fatherAge}'),
              Text('lastName: ${formDataProvider.completeFamilyInfo.model!.fatherEducation}'),
              Text('lastName: ${formDataProvider.completeFamilyInfo.model!.fatherHealthReport}'),
              Text('lastName: ${formDataProvider.completeFamilyInfo.model!.motherAge}'),
              Text('lastName: ${formDataProvider.completeFamilyInfo.model!.motherName}'),
              Text('lastName: ${formDataProvider.completeFamilyInfo.model!.motherEducation}'),


              Text('lastName: ${formDataProvider.completeFamilyInfo.model1!.motherJob}'),
              Text('lastName: ${formDataProvider.completeFamilyInfo.model1!.motherHealthReport}'),
              Text('lastName: ${formDataProvider.completeFamilyInfo.model1!.siblingsHealth}'),
              Text('lastName: ${formDataProvider.completeFamilyInfo.model1!.nbrSiblings}'),
              Text('lastName: ${formDataProvider.completeFamilyInfo.model1!.haveRelation}'),
              Text('lastName: ${formDataProvider.completeFamilyInfo.model!.motherName}'),
              Text('lastName: ${formDataProvider.completeFamilyInfo.model!.motherEducation}'),


              // Display other form fields as needed
            ],
          );
        },
      ),
    );
  }
}





