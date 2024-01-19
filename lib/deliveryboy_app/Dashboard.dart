import 'package:alridafrieds/deliveryboy_app/Home.dart';
import 'package:alridafrieds/deliveryboy_app/Delivered.dart';
import 'package:alridafrieds/deliveryboy_app/Order.dart';
import 'package:alridafrieds/deliveryboy_app/Progress.dart';
import 'package:alridafrieds/deliveryboy_app/Wallet.dart';
import 'package:flutter/material.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
    State<Dashboard> createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Dashboard> {

  int _SelectedCurrentIndex = 0;
final _pages = [DlHome(),Order(),Progress(),Delivered(),Wallet()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Color(0xff911f2a),
        animationDuration: Duration(milliseconds: 400),
        items: [
          CurvedNavigationBarItem(
            child:Image.asset('assets/icons/home.png',width: 25,height: 25,color: Colors.white,),
            // child: Icon(Icons.home_outlined,color: Colors.white,),
            label: 'Home',
            labelStyle: TextStyle(
              fontFamily: 'poppins',
              color: Colors.white
            )
          ),
          CurvedNavigationBarItem(
              child:Image.asset('assets/delivryboy/icon/order.png',width: 25,height: 25,color: Colors.white,),
              // child: Icon(Icons.home_outlined,color: Colors.white,),
              label: 'Orders',
              labelStyle: TextStyle(
                  fontFamily: 'poppins',
                  color: Colors.white
              )
          ),
          CurvedNavigationBarItem(
              child:Image.asset('assets/delivryboy/icon/progress.png',width: 25,height: 25,color: Colors.white,),
              // child: Icon(Icons.home_outlined,color: Colors.white,),
              label: 'Progress',
              labelStyle: TextStyle(
                  fontFamily: 'poppins',
                  color: Colors.white
              )
          ),
          CurvedNavigationBarItem(
              child:Image.asset('assets/delivryboy/icon/delivered.png',width: 25,height: 25,color: Colors.white,),
              // child: Icon(Icons.home_outlined,color: Colors.white,),
              label: 'Delivered',
              labelStyle: TextStyle(
                  fontFamily: 'poppins',
                  color: Colors.white
              )
          ),
          CurvedNavigationBarItem(
              child:Image.asset('assets/delivryboy/icon/wallet.png',width: 25,height: 25,color: Colors.white,),
              // child: Icon(Icons.home_outlined,color: Colors.white,),
              label: 'Wallet',
              labelStyle: TextStyle(
                  fontFamily: 'poppins',
                  color: Colors.white
              )
          ),
        ],

        // color:Color(0xff911f2a),
        // buttonBackgroundColor: Colors.white,

        onTap: (index) {
    setState(() {
      _SelectedCurrentIndex = index;
    });
    },
    letIndexChange: (index) => true,
      // Handle button tap
      ),
      body: _pages[_SelectedCurrentIndex],



    );
  }
}
