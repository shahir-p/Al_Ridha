import 'package:alridafrieds/deliveryboy_app/DLProfile.dart';
import 'package:alridafrieds/deliveryboy_app/Dl%20notification.dart';
import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff911f2a),
        automaticallyImplyLeading: false,
        title: Text(
          'Orders',
          style: TextStyle(
            fontSize: Height * 0.025,
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
              child: Center(
                child: IconButton(
                  icon: ImageIcon(
                    AssetImage('assets/delivryboy/icon/bell.png'),
                    size: 30,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DlNotification()),
                    );
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
              child: Center(
                child: IconButton(
                  icon: ImageIcon(
                    AssetImage('assets/delivryboy/icon/user icon.png'),
                    size: 30,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DlProfile()),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        height: Height,
        width: Width,
        child: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(10),
              height: Height * 0.15,
// width: Width-20,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all()),

              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Order No:#002',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '2 min ago',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff66161d),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Divider(
                      height: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Text(
                          'Address',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
// Container(
// margin: EdgeInsets.all(10),
// height: Height*0.15,
// // width: Width-20,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(10),
// border: Border.all()
// ),
//
// child: Column(
// children: [
// SizedBox(height: 5,),
// Padding(
// padding: const EdgeInsets.symmetric(horizontal: 5),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
//
// Text('Order No:#002',style: TextStyle(
// fontSize: 15,
// fontWeight: FontWeight.bold
// ),),
// Text('2 min ago',style: TextStyle(
// fontSize: 12,
// color: Color(0xff66161d),
// ),)
// ],
// ),
// ),
// Padding(
// padding: const EdgeInsets.all(10),
// child: Divider(
// height: 1,
//
// ),
// ),
// Padding(
// padding: const EdgeInsets.only(left: 10),
// child: Row(
// children: [
// Text('Address',style: TextStyle(
// fontSize: 15
// ),),
// ],
// ),
// ),
// ],
// ),
//
// ),
