import 'package:flutter/material.dart';
typedef validator =String? Function(String?)? ;


class TextFomFieldModel extends StatelessWidget {

  String text;
  TextEditingController controller;
  TextInputType textInputType;
  bool ObscureText;
  validator valid;
  Widget? suffixIcon;

  TextFomFieldModel({
    required  this.text,
    this.textInputType=TextInputType.text,
    this.ObscureText=false,
   required this.controller,
   required this.valid,
    this.suffixIcon,

  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: valid,
      controller: controller,
      keyboardType: textInputType,
      obscureText: ObscureText,
      decoration: InputDecoration(
        labelText: text,
        labelStyle: Theme.of(context).textTheme.headline5,
        suffixIcon: suffixIcon
      ),
    )
    ;
  }
}


