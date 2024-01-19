import 'package:alridafrieds/deliveryboy_app/DLProfile.dart';
import 'package:alridafrieds/deliveryboy_app/Dl%20notification.dart';
import 'package:alridafrieds/deliveryboy_app/Performance.dart';
import 'package:flutter/material.dart';

class DlHome extends StatefulWidget {
  const DlHome({Key? key}) : super(key: key);

  @override
  State<DlHome> createState() => _DashBoardState();
}

class _DashBoardState extends State<DlHome> {
  bool isToggleOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff911f2a),
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            'Dashboard',
            style: TextStyle(
              fontFamily: 'poppins',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
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
                borderRadius: BorderRadius.circular(30),
              ),
              child:Center(
                child: IconButton(icon: ImageIcon(AssetImage('assets/delivryboy/icon/bell.png'),
                  size: 30,
                  color: Colors.white,
                ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>DlNotification()),);
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Color(0xff66161d),
                borderRadius: BorderRadius.circular(30),
              ),
              child:Center(
                child: IconButton(icon: ImageIcon(AssetImage('assets/delivryboy/icon/user icon.png'),
                  size: 30,
                  color: Colors.white,
                ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>DlProfile()),);
                  },
                ),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          children:[ Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Row(
                  children: [
                    Text(
                      'Hy User',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Text(
                      isToggleOn ? 'Online' : 'Offline',
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 16,
                        color: isToggleOn ? Color(0xff388e3c) : Color(0xff911f2a),
                      ),
                    ),
                    Switch(
                      value: isToggleOn,
                      onChanged: (value) {
                        setState(() {
                          isToggleOn = value;
                        });
                      },
                      activeColor: Color(0xff388e3c),
                      inactiveThumbColor: Colors.white,
                      inactiveTrackColor: Color(0xff911f2a),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 360,
                width: 340,
                decoration: BoxDecoration(
                    color: Color(0xff911f2a),
                    borderRadius: BorderRadius.circular(15)),
                child: Performance(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Text(
                        '"delivering \n happiness,one\n package at a time"',
                        style: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      width: 180,
                      height: 120,
                      child: Image.asset('assets/delivryboy/images/bghomepage.png'),
                    )
                  ],
                ),
              ),
            ],
          ),]
        ),
      ),

    );
  }
}
