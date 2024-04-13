import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.ontap, required this.text, this.icon, this.backgroundColor, this.foregroundColor,});
  final  void Function() ontap;
  final String text;
  final IconData? icon;
  final Color?backgroundColor;
  final Color?foregroundColor;


  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(onPressed: ontap, label: Text(text),icon: Icon(icon),style: ElevatedButton.styleFrom(
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,

    ),);
  }
}
