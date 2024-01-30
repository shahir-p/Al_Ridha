import 'package:flutter/material.dart';

class AccountOrder extends StatelessWidget {
  const AccountOrder({super.key});

  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff911f2a),
        leading: IconButton(
          icon: ImageIcon(
            AssetImage('assets/icons/left.png'),
            size: 30,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Orders',
          style: TextStyle(color: Colors.white, fontFamily: 'poppins'),
        ),
      ),
      body: Container(
        height:Height,
        width: Width,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: Width*0.02,vertical: Height*0.02),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade400),
              height: Height*0.08,
              width: Width,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Order id:  ... is palced',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                 Spacer(),
                  Container(
                    height: 30,
                    width: 30,
                    child: Image.asset('assets/icons/check-mark.png'),

                  ),
                  SizedBox(width: Width*0.05,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
