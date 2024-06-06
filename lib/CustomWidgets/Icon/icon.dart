import 'package:flutter/material.dart';
class Icon extends StatefulWidget {
  final Icon icon;
  const Icon({super.key, required this.icon});

  @override
  State<Icon> createState() => _IconState();
}

class _IconState extends State<Icon> {
  @override
  Widget build(BuildContext context) {
    return Icon(icon: widget.icon);
  }
}
