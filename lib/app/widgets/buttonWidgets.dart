import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:runaway/app/widgets/shadowWidgets.dart';

import '../consts/textconstant.dart';

splashbutton(
  Function()? onTap,
  Color? splashcolor,
  Color? hovercolor,
  Color? boxcolor,
  List<BoxShadow>? boxShadow,
  String? name,
  Color? textcolor,
  double? textfont,
  double? height,
  double? width,
) {
  Size size = Get.size;
  return InkWell(
    splashColor: splashcolor ?? Colors.red,
    hoverColor: hovercolor ?? Colors.red,
    borderRadius: BorderRadius.all(Radius.circular(10)),
    onTap: onTap,
    child: Ink(
      width: width ?? 9 * size.width / 10,
      height: height ?? 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: boxcolor ?? Colors.red,
          boxShadow: boxShadow ?? shadowcard()),
      child: Center(
        child: Text(
          name ?? "",
          style: TextStyle(
              color: textcolor ?? Colors.white, fontSize: textfont ?? 17),
        ),
      ),
    ),
  );
}

outlinedButtonPostBlue(
  String? title,
  Function()? onTap,
) {
  return OutlinedButton(
      child: Text(
        title ?? "",
        style: postContentQuestionStyleBold,
      ),
      style: OutlinedButton.styleFrom(
        primary: Colors.white,
        backgroundColor: Colors.white,
        onSurface: Colors.orangeAccent,
        side: BorderSide(color: Colors.blue, width: 1),
        elevation: 20,
        minimumSize: Size(150, 35),
        shadowColor: Colors.grey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      onPressed: onTap);
}

outlinedButtonRed(
    String? title, Function()? onTap, IconData icon, double size) {
  return OutlinedButton.icon(
      icon: Icon(icon, size: size),
      label: Text(
        title ?? "",
        style: petStreamStyle,
      ),
      style: OutlinedButton.styleFrom(
        primary: Colors.red,
        backgroundColor: Colors.grey.withOpacity(0.6),
        onSurface: Colors.orangeAccent,
        // side: BorderSide(color: Colors.red, width: 1),
        elevation: 20,
        minimumSize: Size(100, 35),
        shadowColor: Colors.grey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      onPressed: onTap);
}
