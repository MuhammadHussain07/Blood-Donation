import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'generaltextfield.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  double height = 0;
  double width = 0;
  @override
  Widget build(BuildContext context) {
    List pics = [
      'assets/images/Rectangle 13.png',
      'assets/images/g2.png',
      'assets/images/h1-ConvertImage.png',
      'assets/images/h2-ConvertImage.png',
      'assets/images/g1.png',
      'assets/images/g3.png',
    ];
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    print("mobile height is $height");
    print("mobile width $width");
    return Scaffold(
        // bottomNavigationBar: CurvedNavigationBar(
        //   backgroundColor: Color.fromARGB(255, 255, 33, 86),
        //   animationDuration: Duration(milliseconds: 300),
        //   items: <Widget>[
        //     Icon(
        //       Icons.home_outlined,
        //     ),
        //     Icon(
        //       Icons.search,
        //     ),
        //     Icon(Icons.shutter_speed_outlined),
        //     Icon(Icons.person_outline),
        //   ],
        //   onTap: (index) {
        //     //Handle button tap
        //   },
        // ),

        body: Container(
      height: height,
      width: width,
      color: Colors.white24,
      child: Center(
        child: Container(
          alignment: Alignment.center,
          height: 600,
          width: 350,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.grid_view_outlined),
                    color: Color.fromARGB(255, 255, 33, 86),
                  ),
                  // Image.asset('assets/images/group 17.png'),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.notifications_none_outlined)),
                ],
              ),
              Container(
                  height: 150,
                  width: 300,
                  // color: Colors.yellow,
                  child: CarouselSlider.builder(
                    itemCount: pics.length,
                    options: CarouselOptions(
                        height: 300.0,
                        autoPlay: true,
                        enlargeCenterPage: true,
                        enableInfiniteScroll: true),
                    itemBuilder: (BuildContext context, int itemIndex,
                            int pageViewIndex) =>
                        Container(
                            // color: Colors.red,
                            // height: MediaQuery.of(context).size.height,
                            // height: ,
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(color: Colors.red),
                            child: Image.asset(
                              '${pics[itemIndex]}',
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.height * 0.2,
                              fit: BoxFit.fitHeight,
                            )),
                    // itemIndex
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                height: 207,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    spreadRadius: 3,
                    blurRadius: 15,
                    offset: Offset(0, 3),
                  )
                ]),
                // color: Colors.grey[100],
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: GridView.count(
                    // childAspectRatio: 1.5,
                    crossAxisCount: 3,
                    mainAxisSpacing: 7,
                    crossAxisSpacing: 3,
                    scrollDirection: Axis.vertical,
                    children: [
                      gridhome(
                          'assets/images/search_outline.png', 'Find donars'),
                      gridhome(
                          'assets/images/blood_transfusion.png', 'Donates'),
                      gridhome('assets/images/vector1.png', 'Order Bloods'),
                      gridhome('assets/images/vector2.png', 'Assistant'),
                      gridhome('assets/images/vector3.png', 'Report'),
                      gridhome('assets/images/vector4.png', 'Campaign'),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(
                  children: [
                    Text(
                      'Donation Request',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: info('Muhammad Hussain', 'Kpk, Abbottabad'),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
