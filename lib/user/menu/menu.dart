import 'package:alridafrieds/user/accounts/Search.dart';
import 'package:alridafrieds/user/accounts/cart.dart';
import 'package:alridafrieds/user/menu/Breads.dart';
import 'package:alridafrieds/user/menu/Drinks.dart';
import 'package:alridafrieds/user/menu/Dip.dart';
import 'package:alridafrieds/user/menu/Spoffer.dart';
import 'package:alridafrieds/user/menu/FriedChicken.dart';

import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  Menu({super.key});

  List<Tab> tabs = [
    Tab(child: Text("Special Offer")),
    Tab(child: Text("Menu")),
    Tab(child: Text("Dip")),
    Tab(child: Text("Breads")),
    Tab(child: Text("Drinks")),
  ];

  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 5,
      child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(20), // Creates border
                color: Colors.white,
              ),
              tabAlignment: TabAlignment.start,
              indicatorColor: Colors.white,
              isScrollable: true,
              tabs: tabs,
              labelColor: Color(0xff911f2a),
              unselectedLabelColor: Colors.white,
              indicatorPadding: EdgeInsets.symmetric(vertical: 5),
              indicatorSize: TabBarIndicatorSize.tab,
            ),
            backgroundColor: Color(0xff911f2a),
            automaticallyImplyLeading: false,
            title: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'Menu',
                style: TextStyle(
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
                            MaterialPageRoute(
                                builder: (context) => SearchPage()),
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
                            MaterialPageRoute(
                                builder: (context) => AccountCart()),
                          );
                        },
                      ),
                    )),
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: Height,
              width: Width,
              // color: Colors.amber,
              child: TabBarView(
                children: [
                  //Special offer container  Special offer container  Special offer container  Special offer container  Special offer container  Special offer container  Special offer container
                  Container(child: SpOffer()),

                  Container(child: FriedChicken()),

                  Container(child: Dip(),
                  ),

                  Container(child: Breads(),
                  ),
                  Container(child: Drinks(),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
