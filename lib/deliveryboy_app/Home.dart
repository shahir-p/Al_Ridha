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
    final Height= MediaQuery.of(context).size.height;
    final Width= MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff911f2a),
        automaticallyImplyLeading: false,
        title: Text(
          'Dashboard',
          style: TextStyle(
            fontFamily: 'poppins',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
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
        height:Height,
        width: Width,
        child: ListView(
          children:[ Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Row(
                  children: [
                    SizedBox(width: Width*0.01,),
                    Text(
                      'Hy User',
                      style: TextStyle(
                        fontSize: Height*0.025,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Text(
                      isToggleOn ? 'Online' : 'Offline',
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: Height*0.02,
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
                height: Height*0.025,
              ),
              Container(
                child: Performance(),
              ),
              SizedBox(height: Height*0.03,),
              Row(

                children: [
                  SizedBox(width: Width*0.05,),
                  Text(
                    '"delivering \n happiness,one\n package at a time"',
                    style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  Container(
                    width: Width*0.5,
                    height: 120,
                    child: Image.asset('assets/delivryboy/images/bghomepage.png'),
                  )
                ],
              ),
            ],
          ),]
        ),
      ),

    );
  }
}
