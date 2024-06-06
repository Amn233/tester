import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  final String text;
  final double width;
  final double height;
  final double radius;
  final Color color;
  final Color selectedColor;
  final Color textColor;
  final double fontSize;
  final Axis scrollDirection;
  final int itemCount;
  final List<Map<String, String>> category;

  const Category({
    Key? key,
    required this.text,
    required this.width,
    required this.height,
    required this.radius,
    required this.color,
    required this.selectedColor,
    required this.textColor,
    required this.fontSize,
    required this.scrollDirection,
    required this.itemCount,
    required this.category,
  }) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int selectedItemIndex = -1; // Default to no selection

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      margin: const EdgeInsets.all(10),
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: widget.scrollDirection,
        itemCount: widget.itemCount,
        itemBuilder: (context, index) {
          final isSelected = index == selectedItemIndex;
          final itemColor = isSelected ? widget.selectedColor : widget.color;
          return InkWell(
            onTap: () {
              setState(() {
                selectedItemIndex = index;
              });
            },
            child: Container(
              width: widget.width,
              height: widget.height,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: itemColor,
                borderRadius: BorderRadius.circular(widget.radius),
              ),
              child: Center(
                child: Text(
                  widget.category[index]["heading"]!,
                  style: TextStyle(
                    fontSize: widget.fontSize,
                    color: widget.textColor,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
