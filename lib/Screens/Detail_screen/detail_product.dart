import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../CustomWidgets/Texts/custom_text.dart';
import '../../CustomWidgets/Texts/text.dart';
import '../Gallery_Section/gallery_section.dart';
import '../Owner_Section/owner_section.dart';
import 'DetailImageSection.dart';


class DetailProduct extends StatefulWidget {
  @override
  State<DetailProduct> createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  final List<Map<String, String>> images = [
    {"url": "https://images.pexels.com/photos/20427348/pexels-photo-20427348/free-photo-of-house-by-street-in-town.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"},
    {"url": "https://images.pexels.com/photos/1115804/pexels-photo-1115804.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"},
    {"url": "https://images.pexels.com/photos/1115804/pexels-photo-1115804.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"},
  ];

  @override
  Widget build(BuildContext context) {
    var appSize = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          DetailImageSection(),
          SizedBox(height: appSize.height * 0.04),
          Padding(
            padding: EdgeInsets.only(left: appSize.width * 0.055),
            child: CustomText(
              title: "Owner",
              textColor: Colors.black,
              fontSize: appSize.height * 0.026,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: appSize.width * 0.055,
              vertical: appSize.height * 0.04,
            ),
            child: OwnerSection(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: appSize.width * 0.055,
              vertical: appSize.height * 0.03,
            ),
            child: CustomText(
              title: "Gallery",
              textColor: Colors.black,
              fontSize: appSize.height * 0.026,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: appSize.width * 0.055),
            child: GallerySection(image: images),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: appSize.width * 0.055,
              vertical: appSize.height * 0.04,),
            child: text(
              title: "price",
              textColor: Colors.black,
              fontSize: appSize.height * 0.018,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding:EdgeInsets.symmetric(horizontal: appSize.width * 0.055,
              vertical: appSize.height * 0.04,),
            child: Row(
              children: [
                text(
                    title: "Rp. 2.500.000.000 / Year",
                    textColor: Colors.black,
                    fontSize:  appSize.height * 0.019,
                    fontWeight: FontWeight.bold),
                SizedBox(width: appSize.height*0.067,),
                Container(
                  width: appSize.height*0.140,
                  height:appSize.height*0.06,
                  decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.circular( appSize.height * 0.018,)
                  ),
                  child: Center(child: Text("Rent Now",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: appSize.height * 0.022, ),),),
                )
              ],
            ),
          ),
        ],

      ),
    );
  }
}
