import 'package:alridafrieds/deliveryboy_app/DLProfile.dart';
import 'package:flutter/material.dart';
final gggg="kkkk";
class DlNotification extends StatelessWidget {
  const DlNotification({super.key});

  @override
  Widget build(BuildContext context) {
    final height =MediaQuery.of(context).size.height;
    final width =MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff911f2a),
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            'Notification',
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
                    // Navigator.push(context, MaterialPageRoute(builder: (context) =>DlNotification()),);
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
                  color: Colors.black,
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
        margin: EdgeInsets.all(10),
        height: height,
        width: width,
        // color: Colors.grey,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              height: height/10,
              width: width,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text('1',style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),),
                  // SizedBox(
                  //   width: 20,
                  // ),
                  Text('Order No:#001',style: TextStyle(
                      fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),),
                  // SizedBox(width: 20,),
                  Text('is ready for delivery!',style: TextStyle(
                      fontSize: 12,
                    color:Color(0xff3C8A3C)
                  ),),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: height/10,
              width: width,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 10,
                ),
                Text('2',style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),),
                // SizedBox(
                //   width: 20,
                // ),
                Text('Order No:#002',style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),),
                // SizedBox(width: 20,),
                Text('is ready for delivery!',style: TextStyle(
                    fontSize: 12,
                    color:Color(0xff3C8A3C)
                ),),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            ),
          ],
        ),
      )

    );
  }
}