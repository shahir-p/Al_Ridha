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
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff911f2a),
          automaticallyImplyLeading: false,
          title: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              'Wallet',
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
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                height: 280,
                width: 340,
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
                          height: 150,
                          width: 150,
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
                          height: 150,
                          width: 150,
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
                      width: 320,
                      child: ElevatedButton(onPressed: (){}, child: Text(
                        'Reset',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),
                      )),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
