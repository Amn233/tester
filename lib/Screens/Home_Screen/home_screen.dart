import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:newsapp/CustomWidgets/Animations/Animation_Drawer/animated_drawer.dart';
import 'package:newsapp/CustomWidgets/Container/filter_container.dart';
import 'package:newsapp/CustomWidgets/Container/search_container.dart';
import 'package:newsapp/CustomWidgets/CustomCards/Category.dart';
import 'package:newsapp/CustomWidgets/CustomCards/best_for_you.dart';
import 'package:newsapp/CustomWidgets/Texts/text.dart';

import '../../CustomWidgets/CustomCards/image_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var appSize = MediaQuery.of(context).size;
    var commonPadding = EdgeInsets.all(appSize.height * 0.012);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: commonPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: commonPadding,
                  child: Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                     InkWell(
                         onTap: (){
                           context.push("/drawer");
                         },
                         child: Icon(Icons.arrow_back_ios)),
                      text(
                        title: "Location",
                        textColor: Colors.black.withOpacity(0.5),
                        fontSize: appSize.height * 0.02,
                        fontWeight: FontWeight.normal,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: commonPadding,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      text(
                        title: "Jakarta",
                        textColor: Colors.black,
                        fontSize: appSize.height * 0.03,
                        fontWeight: FontWeight.bold,
                      ),
                      Icon(
                        Icons.notifications,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: appSize.height * 0.02,
                ),
                Padding(
                  padding: commonPadding,
                  child: Row(
                    children: [
                      Expanded(
                        child: Search_Container(
                          icon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          text: "Search address,or near your",
                          Width: appSize.width * 0.745,
                          Height: appSize.height * 0.07,
                          radius: appSize.height * 0.018,
                          color: Colors.grey.shade300,
                          textColor: Colors.black.withOpacity(0.6),
                        ),
                      ),
                      SizedBox(
                        width: appSize.width * 0.02,
                      ),
                      Filter_container(
                        icon: Icon(
                          Icons.filter_list,
                          color: Colors.white,
                        ),
                        Width: appSize.width * 0.16,
                        Height: appSize.height * 0.07,
                        radius: appSize.height * 0.020,
                        color: Colors.lightBlueAccent,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: commonPadding,
                  child: Category(
                    text: 'Category',
                    width: appSize.width * 0.250,
                    height: appSize.height * 0.09,
                    radius: appSize.height * 0.018,
                    color: Colors.grey.shade300,
                    textColor: Colors.black.withOpacity(0.6),
                    fontSize: appSize.height * 0.02,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    category: [
                      {"heading": "House"},
                      {"heading": "Apartment"},
                      {"heading": "Hostel"},
                      {"heading": "Villa"},
                      {"heading": "Cottage"},
                    ],
                    selectedColor: Colors.lightBlueAccent,
                  ),
                ),
                Padding(
                  padding: commonPadding,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      text(
                        title: "Near from you",
                        textColor: Colors.black,
                        fontSize: appSize.height * 0.02,
                        fontWeight: FontWeight.bold,
                      ),
                      text(
                        title: "See more",
                        textColor: Colors.black.withOpacity(0.5),
                        fontSize: appSize.height * 0.02,
                        fontWeight: FontWeight.normal,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: commonPadding,
                  child: SizedBox(
                    width: appSize.width * 0.9,
                    child: ImageCard(
                      width: appSize.width * 0.530,
                      height: appSize.height * 0.38,
                      radius: appSize.height * 0.024,
                      color: Colors.white,
                      textColor: Colors.black,
                      fontSize: appSize.height * 0.03,
                      scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      image: [
                        {
                          'url':
                          'https://images.pexels.com/photos/20427348/pexels-photo-20427348/free-photo-of-house-by-street-in-town.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'
                        },
                        {
                          'url':
                          'https://images.pexels.com/photos/20440032/pexels-photo-20440032/free-photo-of-house-and-car.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'
                        },
                      ],

                      left: appSize.height * 0.010,
                      bottom: appSize.width * 0.090,
                    ),
                  ),
                ),
                Padding(
                  padding: commonPadding,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      text(
                        title: "Best for you",
                        textColor: Colors.black,
                        fontSize: appSize.height * 0.02,
                        fontWeight: FontWeight.bold,
                      ),
                      text(
                        title: "See more",
                        textColor: Colors.black.withOpacity(0.5),
                        fontSize: appSize.height * 0.02,
                        fontWeight: FontWeight.normal,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: commonPadding,
                  child: SizedBox(
                    height: appSize.height * 0.3,
                    child: best_for(
                      width: appSize.width * 0.780,
                      height: appSize.height * 0.10,
                      radius: appSize.height * 0.024,
                      color: Colors.white,
                      textColor: Colors.black,
                      fontSize: appSize.height * 0.03,
                      scrollDirection: Axis.vertical,
                      itemCount: 4,
                      image: [
                        {
                          'url':
                          'https://images.pexels.com/photos/20427348/pexels-photo-20427348/free-photo-of-house-by-street-in-town.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'
                        },
                        {
                          'url':
                          'https://images.pexels.com/photos/20440032/pexels-photo-20440032/free-photo-of-house-and-car.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'
                        },
                        {
                          'url':
                          'https://images.pexels.com/photos/20427348/pexels-photo-20427348/free-photo-of-house-by-street-in-town.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'
                        },
                        {
                          'url':
                          'https://images.pexels.com/photos/20440032/pexels-photo-20440032/free-photo-of-house-and-car.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'
                        },
                      ],
                      housename: [
                        {"heading": "Orchad House"},
                        {"heading": "The Hollies House"},
                        {"heading": "Sea Breezes House"},
                        {"heading": "Little Copse House"}
                      ],
                      houseprice: [
                        {"price": "Rp. 2.500.000.000 / Year"},
                        {"price": "Rp. 2.000.000.000 / Year"},
                        {"price": "Rp. 900.000.000 / Year"},
                        {"price": "Rp. 900.000.000 / Year"}
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

