import 'package:flutter/material.dart';

class GallerySection extends StatelessWidget {
  final List<Map<String, String>> image;

  const GallerySection({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
        itemCount: image.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            height: 80,
            width: 80,
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: NetworkImage(image[index]['url']!),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
