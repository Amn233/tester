import 'package:flutter/material.dart';
class Search_Container extends StatelessWidget {
  
  
  final Icon icon;
  final String text;
  final double Width;
  final double Height;
  final double radius;
  final Color color;
  final Color textColor;
  
  
  const Search_Container({super.key, required this.icon, required this.text, required this.Width, required this.Height, required this.radius, required this.color, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        height: Height,
        width: Width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(radius),
        ),

        child: Row(
          children: [
           Padding(
             padding: const EdgeInsets.all(13.0),
             child: icon,
           ),
            Text(text,style: TextStyle(color: textColor),),
          ],
        ),
      ),
    );
  }
}
