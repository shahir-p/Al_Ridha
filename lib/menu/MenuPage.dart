import 'package:alridafrieds/HomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MenuPage());
}

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List<Tab> tabs = [
    Tab(child: Text("Special Offer")),
    Tab(child: Text("Value Packs")),
    Tab(child: Text("Menu")),
    Tab(child: Text("Sides")),
    Tab(child: Text("Breads")),
    Tab(child: Text("Drinks")),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: tabs.length,
        child: Scaffold(
            appBar: AppBar(
              title: Text("Menu Page"),
              centerTitle: true,
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(30),
                child: TabBar(
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), // Creates border
                    color: Colors.white,
                  ),
                  indicatorColor: Colors.white,
                  isScrollable: true,
                  tabs: tabs,
                  labelColor: Color(0xffA91110),
                  unselectedLabelColor: Colors.white,
                  indicatorPadding: EdgeInsets.symmetric(vertical: 5),
                ),
              ),
              actions: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 17),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(50),
                    onTap: () {
                      print('tapped');
                    },
                    child: Image.asset(
                      'assets/icons/cart.png',
                      width: 35,
                    ),
                  ),
                )
              ],
            ),
            body: Container(
                decoration: BoxDecoration(
                  color: Color(0xfff5f6f9),
                ),
                margin: EdgeInsets.all(5),
                child: TabBarView(children: [
                  Container(
                    height: 200,
                    child: ListView(
                      children: [
                        Container(
                          height: 350,
                          child: Container(
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey
                                        .withOpacity(0.5), //color of shadow
                                    spreadRadius: 2, //spread radius
                                    blurRadius: 4, // blur radius
                                    offset: Offset(
                                        0, 2), // changes position of shadow
                                    //first paramerter of offset is left-right
                                    //second parameter is top to down
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/sp/sp6.png',
                                    width: double.infinity,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Grilled chicken',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  )
                                ],
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          //Special Offer
                          height: 350,
                          child: Container(
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey
                                        .withOpacity(0.5), //color of shadow
                                    spreadRadius: 2, //spread radius
                                    blurRadius: 4, // blur radius
                                    offset: Offset(
                                        0, 2), // changes position of shadow
                                    //first paramerter of offset is left-right
                                    //second parameter is top to down
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/sp/sp6.png',
                                    width: double.infinity,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Grilled chicken',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  )
                                ],
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 350,
                          child: Container(
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey
                                        .withOpacity(0.5), //color of shadow
                                    spreadRadius: 2, //spread radius
                                    blurRadius: 4, // blur radius
                                    offset: Offset(
                                        0, 2), // changes position of shadow
                                    //first paramerter of offset is left-right
                                    //second parameter is top to down
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/sp/sp6.png',
                                    width: double.infinity,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Grilled chicken',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  )
                                ],
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 350,
                          child: Container(
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey
                                        .withOpacity(0.5), //color of shadow
                                    spreadRadius: 2, //spread radius
                                    blurRadius: 4, // blur radius
                                    offset: Offset(
                                        0, 2), // changes position of shadow
                                    //first paramerter of offset is left-right
                                    //second parameter is top to down
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/sp/sp6.png',
                                    width: double.infinity,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Grilled chicken',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  )
                                ],
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),

                  //Value Pack
                  Container(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            //1st Image Container
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white70,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey
                                      .withOpacity(0.4), //color of shadow
                                  spreadRadius: 2, //spread radius
                                  blurRadius: 4, // blur radius
                                  offset: Offset(
                                      0, 2), // changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                              ],
                            ),
                            width: double.infinity,
                            height: 290,
                            child: Column(
                              children: [
                                Container(
                                  width: 330,
                                  height: 235,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/sp/sp2.png',
                                        ),
                                      ),
                                      borderRadius: BorderRadius.circular(10)),
                                  // child: Image.asset('assets/sp/sp2.png',width: 330,),
                                ),
                                // SizedBox(
                                //   height: 5,
                                // ),
                                SizedBox(
                                  height: 50,
                                  width: 330,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors
                                          .green.shade700, // background color
                                      foregroundColor:
                                          Colors.black, // text color
                                    ),
                                    onPressed: () {},
                                    child: Text('Add to Cart'),
                                  ),
                                )
                              ],
                            ),
                          ), //1st image Container

                          Container(
                            //2nd Image Container
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white70,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey
                                      .withOpacity(0.4), //color of shadow
                                  spreadRadius: 2, //spread radius
                                  blurRadius: 4, // blur radius
                                  offset: Offset(
                                      0, 2), // changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                              ],
                            ),
                            width: double.infinity,
                            height: 290,
                            child: Column(
                              children: [
                                Container(
                                  width: 330,
                                  height: 235,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/sp/sp2.png',
                                        ),
                                      ),
                                      borderRadius: BorderRadius.circular(10)),
                                  // child: Image.asset('assets/sp/sp2.png',width: 330,),
                                ),
                                // SizedBox(
                                //   height: 5,
                                // ),
                                SizedBox(
                                  height: 50,
                                  width: 330,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors
                                          .green.shade700, // background color
                                      foregroundColor:
                                          Colors.black, // text color
                                    ),
                                    onPressed: () {},
                                    child: Text('Add to Cart'),
                                  ),
                                )
                              ],
                            ),
                          ), //2nd image Container

                          Container(
                            //3rd Image Container
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white70,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey
                                      .withOpacity(0.4), //color of shadow
                                  spreadRadius: 2, //spread radius
                                  blurRadius: 4, // blur radius
                                  offset: Offset(
                                      0, 2), // changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                              ],
                            ),
                            width: double.infinity,
                            height: 290,
                            child: Column(
                              children: [
                                Container(
                                  width: 330,
                                  height: 235,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/sp/sp2.png',
                                        ),
                                      ),
                                      borderRadius: BorderRadius.circular(10)),
                                  // child: Image.asset('assets/sp/sp2.png',width: 330,),
                                ),
                                // SizedBox(
                                //   height: 5,
                                // ),
                                SizedBox(
                                  height: 50,
                                  width: 330,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors
                                          .green.shade700, // background color
                                      foregroundColor:
                                          Colors.black, // text color
                                    ),
                                    onPressed: () {},
                                    child: Text('Add to Cart'),
                                  ),
                                )
                              ],
                            ),
                          ), //3rd image Container

                          Container(
                            //4th Image Container
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white70,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey
                                      .withOpacity(0.4), //color of shadow
                                  spreadRadius: 2, //spread radius
                                  blurRadius: 4, // blur radius
                                  offset: Offset(
                                      0, 2), // changes position of shadow
                                  //first paramerter of offset is left-right
                                  //second parameter is top to down
                                ),
                              ],
                            ),
                            width: double.infinity,
                            height: 290,
                            child: Column(
                              children: [
                                Container(
                                  width: 330,
                                  height: 235,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/sp/sp2.png',
                                        ),
                                      ),
                                      borderRadius: BorderRadius.circular(10)),
                                  // child: Image.asset('assets/sp/sp2.png',width: 330,),
                                ),
                                // SizedBox(
                                //   height: 5,
                                // ),
                                SizedBox(
                                  height: 50,
                                  width: 330,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors
                                          .green.shade700, // background color
                                      foregroundColor:
                                          Colors.black, // text color
                                    ),
                                    onPressed: () {},
                                    child: Text('Add to Cart'),
                                  ),
                                )
                              ],
                            ),
                          ), //4th image Container
                        ], // Add above to add new container toValue Pack Container
                      ),
                    ),
                  ),

                  // 3rd TAB  3rd TAB  3rd TAB  3rd TAB  3rd TAB  3rd TAB  3rd TAB  3rd TAB  3rd TAB  3rd TAB  3rd TAB  3rd TAB
                  Container(
                      margin: EdgeInsets.all(5),
                      height: 100,
                      child: SingleChildScrollView(
                          child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment
                              .start, // Adjust alignment as needed
                          children: [
                            Expanded(
                              child: Container(
                                //1st Row 1st Container
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey
                                          .withOpacity(0.5), //color of shadow
                                      spreadRadius: 2, //spread radius
                                      blurRadius: 4, // blur radius
                                      offset: const Offset(
                                          0, 2), // changes position of shadow
                                      //second parameter is top to down
                                    ),
                                  ],
                                ),
                                width: 100,
                                height: 260,
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Container(
                                          height: 125,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                    "assets/menu/menu1.png"),
                                                fit: BoxFit.fill),
                                          ),
                                        ),
                                      ),
                                      const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 10),
                                            child: Text(
                                              '2 Pcs',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 10),
                                        child: Row(
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text('2 Pcs chicken'),
                                                Text('1 bun/khuboose'),
                                                Text('Ketchup 1'),
                                                Text('mayonnaise 1'),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 85),
                                              child: Image.asset(
                                                  'assets/icons/non-veg-icon.png',
                                                  width: 18,
                                                  height: 18),
                                            ),
                                            Image.asset(
                                                'assets/icons/rupee-indian.png',
                                                width: 14,
                                                height: 15),
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(right: 10),
                                              child: Text('110'),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ), //1st Row 1st Container
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Container(
                                  //1st row 2nd Container
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey
                                            .withOpacity(0.5), //color of shadow
                                        spreadRadius: 2, //spread radius
                                        blurRadius: 4, // blur radius
                                        offset: const Offset(
                                            0, 2), // changes position of shadow
                                        //second parameter is top to down
                                      ),
                                    ],
                                  ),
                                  width: 100,
                                  height: 260,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(5),
                                          child: Container(
                                            height: 125,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              image: const DecorationImage(
                                                  image: AssetImage(
                                                      "assets/menu/menu1.png"),
                                                  fit: BoxFit.fill),
                                            ),
                                          ),
                                        ),
                                        const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                              child: Text(
                                                '2 Pcs',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text('2 Pcs chicken'),
                                                  Text('1 bun/khuboose'),
                                                  Text('Ketchup 1'),
                                                  Text('mayonnaise 1'),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 15),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 85),
                                                child: Image.asset(
                                                    'assets/icons/non-veg-icon.png',
                                                    width: 18,
                                                    height: 18),
                                              ),
                                              Image.asset(
                                                  'assets/icons/rupee-indian.png',
                                                  width: 14,
                                                  height: 15),
                                              const Padding(
                                                padding:
                                                    EdgeInsets.only(right: 10),
                                                child: Text('110'),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )), //1st row 2nd Container
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment
                              .start, // Adjust alignment as needed
                          children: [
                            Expanded(
                              child: Container(
                                //2ND Row 1st Container
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey
                                          .withOpacity(0.5), //color of shadow
                                      spreadRadius: 2, //spread radius
                                      blurRadius: 4, // blur radius
                                      offset: const Offset(
                                          0, 2), // changes position of shadow
                                      //second parameter is top to down
                                    ),
                                  ],
                                ),
                                width: 100,
                                height: 260,
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Container(
                                          height: 125,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                    "assets/menu/menu1.png"),
                                                fit: BoxFit.fill),
                                          ),
                                        ),
                                      ),
                                      const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 10),
                                            child: Text(
                                              '2 Pcs',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 10),
                                        child: Row(
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text('2 Pcs chicken'),
                                                Text('1 bun/khuboose'),
                                                Text('Ketchup 1'),
                                                Text('mayonnaise 1'),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 85),
                                              child: Image.asset(
                                                  'assets/icons/non-veg-icon.png',
                                                  width: 18,
                                                  height: 18),
                                            ),
                                            Image.asset(
                                                'assets/icons/rupee-indian.png',
                                                width: 14,
                                                height: 15),
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(right: 10),
                                              child: Text('110'),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ), //2ND Row 1st Container
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Container(
                                  //2ND row 2nd Container
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey
                                            .withOpacity(0.5), //color of shadow
                                        spreadRadius: 2, //spread radius
                                        blurRadius: 4, // blur radius
                                        offset: const Offset(
                                            0, 2), // changes position of shadow
                                        //second parameter is top to down
                                      ),
                                    ],
                                  ),
                                  width: 100,
                                  height: 260,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(5),
                                          child: Container(
                                            height: 125,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              image: const DecorationImage(
                                                  image: AssetImage(
                                                      "assets/menu/menu1.png"),
                                                  fit: BoxFit.fill),
                                            ),
                                          ),
                                        ),
                                        const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                              child: Text(
                                                '2 Pcs',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text('2 Pcs chicken'),
                                                  Text('1 bun/khuboose'),
                                                  Text('Ketchup 1'),
                                                  Text('mayonnaise 1'),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 15),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 85),
                                                child: Image.asset(
                                                    'assets/icons/non-veg-icon.png',
                                                    width: 18,
                                                    height: 18),
                                              ),
                                              Image.asset(
                                                  'assets/icons/rupee-indian.png',
                                                  width: 14,
                                                  height: 15),
                                              const Padding(
                                                padding:
                                                    EdgeInsets.only(right: 10),
                                                child: Text('110'),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )), //2ND row 2nd Container
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment
                              .start, // Adjust alignment as needed
                          children: [
                            Expanded(
                              child: Container(
                                //3rd  Row 1st Container
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey
                                          .withOpacity(0.5), //color of shadow
                                      spreadRadius: 2, //spread radius
                                      blurRadius: 4, // blur radius
                                      offset: const Offset(
                                          0, 2), // changes position of shadow
                                      //second parameter is top to down
                                    ),
                                  ],
                                ),
                                width: 100,
                                height: 260,
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Container(
                                          height: 125,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                    "assets/menu/menu1.png"),
                                                fit: BoxFit.fill),
                                          ),
                                        ),
                                      ),
                                      const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 10),
                                            child: Text(
                                              '2 Pcs',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 10),
                                        child: Row(
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text('2 Pcs chicken'),
                                                Text('1 bun/khuboose'),
                                                Text('Ketchup 1'),
                                                Text('mayonnaise 1'),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 85),
                                              child: Image.asset(
                                                  'assets/icons/non-veg-icon.png',
                                                  width: 18,
                                                  height: 18),
                                            ),
                                            Image.asset(
                                                'assets/icons/rupee-indian.png',
                                                width: 14,
                                                height: 15),
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(right: 10),
                                              child: Text('110'),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ), //3rd  Row 1st Container
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Container(
                                  //3rd row 2nd Container
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey
                                            .withOpacity(0.5), //color of shadow
                                        spreadRadius: 2, //spread radius
                                        blurRadius: 4, // blur radius
                                        offset: const Offset(
                                            0, 2), // changes position of shadow
                                        //second parameter is top to down
                                      ),
                                    ],
                                  ),
                                  width: 100,
                                  height: 260,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(5),
                                          child: Container(
                                            height: 125,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              image: const DecorationImage(
                                                  image: AssetImage(
                                                      "assets/menu/menu1.png"),
                                                  fit: BoxFit.fill),
                                            ),
                                          ),
                                        ),
                                        const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                              child: Text(
                                                '2 Pcs',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text('2 Pcs chicken'),
                                                  Text('1 bun/khuboose'),
                                                  Text('Ketchup 1'),
                                                  Text('mayonnaise 1'),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 15),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 85),
                                                child: Image.asset(
                                                    'assets/icons/non-veg-icon.png',
                                                    width: 18,
                                                    height: 18),
                                              ),
                                              Image.asset(
                                                  'assets/icons/rupee-indian.png',
                                                  width: 14,
                                                  height: 15),
                                              const Padding(
                                                padding:
                                                    EdgeInsets.only(right: 10),
                                                child: Text('110'),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )), //3rd row 2nd Container
                            ),
                          ],
                        ),
                      ] //ADD NEW ROW ABOVE  //ADD NEW ROW ABOVE  //ADD NEW ROW ABOVE
                              ))),

                  //Side  Side  Side  Side  Side  Side  Side  Side  Side  Side  Side  Side  Side  Side  Side  Side  Side  Side  Side  Side  Side  Side  Side
                  Container(
                      margin: EdgeInsets.only(left: 5,right: 5,bottom: 5,top: 20),
                      height: 100,
                      child: SingleChildScrollView(
                          child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment
                              .start, // Adjust alignment as needed
                          children: [
                            Expanded(
                              child: Container(
                                //1st Row 1st Container
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey
                                          .withOpacity(0.5), //color of shadow
                                      spreadRadius: 2, //spread radius
                                      blurRadius: 4, // blur radius
                                      offset: const Offset(
                                          0, 2), // changes position of shadow
                                      //second parameter is top to down
                                    ),
                                  ],
                                ),
                                width: 100,
                                height: 250,
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Container(
                                          height: 125,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                    "assets/menu/french-fries.jpg"),
                                                fit: BoxFit.fill),
                                          ),
                                        ),
                                      ),
                                      const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 10),
                                            child: Text(
                                              'French Fries',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ],
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left:10),
                                              child: Image.asset(
                                                  'assets/icons/veg.jpg',
                                                  width: 15,
                                                  height: 15),
                                            ),
                                          ],
                                        ),

                                      ),
                                      SizedBox(height: 10,),
                                      ElevatedButton(
                                        onPressed: (){},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.green.shade700,
                                          padding: EdgeInsets.symmetric(horizontal: 10),
                                          side: BorderSide(),
                                          ),// Button color
                                        child: SizedBox(height: 45,
                                        width: 130,
                                        child: Container(
                                         decoration: BoxDecoration(
                                             color: Colors.green.shade700,
                                           borderRadius: BorderRadius.circular(10)
                                         ),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding:EdgeInsets.only(left: 10),
                                                  child: Text('Add',style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15,
                                                    color: Colors.white
                                                  ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(right: 10),
                                                child: Container(
                                                  child: Row(
                                                    children: [
                                                      Image.asset('assets/icons/rupee.png',width: 15,),
                                                      Text('49',style: TextStyle(
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 15,
                                                          color: Colors.white,
                                                      ),)
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),),
                                      )
                                    ],
                                  ),
                                ),
                              ), //1st Row 1st Container
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(

                              child: Container(
                                //1st Row 2ND Container
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey
                                          .withOpacity(0.5), //color of shadow
                                      spreadRadius: 2, //spread radius
                                      blurRadius: 4, // blur radius
                                      offset: const Offset(
                                          0, 2), // changes position of shadow
                                      //second parameter is top to down
                                    ),
                                  ],
                                ),
                                width: 100,
                                height: 250,
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Container(
                                          height: 125,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(10),
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                    "assets/menu/dip1.jpeg"),
                                                fit: BoxFit.fill),
                                          ),
                                        ),
                                      ),
                                      const Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 10),
                                            child: Text(
                                              'Coleslaw ',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ],
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left:10),
                                              child: Image.asset(
                                                  'assets/icons/veg.jpg',
                                                  width: 18,
                                                  height: 18),
                                            ),
                                          ],
                                        ),

                                      ),
                                      SizedBox(height: 10,),
                                      SizedBox(height: 45,
                                        width: 150,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.green.shade700,
                                              borderRadius: BorderRadius.circular(10)
                                          ),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding:EdgeInsets.only(left: 10),
                                                  child: Text('Add',style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 15,
                                                      color: Colors.white
                                                  ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(right: 10),
                                                child: Container(
                                                  child: Row(
                                                    children: [
                                                      Image.asset('assets/icons/rupee.png',width: 15,),
                                                      Text('28',style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 15,
                                                        color: Colors.white,
                                                      ),)
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),)
                                    ],
                                  ),
                                ),
                              ), //1st Row 2ND Container
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment
                                  .start, // Adjust alignment as needed
                              children: [
                                Expanded(
                                  child: Container(
                                    //2ND Row 1st Container
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey
                                              .withOpacity(0.5), //color of shadow
                                          spreadRadius: 2, //spread radius
                                          blurRadius: 4, // blur radius
                                          offset: const Offset(
                                              0, 2), // changes position of shadow
                                          //second parameter is top to down
                                        ),
                                      ],
                                    ),
                                    width: 100,
                                    height: 250,
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(5),
                                            child: Container(
                                              height: 125,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(10),
                                                image: const DecorationImage(
                                                    image: AssetImage(
                                                        "assets/menu/hummus.jpg"),
                                                    fit: BoxFit.fill),
                                              ),
                                            ),
                                          ),
                                          const Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(left: 10),
                                                child: Text(
                                                  'Hummus',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 18),
                                                ),
                                              ),
                                            ],
                                          ),

                                          Padding(
                                            padding: const EdgeInsets.only(top: 10),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      left:10),
                                                  child: Image.asset(
                                                      'assets/icons/veg.jpg',
                                                      width: 15,
                                                      height: 15),
                                                ),
                                              ],
                                            ),

                                          ),
                                          SizedBox(height: 10,),
                                          SizedBox(height: 45,
                                            width: 150,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.green.shade700,
                                                  borderRadius: BorderRadius.circular(10)
                                              ),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    child: Padding(
                                                      padding:EdgeInsets.only(left: 10),
                                                      child: Text('Add',style: TextStyle(
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 15,
                                                          color: Colors.white
                                                      ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(right: 10),
                                                    child: Container(
                                                      child: Row(
                                                        children: [
                                                          Image.asset('assets/icons/rupee.png',width: 15,),
                                                          Text('28.0',style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            fontSize: 15,
                                                            color: Colors.white,
                                                          ),)
                                                        ],
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),)
                                        ],
                                      ),
                                    ),
                                  ), //2ND Row 1st Container
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(

                                  child: Container(
                                    //2ND Row 2ND Container
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey
                                              .withOpacity(0.5), //color of shadow
                                          spreadRadius: 2, //spread radius
                                          blurRadius: 4, // blur radius
                                          offset: const Offset(
                                              0, 2), // changes position of shadow
                                          //second parameter is top to down
                                        ),
                                      ],
                                    ),
                                    width: 100,
                                    height: 250,
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(5),
                                            child: Container(
                                              height: 125,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(10),
                                                image: const DecorationImage(
                                                    image: AssetImage(
                                                        "assets/menu/ketchup.jpg"),
                                                    fit: BoxFit.fill),
                                              ),
                                            ),
                                          ),
                                          const Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(left: 10),
                                                child: Text(
                                                  'Ketchup',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 18),
                                                ),
                                              ),
                                            ],
                                          ),

                                          Padding(
                                            padding: const EdgeInsets.only(top: 10),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      left:10),
                                                  child: Image.asset(
                                                      'assets/icons/veg.jpg',
                                                      width: 15,
                                                      height: 15),
                                                ),
                                              ],
                                            ),

                                          ),
                                          SizedBox(height: 10,),
                                          SizedBox(height: 45,
                                            width: 150,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.green.shade700,
                                                  borderRadius: BorderRadius.circular(10)
                                              ),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    child: Padding(
                                                      padding:EdgeInsets.only(left: 10),
                                                      child: Text('Add',style: TextStyle(
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 15,
                                                          color: Colors.white
                                                      ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(right: 10),
                                                    child: Container(
                                                      child: Row(
                                                        children: [
                                                          Image.asset('assets/icons/rupee.png',width: 15,),
                                                          Text('28.0',style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            fontSize: 15,
                                                            color: Colors.white,
                                                          ),)
                                                        ],
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),)
                                        ],
                                      ),
                                    ),
                                  ), //2ND Row 2ND Container
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment
                                  .start, // Adjust alignment as needed
                              children: [
                                Expanded(
                                  child: Container(
                                    //3RD Row 1st Container
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey
                                              .withOpacity(0.5), //color of shadow
                                          spreadRadius: 2, //spread radius
                                          blurRadius: 4, // blur radius
                                          offset: const Offset(
                                              0, 2), // changes position of shadow
                                          //second parameter is top to down
                                        ),
                                      ],
                                    ),
                                    width: 100,
                                    height: 250,
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(5),
                                            child: Container(
                                              height: 125,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(10),
                                                image: const DecorationImage(
                                                    image: AssetImage(
                                                        "assets/menu/mayo.jpeg"),
                                                    fit: BoxFit.fill),
                                              ),
                                            ),
                                          ),
                                          const Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(left: 10),
                                                child: Text(
                                                  'Mayonnaise',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 18),
                                                ),
                                              ),
                                            ],
                                          ),

                                          Padding(
                                            padding: const EdgeInsets.only(top: 10),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      left:10),
                                                  child: Image.asset(
                                                      'assets/icons/veg.jpg',
                                                      width: 15,
                                                      height: 15),
                                                ),
                                              ],
                                            ),

                                          ),
                                          SizedBox(height: 10,),
                                          SizedBox(height: 45,
                                            width: 150,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.green.shade700,
                                                  borderRadius: BorderRadius.circular(10)
                                              ),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    child: Padding(
                                                      padding:EdgeInsets.only(left: 10),
                                                      child: Text('Add',style: TextStyle(
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 15,
                                                          color: Colors.white
                                                      ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(right: 10),
                                                    child: Container(
                                                      child: Row(
                                                        children: [
                                                          Image.asset('assets/icons/rupee.png',width: 15,),
                                                          Text('28.0',style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            fontSize: 15,
                                                            color: Colors.white,
                                                          ),)
                                                        ],
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),)
                                        ],
                                      ),
                                    ),
                                  ),  //3RD Row 1st Container
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(

                                  child: Container(
                                    //3RD Row 2ND Container
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey
                                              .withOpacity(0.5), //color of shadow
                                          spreadRadius: 2, //spread radius
                                          blurRadius: 4, // blur radius
                                          offset: const Offset(
                                              0, 2), // changes position of shadow
                                          //second parameter is top to down
                                        ),
                                      ],
                                    ),
                                    width: 100,
                                    height: 250,
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(5),
                                            child: Container(
                                              height: 125,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(10),
                                                image: const DecorationImage(
                                                    image: AssetImage(
                                                        "assets/menu/pesto-dip.jpg"),
                                                    fit: BoxFit.fill),
                                              ),
                                            ),
                                          ),
                                          const Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(left: 10),
                                                child: Text(
                                                  'Pesto',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 18),
                                                ),
                                              ),
                                            ],
                                          ),

                                          Padding(
                                            padding: const EdgeInsets.only(top: 10),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      left:10),
                                                  child: Image.asset(
                                                      'assets/icons/veg.jpg',
                                                      width: 15,
                                                      height: 15),
                                                ),
                                              ],
                                            ),

                                          ),
                                          SizedBox(height: 10,),
                                          SizedBox(height: 45,
                                            width: 150,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.green.shade700,
                                                  borderRadius: BorderRadius.circular(10)
                                              ),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    child: Padding(
                                                      padding:EdgeInsets.only(left: 10),
                                                      child: Text('Add',style: TextStyle(
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 15,
                                                          color: Colors.white
                                                      ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(right: 10),
                                                    child: Container(
                                                      child: Row(
                                                        children: [
                                                          Image.asset('assets/icons/rupee.png',width: 15,),
                                                          Text('28.0',style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            fontSize: 15,
                                                            color: Colors.white,
                                                          ),)
                                                        ],
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),)
                                        ],
                                      ),
                                    ),
                                  ), //3RD Row 2ND Container
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),

                      ]//ADD ROW ITEMS ABOVE
                          )
                      )
                  ), //SIDE CONTAINER  SIDE CONTAINER  SIDE CONTAINER  SIDE CONTAINER  SIDE CONTAINER  SIDE CONTAINER  SIDE CONTAINER  SIDE CONTAINER  SIDE CONTAINER

            //BREADS  BREADS  BREADS  BREADS  BREADS  BREADS  BREADS  BREADS  BREADS  BREADS  BREADS  BREADS  BREADS  BREADS  BREADS  BREADS  BREADS  BREADS  BREADS
                Container(
            margin: EdgeInsets.only(left: 5,right: 5,bottom: 5,top: 20),
            height: 100,
            child: SingleChildScrollView(
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment
                        .start, // Adjust alignment as needed
                    children: [
                      Expanded(
                        child: Container(
                          //1st Row 1st Container
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.5), //color of shadow
                                spreadRadius: 2, //spread radius
                                blurRadius: 4, // blur radius
                                offset: const Offset(
                                    0, 2), // changes position of shadow
                                //second parameter is top to down
                              ),
                            ],
                          ),
                          width: 100,
                          height: 250,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Container(
                                    height: 125,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.circular(10),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              "assets/menu/bun.jpg"),
                                          fit: BoxFit.fill),
                                    ),
                                  ),
                                ),
                                const Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Text(
                                        'Bun',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                    ),
                                  ],
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left:10),
                                        child: Image.asset(
                                            'assets/icons/veg.jpg',
                                            width: 15,
                                            height: 15),
                                      ),
                                    ],
                                  ),

                                ),
                                SizedBox(height: 10,),
                                SizedBox(height: 45,
                                  width: 150,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.green.shade700,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:EdgeInsets.only(left: 10),
                                            child: Text('Add',style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15,
                                                color: Colors.white
                                            ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 10),
                                          child: Container(
                                            child: Row(
                                              children: [
                                                Image.asset('assets/icons/rupee.png',width: 15,),
                                                Text('6.0',style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Colors.white,
                                                ),)
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),)
                              ],
                            ),
                          ),
                        ), //1st Row 1st Container
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(

                        child: Container(
                          //1st Row 2ND Container
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.5), //color of shadow
                                spreadRadius: 2, //spread radius
                                blurRadius: 4, // blur radius
                                offset: const Offset(
                                    0, 2), // changes position of shadow
                                //second parameter is top to down
                              ),
                            ],
                          ),
                          width: 100,
                          height: 250,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Container(
                                    height: 125,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.circular(10),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              "assets/menu/kuboose.jpg"),
                                          fit: BoxFit.fill),
                                    ),
                                  ),
                                ),
                                const Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Text(
                                        'Kuboos',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                    ),
                                  ],
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left:10),
                                        child: Image.asset(
                                            'assets/icons/veg.jpg',
                                            width: 15,
                                            height: 15),
                                      ),
                                    ],
                                  ),

                                ),
                                SizedBox(height: 10,),
                                SizedBox(height: 45,
                                  width: 150,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.green.shade700,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:EdgeInsets.only(left: 10),
                                            child: Text('Add',style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15,
                                                color: Colors.white
                                            ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 10),
                                          child: Container(
                                            child: Row(
                                              children: [
                                                Image.asset('assets/icons/rupee.png',width: 15,),
                                                Text('6.0',style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Colors.white,
                                                ),)
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),)
                              ],
                            ),
                          ),
                        ), //1st Row 2ND Container
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment
                        .start, // Adjust alignment as needed
                    children: [
                      Expanded(
                        child: Container(
                          //2ND Row 1st Container
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.5), //color of shadow
                                spreadRadius: 2, //spread radius
                                blurRadius: 4, // blur radius
                                offset: const Offset(
                                    0, 2), // changes position of shadow
                                //second parameter is top to down
                              ),
                            ],
                          ),
                          width: 100,
                          height: 250,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Container(
                                    height: 125,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.circular(10),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              "assets/menu/garlic-bread-min.jpg"),
                                          fit: BoxFit.fill),
                                    ),
                                  ),
                                ),
                                const Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Text(
                                        'Garlic Bread',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                    ),
                                  ],
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left:10),
                                        child: Image.asset(
                                            'assets/icons/veg.jpg',
                                            width: 15,
                                            height: 15),
                                      ),
                                    ],
                                  ),

                                ),
                                SizedBox(height: 10,),
                                SizedBox(height: 45,
                                  width: 150,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.green.shade700,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:EdgeInsets.only(left: 10),
                                            child: Text('Add',style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15,
                                                color: Colors.white
                                            ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 10),
                                          child: Container(
                                            child: Row(
                                              children: [
                                                Image.asset('assets/icons/rupee.png',width: 15,),
                                                Text('7.0',style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Colors.white,
                                                ),)
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),)
                              ],
                            ),
                          ),
                        ), //2ND Row 1st Container
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(

                        child: Container(
                          //2ND Row 2ND Container
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.5), //color of shadow
                                spreadRadius: 2, //spread radius
                                blurRadius: 4, // blur radius
                                offset: const Offset(
                                    0, 2), // changes position of shadow
                                //second parameter is top to down
                              ),
                            ],
                          ),
                          width: 100,
                          height: 250,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Container(
                                    height: 125,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.circular(10),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              "assets/menu/buttur-rotti-min.jpg"),
                                          fit: BoxFit.fill),
                                    ),
                                  ),
                                ),
                                const Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Text(
                                        'Butter Bread',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                    ),
                                  ],
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left:10),
                                        child: Image.asset(
                                            'assets/icons/veg.jpg',
                                            width: 15,
                                            height: 15),
                                      ),
                                    ],
                                  ),

                                ),
                                SizedBox(height: 10,),
                                SizedBox(height: 45,
                                  width: 150,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.green.shade700,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:EdgeInsets.only(left: 10),
                                            child: Text('Add',style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15,
                                                color: Colors.white
                                            ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 10),
                                          child: Container(
                                            child: Row(
                                              children: [
                                                Image.asset('assets/icons/rupee.png',width: 15,),
                                                Text('12.0',style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Colors.white,
                                                ),)
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),)
                              ],
                            ),
                          ),
                        ), //2ND Row 2ND Container
                      ),
                    ],
                  ),

                ])
            )
                ), //BREADS    BREADS    BREADS    BREADS    BREADS    BREADS    BREADS    BREADS    BREADS    BREADS    BREADS    BREADS

                  //DRINKS  DRINKS  DRINKS  DRINKS  DRINKS  DRINKS  DRINKS  DRINKS  DRINKS  DRINKS  DRINKS  DRINKS  DRINKS  DRINKS  DRINKS
                  Container(
                      margin: EdgeInsets.only(left: 5,right: 5,bottom: 5,top: 20),
                      height: 100,
                      child: SingleChildScrollView(
                          child: Column(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment
                                  .start, // Adjust alignment as needed
                              children: [
                                Expanded(
                                  child: Container(
                                    //1st Row 1st Container
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey
                                              .withOpacity(0.5), //color of shadow
                                          spreadRadius: 2, //spread radius
                                          blurRadius: 4, // blur radius
                                          offset: const Offset(
                                              0, 2), // changes position of shadow
                                          //second parameter is top to down
                                        ),
                                      ],
                                    ),
                                    width: 100,
                                    height: 250,
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(5),
                                            child: Container(
                                              height: 125,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(10),
                                                image: const DecorationImage(
                                                    image: AssetImage(
                                                        "assets/menu/cocacola-8.jpg"),
                                                    fit: BoxFit.fill),
                                              ),
                                            ),
                                          ),
                                          const Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(left: 10),
                                                child: Text(
                                                  'Cocacola',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 18),
                                                ),
                                              ),
                                            ],
                                          ),

                                          Padding(
                                            padding: const EdgeInsets.only(top: 10),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      left:10),
                                                  child: Image.asset(
                                                      'assets/icons/veg.jpg',
                                                      width: 15,
                                                      height: 15),
                                                ),
                                              ],
                                            ),

                                          ),
                                          SizedBox(height: 10,),
                                          SizedBox(height: 45,
                                            width: 150,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.green.shade700,
                                                  borderRadius: BorderRadius.circular(10)
                                              ),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    child: Padding(
                                                      padding:EdgeInsets.only(left: 10),
                                                      child: Text('Add',style: TextStyle(
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 15,
                                                          color: Colors.white
                                                      ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(right: 10),
                                                    child: Container(
                                                      child: Row(
                                                        children: [
                                                          Image.asset('assets/icons/rupee.png',width: 15,),
                                                          Text('30.0',style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            fontSize: 15,
                                                            color: Colors.white,
                                                          ),)
                                                        ],
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),)
                                        ],
                                      ),
                                    ),
                                  ), //1st Row 1st Container
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(

                                  child: Container(
                                    //1st Row 2ND Container
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey
                                              .withOpacity(0.5), //color of shadow
                                          spreadRadius: 2, //spread radius
                                          blurRadius: 4, // blur radius
                                          offset: const Offset(
                                              0, 2), // changes position of shadow
                                          //second parameter is top to down
                                        ),
                                      ],
                                    ),
                                    width: 100,
                                    height: 250,
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(5),
                                            child: Container(
                                              height: 125,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(10),
                                                image: const DecorationImage(
                                                    image: AssetImage(
                                                        "assets/menu/drinks1.jpg"),
                                                    fit: BoxFit.fill),
                                              ),
                                            ),
                                          ),
                                          const Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(left: 10),
                                                child: Text(
                                                  'Mockup Can',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 18),
                                                ),
                                              ),
                                            ],
                                          ),

                                          Padding(
                                            padding: const EdgeInsets.only(top: 10),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      left:10),
                                                  child: Image.asset(
                                                      'assets/icons/veg.jpg',
                                                      width: 15,
                                                      height: 15),
                                                ),
                                              ],
                                            ),

                                          ),
                                          SizedBox(height: 10,),
                                          SizedBox(height: 45,
                                            width: 150,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.green.shade700,
                                                  borderRadius: BorderRadius.circular(10)
                                              ),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    child: Padding(
                                                      padding:EdgeInsets.only(left: 10),
                                                      child: Text('Add',style: TextStyle(
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 15,
                                                          color: Colors.white
                                                      ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(right: 10),
                                                    child: Container(
                                                      child: Row(
                                                        children: [
                                                          Image.asset('assets/icons/rupee.png',width: 15,),
                                                          Text('30.0',style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            fontSize: 15,
                                                            color: Colors.white,
                                                          ),)
                                                        ],
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),)
                                        ],
                                      ),
                                    ),
                                  ), //1st Row 2ND Container
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment
                                  .start, // Adjust alignment as needed
                              children: [
                                Expanded(
                                  child: Container(
                                    //2ND Row 1st Container
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey
                                              .withOpacity(0.5), //color of shadow
                                          spreadRadius: 2, //spread radius
                                          blurRadius: 4, // blur radius
                                          offset: const Offset(
                                              0, 2), // changes position of shadow
                                          //second parameter is top to down
                                        ),
                                      ],
                                    ),
                                    width: 100,
                                    height: 250,
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(5),
                                            child: Container(
                                              height: 125,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(10),
                                                image: const DecorationImage(
                                                    image: AssetImage(
                                                        "assets/menu/drinks2.jpg"),
                                                    fit: BoxFit.fill),
                                              ),
                                            ),
                                          ),
                                          const Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(left: 10),
                                                child: Text(
                                                  'Lemonade',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 18),
                                                ),
                                              ),
                                            ],
                                          ),

                                          Padding(
                                            padding: const EdgeInsets.only(top: 10),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      left:10),
                                                  child: Image.asset(
                                                      'assets/icons/veg.jpg',
                                                      width: 15,
                                                      height: 15),
                                                ),
                                              ],
                                            ),

                                          ),
                                          SizedBox(height: 10,),
                                          SizedBox(height: 45,
                                            width: 150,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.green.shade700,
                                                  borderRadius: BorderRadius.circular(10)
                                              ),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    child: Padding(
                                                      padding:EdgeInsets.only(left: 10),
                                                      child: Text('Add',style: TextStyle(
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 15,
                                                          color: Colors.white
                                                      ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(right: 10),
                                                    child: Container(
                                                      child: Row(
                                                        children: [
                                                          Image.asset('assets/icons/rupee.png',width: 15,),
                                                          Text('30.0',style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            fontSize: 15,
                                                            color: Colors.white,
                                                          ),)
                                                        ],
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),)
                                        ],
                                      ),
                                    ),
                                  ), //2ND Row 1st Container
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(

                                  child: Container(
                                    //2ND Row 2ND Container
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey
                                              .withOpacity(0.5), //color of shadow
                                          spreadRadius: 2, //spread radius
                                          blurRadius: 4, // blur radius
                                          offset: const Offset(
                                              0, 2), // changes position of shadow
                                          //second parameter is top to down
                                        ),
                                      ],
                                    ),
                                    width: 100,
                                    height: 250,
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(5),
                                            child: Container(
                                              height: 125,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(10),
                                                image: const DecorationImage(
                                                    image: AssetImage(
                                                        "assets/menu/drinks5.jpg"),
                                                    fit: BoxFit.fill),
                                              ),
                                            ),
                                          ),
                                          const Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(left: 10),
                                                child: Text(
                                                  'Xtreme Soda',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 18),
                                                ),
                                              ),
                                            ],
                                          ),

                                          Padding(
                                            padding: const EdgeInsets.only(top: 10),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      left:10),
                                                  child: Image.asset(
                                                      'assets/icons/veg.jpg',
                                                      width: 15,
                                                      height: 15),
                                                ),
                                              ],
                                            ),

                                          ),
                                          SizedBox(height: 10,),
                                          SizedBox(height: 45,
                                            width: 150,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.green.shade700,
                                                  borderRadius: BorderRadius.circular(10)
                                              ),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    child: Padding(
                                                      padding:EdgeInsets.only(left: 10),
                                                      child: Text('Add',style: TextStyle(
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 15,
                                                          color: Colors.white
                                                      ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(right: 10),
                                                    child: Container(
                                                      child: Row(
                                                        children: [
                                                          Image.asset('assets/icons/rupee.png',width: 15,),
                                                          Text('30.0',style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            fontSize: 15,
                                                            color: Colors.white,
                                                          ),)
                                                        ],
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),)
                                        ],
                                      ),
                                    ),
                                  ), //2ND Row 2ND Container
                                ),
                              ],
                            ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment
                                  .start, // Adjust alignment as needed
                              children: [
                                Container(

                                  //2ND Row 1st Container
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey
                                            .withOpacity(0.5), //color of shadow
                                        spreadRadius: 2, //spread radius
                                        blurRadius: 4, // blur radius
                                        offset: const Offset(
                                            0, 2), // changes position of shadow
                                        //second parameter is top to down
                                      ),
                                    ],
                                  ),
                                  width: 165,
                                  height: 250,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(5),
                                          child: Container(
                                            height: 125,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              image: const DecorationImage(
                                                  image: AssetImage(
                                                      "assets/menu/water.jpg"),
                                                  fit: BoxFit.fill),
                                            ),
                                          ),
                                        ),
                                        const Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(left: 10),
                                              child: Text(
                                                'Water 1L',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18),
                                              ),
                                            ),
                                          ],
                                        ),

                                        Padding(
                                          padding: const EdgeInsets.only(top: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left:10),
                                                child: Image.asset(
                                                    'assets/icons/veg.jpg',
                                                    width: 15,
                                                    height: 15),
                                              ),
                                            ],
                                          ),

                                        ),
                                        SizedBox(height: 10,),
                                        SizedBox(height: 45,
                                          width: 150,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.green.shade700,
                                                borderRadius: BorderRadius.circular(10)
                                            ),
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:EdgeInsets.only(left: 10),
                                                    child: Text('Add',style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 15,
                                                        color: Colors.white
                                                    ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(right: 10),
                                                  child: Container(
                                                    child: Row(
                                                      children: [
                                                        Image.asset('assets/icons/rupee.png',width: 15,),
                                                        Text('20.0',style: TextStyle(
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 15,
                                                          color: Colors.white,
                                                        ),)
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),)
                                      ],
                                    ),
                                  ),
                                ),
                            SizedBox(
                                height: 10,
                            ),

                          ])
                          ]
                      )
                  ),)

                ]))));
  }
}
