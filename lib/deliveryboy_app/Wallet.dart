import 'package:alridafrieds/deliveryboy_app/DLProfile.dart';
import 'package:alridafrieds/deliveryboy_app/Dl%20notification.dart';
import 'package:flutter/material.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff911f2a),
          automaticallyImplyLeading: false,
          title: Text(
            'Wallet',
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
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
          height: Height*0.35,
          // width: Width,
          decoration: BoxDecoration(
              color: Color(0xff911f2a),
              borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: 10,),
                  Text(
                    'My Earnings',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 10,),
                  Container(
                    height: Height*0.18,
                    width: Width*0.38,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(height: 10,),
                          Text('Orders',style: TextStyle(color:  Color(0xff911f2a),
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),),
                          SizedBox(height: 20,),
                          Text('25',style: TextStyle(color:  Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: Height*0.18,
                    width: Width*0.38,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(height: 10,),
                          Text('Amount',style: TextStyle(color:  Color(0xff911f2a),
                          fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),),
                          SizedBox(height: 20,),
                          Text('1000',style: TextStyle(color:  Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                ],
              ),
              SizedBox(height: 10,),
              SizedBox(
                height: 55,
                width: Width-60,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white, // Change the background color as needed
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15), // Set border radius to 0 for a rectangular shape
                    ),
                  ),
                  child: Text(
                    'Reset',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              )

            ],
          ),
        ));
  }
}
