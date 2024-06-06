import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newsapp/CustomWidgets/Texts/text.dart';

class best_for extends StatefulWidget {
  final double width;
  final double height;
  final double radius;
  final Color color;
  final Color textColor;
  final double fontSize;
  final Axis scrollDirection;
  final int itemCount;
  final List<Map<String, String>> image;
  final List<Map<String, String>> housename;
  final List<Map<String, String>> houseprice;



  const best_for({
    super.key,
    required this.width,
    required this.height,
    required this.radius,
    required this.color,
    required this.textColor,
    required this.fontSize,
    required this.scrollDirection,
    required this.image,
    required this.itemCount, required this.housename, required this.houseprice,

  });

  @override
  State<best_for> createState() => _best_forState();
}

class _best_forState extends State<best_for> {


  @override
  Widget build(BuildContext context) {
    var appSize = MediaQuery.of(context).size;
    return Container(
      width: widget.width,
      height: widget.height,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: widget.scrollDirection,
        itemCount: widget.image.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: InkWell(
                    onTap: () {},
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(widget.radius),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(widget.radius),
                        child: Image.network(
                          widget.image[index]['url']!,
                          fit: BoxFit.cover,
                          width: widget.width,
                          height: widget.height,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width:appSize.width*0.05 ,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  text(
                      title:widget.housename[index]["heading"]!,
                      textColor: Colors.black,
                      fontSize: appSize.height*0.020,
                      fontWeight:FontWeight.bold),
                  text(
                      title: widget.houseprice[index]["price"]!,
                      textColor: Colors.lightBlueAccent,
                      fontSize: appSize.height*0.014,
                      fontWeight:FontWeight.bold),
                  Row(
                    children: [
                      Icon(Icons.bed),
                      SizedBox(width:appSize.width*0.01 ,),
                      text(title: "6 Bedroom", textColor: Colors.black, fontSize: 14, fontWeight: FontWeight.normal),

                    ],
                  ),
                ],
              ),

            ],
          );
        },
      ),
    );
  }
}
