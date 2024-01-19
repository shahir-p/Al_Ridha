import 'package:alridafrieds/deliveryboy_app/DLProfile.dart';
import 'package:alridafrieds/deliveryboy_app/Dl%20notification.dart';
import 'package:flutter/material.dart';

class Delivered extends StatefulWidget {
  const Delivered({super.key});

  @override
  State<Delivered> createState() => _DeliveredState();
}

class _DeliveredState extends State<Delivered> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff911f2a),
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            'Delivered',
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
        child: Container(
          height: double.infinity,
          width: 340,
          child: Column(

            children: [
              SizedBox(height: 10,),
              Container(
                height: 70,
                width: 330,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(),

                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 10,),
                    Text('1',style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),),
                    // SizedBox(width: 30,),
                    Text('Order No:#001',style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),),
                    // SizedBox(width: 30,),
                    Container(height: 30,
                    child: Image.asset('assets/icons/check-mark.png'),),
                    SizedBox(width: 10,)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
