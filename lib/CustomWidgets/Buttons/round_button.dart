import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final Color color;
  final Color textColor;
  final double buttonWidth;
  final double buttonHeight;
  final double radius;
  final double fontSize;
  final String fontFamily;


  const RoundButton({super.key, required this.title, required this.onTap,required this.color,required this.textColor,required this.buttonHeight,required this.buttonWidth, required this.radius, required this.fontSize, required this.fontFamily});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height:  buttonHeight,
        width: buttonWidth,
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Center(
          child:Text(
            title,
            style: TextStyle(
              fontFamily: fontFamily,
                fontSize:fontSize ,
                color: textColor),

          ),
        ),
      ),
    );
  }
}
