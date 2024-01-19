import 'package:alridafrieds/Account/Account.dart';
import 'package:alridafrieds/menu/MenuPage.dart';
import 'package:alridafrieds/menu/cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/painting/edge_insets.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/material/bottom_navigation_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static  List<Widget> _pages = <Widget>[
   HomeScreen(),
    MenuPage(),
    Accounts()

  ];


  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page'),
    Text('Search Page'),
    Text('Profile Page'),
  ];

  // final List<Widget> _pages = [
  //   HomeScreen(),
  //   MenuPage(),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffA91110),
        actions: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: InkWell(
              borderRadius: BorderRadius.circular(50),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (ctx) => Cart()),
                );
              },
              child: Image.asset(
                'assets/icons/cart.png',
                width: 35,
              ),
            ),
          )
        ],
      ),
      body:
          ListView(children: [
            Container(
              color: Color(0xfff5f6f9),
              child: Column(children: [
                Column(
                  children: [
                    CarouselSlider(
                      options: CarouselOptions(
                        // height: 200.0,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        viewportFraction: 0.8,
                      ),
                      items: [
                        Container(
                          height: 300,
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: AssetImage("assets/fried1.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          height: 300,
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: AssetImage("assets/fried2.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          height: 300,
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: AssetImage("assets/fried3.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'Special offer',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        child: Image.asset('assets/sp/sp6.png'),
                      ),
                      const  SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Image.asset('assets/sp/sp5.png'),
                      ),
                      const  SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Image.asset('assets/sp/sp2.png'),
                      ),
                      const   SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Menu',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ],
                  ),
                ),
                const  SizedBox(
                  height: 10,
                ),
                Container(//Menu
                  margin: EdgeInsets.all(5),
                  height: 200,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    SingleChildScrollView(
                      child: Container(
                          margin: const EdgeInsets.only(left: 5), //1st image

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
                          height: 190,
                          width: 130,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Container(
                                    height: 125,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image:const DecorationImage(
                                          image: AssetImage(
                                              "assets/menu/wrap-5.jpg"),
                                          fit: BoxFit.fill),
                                    ),
                                  ),
                                ),
                                const  Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text('American Wrap'),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right: 60),
                                        child: Image.asset(
                                            'assets/icons/non-veg-icon.png',
                                            width: 18,
                                            height: 18),
                                      ),
                                      Image.asset('assets/icons/rupee-indian.png',
                                          width: 14, height: 15),
                                      const  Padding(
                                        padding: const EdgeInsets.only(right: 10),
                                        child: Text('110'),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      //2nd image
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
                        height: 200,
                        width: 130,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Container(
                                height: 125,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image:const DecorationImage(
                                      image: AssetImage(
                                          "assets/menu/broast-fries3.jpg"),
                                      fit: BoxFit.fill),
                                ),
                              ),
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text('fried chicken'),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 60),
                                    child: Image.asset(
                                        'assets/icons/non-veg-icon.png',
                                        width: 18,
                                        height: 18),
                                  ),
                                  Image.asset('assets/icons/rupee-indian.png',
                                      width: 14, height: 15),
                                  const  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Text('160'),
                                  )
                                ],
                              ),
                            )
                          ],
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      //3rd
                        color: Colors.white,
                        height: 200,
                        width: 130,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Container(
                                height: 125,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image:const DecorationImage(
                                      image:
                                      AssetImage("assets/menu/grilled-4.jpg"),
                                      fit: BoxFit.fill),
                                ),
                              ),
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text('Grilled Chicken'),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 60),
                                    child: Image.asset(
                                        'assets/icons/non-veg-icon.png',
                                        width: 18,
                                        height: 18),
                                  ),
                                  Image.asset('assets/icons/rupee-indian.png',
                                      width: 14, height: 15),
                                  const Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Text('410'),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      //4th
                        color: Colors.white,
                        height: 200,
                        width: 130,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Container(
                                height: 125,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          "assets/menu/loaded-fries7.jpg"),
                                      fit: BoxFit.fill),
                                ),
                              ),
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text('Loaded fries'),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 60),
                                    child: Image.asset(
                                        'assets/icons/non-veg-icon.png',
                                        width: 18,
                                        height: 18),
                                  ),
                                  Image.asset('assets/icons/rupee-indian.png',
                                      width: 14, height: 15),
                                  const Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Text('360'),
                                  )
                                ],
                              ),
                            )
                          ],
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      //5th
                        color: Colors.white,
                        height: 200,
                        width: 130,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Container(
                                height: 125,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image:const DecorationImage(
                                      image:
                                      AssetImage("assets/menu/pizza-6.jpg"),
                                      fit: BoxFit.fill),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text('Pizza'),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 60),
                                    child: Image.asset(
                                        'assets/icons/non-veg-icon.png',
                                        width: 18,
                                        height: 18),
                                  ),
                                  Image.asset('assets/icons/rupee-indian.png',
                                      width: 14, height: 15),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Text('220'),
                                  )
                                ],
                              ),
                            )
                          ],
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        color: Colors.white,
                        height: 200,
                        width: 130,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Container(
                                height: 125,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/menu/zinger-burger1.jpg"),
                                      fit: BoxFit.fill),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text('Zinger Burger'),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 60),
                                    child: Image.asset(
                                        'assets/icons/non-veg-icon.png',
                                        width: 18,
                                        height: 18),
                                  ),
                                  Image.asset('assets/icons/rupee-indian.png',
                                      width: 14, height: 15),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Text('120'),
                                  )
                                ],
                              ),
                            )
                          ],
                        )),
                  ]),
                ),
              ]),
            )
          ]),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });

          if (index == 1) {
            // Navigate to MenuPage
            Navigator.push(context, MaterialPageRoute(builder: (context) => MenuPage()));
          } else if (index == 2) {
            // Navigate to Accounts
            Navigator.push(context, MaterialPageRoute(builder: (context) => Accounts()));
          }
        },

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/icons/home.png"),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/icons/chickens.png"),
            ),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/icons/user.png"),
            ),
            label: 'Account',
          ),
        ],
      ),

          );

  }
}
