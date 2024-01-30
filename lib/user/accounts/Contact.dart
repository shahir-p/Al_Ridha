import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    final Hieght=MediaQuery.of(context).size.height;
    final Width=MediaQuery.of(context).size.width;
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
          'Contact Us',
          style: TextStyle(color: Colors.white, fontFamily: 'poppins'),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: Hieght*0.07,
                  width: Width-40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all()),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 25,
                        width: 40,
                        child: Image.asset('assets/icons/call.png'),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        '+91 90200718126',
                        style: TextStyle(fontSize: 20),
                      ),


                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),

            Row(
              children: [

                Container(
                  height: Hieght*0.07,
                  width: Width-40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all()),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 30,
                        width: 40,
                        child: Image.asset('assets/icons/whatsapp.png',),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        '+91 90200718126',
                        style: TextStyle(fontSize: 20),
                      ),


                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),

            Row(
              children: [
                Container(
                  height: Hieght*0.07,
                  width: Width-40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all()),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 30,
                        width: 40,
                        child: Image.asset('assets/icons/mail.png'),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'alrida@gamil.com',
                        style: TextStyle(fontSize: 20),
                      ),


                    ],
                  ),
                ),
              ],
            ),
            Text('If you want cancel order or any needs please contact us',style: TextStyle(fontSize: 10,color: Colors.grey),)
          ],
        ),
      ),
    );

  }
}
