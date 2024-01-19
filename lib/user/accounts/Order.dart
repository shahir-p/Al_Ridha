import 'package:flutter/material.dart';

class AccountOrder extends StatelessWidget {
  const AccountOrder({super.key});

  @override
  Widget build(BuildContext context) {
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
        title: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'Orders',
            style: TextStyle(color: Colors.white, fontFamily: 'poppins'),
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade400),
              height: 60,
              width: 350,
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
                  SizedBox(
                    width: 100,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    child: Image.asset('assets/icons/check-mark.png'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
