
import 'package:flutter/material.dart';
class DynamicContainer extends StatelessWidget {
  final Widget childWidget;
  final Color backgroundColor;
  const DynamicContainer({super.key,required this.childWidget,required this.backgroundColor});



  @override
  Widget build(BuildContext context) {
    return Container(

      child: Center(
        child: childWidget,
      ),
      decoration: BoxDecoration(
          color: backgroundColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 2),
            ),
          ],
          borderRadius: BorderRadius.circular(10)
      ),
    );
  }
}
