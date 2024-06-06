import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class textFiled extends StatelessWidget {
  final String hintText;
  final TextInputType inputType;
  final TextEditingController controller;
  final FormFieldValidator  validator;
  final ValueChanged  onChange;
  final Color borderColor;
  final Color textColor;
  final Color  focusedBorderColor;
  final double radius;
  final String regexPattern;

  const textFiled({super.key, required this.hintText, required this.inputType, required this.controller, required this.validator, required this.onChange, required this.borderColor, required this.textColor,required this.focusedBorderColor, required this.radius,required this.regexPattern,

  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: textColor),
      controller: controller,
      keyboardType: inputType,
      validator: validator,
      onChanged: onChange,
      decoration:InputDecoration(
        hintText:hintText,
        enabledBorder: OutlineInputBorder(
            borderSide:BorderSide(
                color: borderColor),
          borderRadius: BorderRadius.circular(radius)
        ),
        focusedBorder: OutlineInputBorder(
            borderSide:BorderSide(color: focusedBorderColor),
            borderRadius: BorderRadius.circular(radius)
        )

        )
      );
  }
}
