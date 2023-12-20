import 'package:flutter/material.dart';
import 'package:orthophonienewversion/utils/config.dart';

import 'decoration.dart';

InputDecoration inputDecoration(BuildContext context, {Widget? prefixIcon, String? labelText, double? borderRadius}) {
  return InputDecoration(
    contentPadding: EdgeInsets.only(left: 12, bottom: 10, top: 10, right: 10),
    labelText: labelText,
    labelStyle: TextStyle(color: Colors.grey,fontSize: 10),
    alignLabelWithHint: true,
    prefixIcon: prefixIcon,
    enabledBorder: OutlineInputBorder(
      borderRadius: radius(borderRadius ?? 10),
      borderSide: BorderSide(color: primaryColor.withOpacity(0.3), width: 0.0),
    ),

    focusedErrorBorder: OutlineInputBorder(
      borderRadius: radius(borderRadius ?? 10),
      borderSide: BorderSide(color: Colors.red, width: 0.0),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: radius(borderRadius ?? 10),
      borderSide: BorderSide(color: Colors.red, width: 1.0),
    ),
    errorMaxLines: 2,
    border: OutlineInputBorder(
      borderRadius: radius(borderRadius ?? 10),
      borderSide: BorderSide(color: primaryColor.withOpacity(0.3), width: 0.0),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: radius(borderRadius ?? 10),
      borderSide: BorderSide(color:primaryColor.withOpacity(0.3), width: 0.0),
    ),
    errorStyle: TextStyle(color: Colors.red, fontSize: 12),
    focusedBorder: OutlineInputBorder(
      borderRadius: radius(borderRadius ?? 10),
      borderSide: BorderSide(color: primaryColor, width: 0.0),
    ),
    filled: true,
    fillColor: Colors.white,
  );
}