import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Performance extends StatefulWidget {
  const Performance({super.key});

  @override
  State<Performance> createState() => _PerformanceState();
}

class _PerformanceState extends State<Performance> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Performance',
                  style: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              // color: Colors.blueAccent,
              child: MyTabBar(),
            ),
          )

          // MyTabBar(),
        ],
      ),
    );
  }
}

class MyTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // specify the number of tabs
      child: Column(
        children: [
          Container(
            constraints: BoxConstraints.expand(
                height: 50), // adjust the height as needed
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: TabBar(
                tabs: [
                  Tab(
                    text: 'Daily',
                  ),
                  Tab(text: 'Weekly'),
                  Tab(text: 'Monthly'),
                ],
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), // Creates border
                  color: Colors.white,
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorPadding: EdgeInsets.symmetric(vertical: 5),
                labelStyle: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
                labelColor:
                    Color(0xff66161d), // customize the selected tab label color
                unselectedLabelColor:
                    Colors.white, // customize the unselected tab label color
                indicatorColor: Colors.white, // customize the indicator color
              ),
            ),
          ),
          Expanded(
            child: Container(
              // This is where you can place the content corresponding to each tab
              child: TabBarView(
                children: [
                  // Content for Tab 1
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: ListView(children: [
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              height: 70,
                              // width: double.infinity,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Orders',
                                      style: TextStyle(
                                        fontFamily: 'poppins',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Color(0xff66161d),
                                      ),
                                    ),
                                    Text(
                                      '12',
                                      style: TextStyle(
                                        fontFamily: 'poppins',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              height: 70,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Earnings',
                                      style: TextStyle(
                                        fontFamily: 'poppins',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Color(0xff66161d),
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          '480',
                                          style: TextStyle(
                                            fontFamily: 'poppins',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          'rupees',
                                          style: TextStyle(
                                            fontFamily: 'poppins',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              height: 70,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Login Hours',
                                      style: TextStyle(
                                        fontFamily: 'poppins',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Color(0xff66161d),
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          '3.45',
                                          style: TextStyle(
                                            fontFamily: 'poppins',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          'hrs',
                                          style: TextStyle(
                                            fontFamily: 'poppins',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
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
                  // Content for Tab 2  // Content for Tab 2  // Content for Tab 2  // Content for Tab 2  // Content for Tab 2  // Content for Tab 2  // Content for Tab 2  // Content for Tab 2  // Content for Tab 2  // Content for Tab 2
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: ListView(children: [
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              height: 70,
                              // width: double.infinity,
                              child: Padding(
                                padding:
                                const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Orders',
                                      style: TextStyle(
                                        fontFamily: 'poppins',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Color(0xff66161d),
                                      ),
                                    ),
                                    Text(
                                      '84',
                                      style: TextStyle(
                                        fontFamily: 'poppins',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              height: 70,
                              child: Padding(
                                padding:
                                const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Earnings',
                                      style: TextStyle(
                                        fontFamily: 'poppins',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Color(0xff66161d),
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          '3360',
                                          style: TextStyle(
                                            fontFamily: 'poppins',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          'rupees',
                                          style: TextStyle(
                                            fontFamily: 'poppins',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              height: 70,
                              child: Padding(
                                padding:
                                const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Login Hours',
                                      style: TextStyle(
                                        fontFamily: 'poppins',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Color(0xff66161d),
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          '13.6',
                                          style: TextStyle(
                                            fontFamily: 'poppins',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          'hrs',
                                          style: TextStyle(
                                            fontFamily: 'poppins',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
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
                  // Content for Tab 3  // Content for Tab 3  // Content for Tab 3  // Content for Tab 3  // Content for Tab 3  // Content for Tab 3  // Content for Tab 3  // Content for Tab 3  // Content for Tab 3  // Content for Tab 3
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: ListView(children: [
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              height: 70,
                              // width: double.infinity,
                              child: Padding(
                                padding:
                                const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Orders',
                                      style: TextStyle(
                                        fontFamily: 'poppins',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Color(0xff66161d),
                                      ),
                                    ),
                                    Text(
                                      '324',
                                      style: TextStyle(
                                        fontFamily: 'poppins',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              height: 70,
                              child: Padding(
                                padding:
                                const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Earnings',
                                      style: TextStyle(
                                        fontFamily: 'poppins',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Color(0xff66161d),
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          '12960',
                                          style: TextStyle(
                                            fontFamily: 'poppins',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          'rupees',
                                          style: TextStyle(
                                            fontFamily: 'poppins',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              height: 70,
                              child: Padding(
                                padding:
                                const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Login Hours',
                                      style: TextStyle(
                                        fontFamily: 'poppins',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Color(0xff66161d),
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          '340',
                                          style: TextStyle(
                                            fontFamily: 'poppins',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          'hrs',
                                          style: TextStyle(
                                            fontFamily: 'poppins',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
