import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ImageCard extends StatefulWidget {
  final double width;
  final double height;
  final double radius;
  final double left;
  final double bottom;
  final Color color;
  final Color textColor;
  final double fontSize;
  final Axis scrollDirection;
  final int itemCount;
  final List<Map<String, String>> image;

  const ImageCard({
    super.key,
    required this.width,
    required this.height,
    required this.radius,
    required this.color,
    required this.textColor,
    required this.fontSize,
    required this.scrollDirection,
    required this.image,
    required this.itemCount,
    required this.left,
    required this.bottom,
  });

  @override
  State<ImageCard> createState() => _ImageCardState();
}

class _ImageCardState extends State<ImageCard> {
  @override
  Widget build(BuildContext context) {
    var appSize = MediaQuery.of(context).size;
    return Container(
      width: widget.width,
      height: widget.height,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: widget.scrollDirection,
        itemCount: widget.image.length, // Set itemCount to the length of the image list
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(10),
            child: InkWell(
              onTap: () {
                context.go("/detail");
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(widget.radius),
                ),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(widget.radius),
                      child: Image.network(
                        widget.image[index]['url']!,
                        fit: BoxFit.cover,
                        width: widget.width,
                        height: widget.height,
                      ),
                    ),
                    Positioned(
                      left: widget.left,
                      bottom: widget.bottom,
                      child: Container(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Dreamsville House",
                                style: TextStyle(
                                    fontSize: appSize.height * 0.021,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
