import 'package:flutter/material.dart';
class dropsDowns extends StatefulWidget {

  final Color borderColor;
  final Color focusedBorderColor;
  final String title1;
  final String title2;
  final String title3;
  final double radius;
  final double radius2;
  final FormFieldValidator validator;
  final String hintText;


  const dropsDowns({super.key, required this.borderColor, required this.focusedBorderColor, required this.title1, required this.title2, required this.title3, required this.radius, required this.validator, required this.radius2, required this.hintText, });

  @override
  State<dropsDowns> createState() => _dropsDownsState();
}

class _dropsDownsState extends State<dropsDowns> {

  int? selectValue;

  @override
  Widget build(BuildContext context)
  {
    return DropdownButtonFormField(
      hint: Text(widget.hintText),
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(widget.radius),borderSide: BorderSide(color: widget.borderColor)),
           focusedBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(widget.radius2),borderSide: BorderSide(color: widget.focusedBorderColor))
      ),
        value:selectValue,
        items: [
          DropdownMenuItem(
              value:1,
              child: Text(widget.title1)),
          DropdownMenuItem(
              value:2,
              child: Text(widget.title2)),
          DropdownMenuItem(
              value:3,
              child: Text(widget.title3))
        ],
        onChanged: (value1){
           setState(() {
             selectValue=value1;
           });
           },
      validator: widget.validator,
    );
  }
}
