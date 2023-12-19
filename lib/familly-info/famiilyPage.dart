

import 'package:flutter/material.dart';
import 'package:orthophonienewversion/familly-info/familly-completed-page.dart';
import 'package:orthophonienewversion/familly-info/familly-info.dart';
import 'package:orthophonienewversion/utils/config.dart';

class FamillyMain extends StatelessWidget {

  List<Widget> classes=[FamilyInfo(),FamilyCompletedInfo()];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: PageView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return buildPage(index);
        },
      ),
    );
  }

  Widget buildPage(int index) {
    return Column(
      children: [
        classes[index],

      ],
    );
  }
}