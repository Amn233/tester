import 'package:flutter/material.dart';
class Filter_container extends StatelessWidget {
  final Icon icon;
  final double Width;
  final double Height;
  final double radius;
  final Color color;
  const Filter_container({super.key, required this.icon, required this.Width, required this.Height, required this.radius, required this.color});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: Height,
      width: Width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: IconButton(onPressed: () {}, icon: icon,),
    );
  }
}
