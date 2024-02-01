import 'package:alridafrieds/user/accounts/Search.dart';
import 'package:alridafrieds/user/accounts/cart.dart';
import 'package:alridafrieds/user/menu/menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff911f2a),
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            'Home',
            style: TextStyle(
                fontFamily: 'poppins',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Color(0xff66161d),
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: IconButton(
                    icon: ImageIcon(
                      AssetImage('assets/icons/search.png'),
                      size: 30,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SearchPage()),
                      );
                    },
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Color(0xff66161d),
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: IconButton(
                    icon: ImageIcon(
                      AssetImage('assets/icons/cart.png'),
                      size: 30,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AccountCart()),
                      );
                    },
                  ),
                )),
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: ListView(children: [
          Column(
            children: [
              Container(
                height: 250,
                width: double.infinity,
                child: ImageSlideshow(
                  /// Width of the [ImageSlideshow].
                  width: double.infinity,

                  /// Height of the [ImageSlideshow].
                  height: 250,

                  /// The page to show when first creating the [ImageSlideshow].
                  initialPage: 0,

                  /// The color to paint the indicator.
                  indicatorColor: Colors.black,

                  /// The color to paint behind th indicator.
                  indicatorBackgroundColor: Colors.grey,

                  /// The widgets to display in the [ImageSlideshow].
                  /// Add the sample image file into the images folder
                  children: [
                    Image.asset(
                      "assets/carousel/cr1.jpg",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "assets/carousel/cr2.jpg",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "assets/carousel/cr3.jpg",
                      fit: BoxFit.cover,
                    ),
                  ],

                  /// Called whenever the page in the center of the viewport changes.
                  onPageChanged: (value) {
                    print('Page changed: $value');
                  },

                  /// Auto scroll interval.
                  /// Do not auto scroll with null or 0.
                  autoPlayInterval: 10000,

                  /// Loops back to first slide.
                  isLoop: true,
                ),
              ),

              //Special offer

              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AlRidaMenu()),
                        );
                      },
                      child: Text(
                        'Special Offer',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'poppins',
                            fontSize: 18,
                            color: Colors.black),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AlRidaMenu()),
                        );
                      },
                      child: Text(
                        'viewall',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'poppins',
                            color: Colors.grey),
                      ),
                    )
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 170,
                  width: double.infinity,
                  child: ListView(
                    // This next line does the trick.
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/sp6.png",
                                ),
                                fit: BoxFit.fill),
                            // color: Colors.red,
                          ),
                          width: 280,
                          // child: Image.asset('assets/sp6.png',fit: BoxFit.cover,),
                        ),
                        onTap:() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => AlRidaMenu()));

                        }),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(
                                "assets/sp/sp2.png",
                              ),
                              fit: BoxFit.fill),
                          // color: Colors.red,
                        ),
                        width: 280,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(
                                "assets/sp/sp5.png",
                              ),
                              fit: BoxFit.fill),
                          // color: Colors.red,
                        ),
                        width: 280,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(
                                "assets/sp/delicious-chicken-table.jpg",
                              ),
                              fit: BoxFit.fill),
                          // color: Colors.red,
                        ),
                        width: 280,
                      ),
                      // SizedBox(
                      //   width: 5,
                      // ),
                      // Container(
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(10),
                      //     image: DecorationImage(
                      //         image: AssetImage(
                      //           "assets/sp6.png",
                      //         ),
                      //         fit: BoxFit.fill),
                      //     // color: Colors.red,
                      //   ),
                      //   width: 280,
                      // ),
                      // SizedBox(
                      //   width: 5,
                      // ),
                    ],
                  ),
                ),
              ),

              // SizedBox(
              //   height: 10,
              // ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AlRidaMenu()),
                        );
                      },
                      child: Text(
                        'Menu',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'poppins',
                            fontSize: 18,
                            color: Colors.black),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AlRidaMenu()),
                        );
                      },
                      child: Text(
                        'viewall',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'poppins',
                            color: Colors.grey),
                      ),
                    )
                  ],
                ),
              ),

              //menu items

              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 5),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AlRidaMenu()));
                  },
                  child: Container(
                    height: 170,
                    width: double.infinity,
                    child: ListView(
                      // This next line does the trick.
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/menu/menu.png",
                                ),
                                fit: BoxFit.fill),
                            // color: Colors.blue,
                          ),
                          width: 170,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/menu/bun.jpg",
                                ),
                                fit: BoxFit.fill),
                            // color: Colors.blue,
                          ),
                          width: 170,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/menu/mayo.jpeg",
                                ),
                                fit: BoxFit.fill),
                            // color: Colors.blue,
                          ),
                          width: 170,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/menu/miri.png",
                                ),
                                fit: BoxFit.fill),
                            // color: Colors.blue,
                          ),
                          width: 170,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/menu/kuboose.jpg",
                                ),
                                fit: BoxFit.fill),
                            // color: Colors.blue,
                          ),
                          width: 170,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
