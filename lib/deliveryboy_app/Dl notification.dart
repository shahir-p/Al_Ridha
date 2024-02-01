import 'package:alridafrieds/deliveryboy_app/DLProfile.dart';
import 'package:flutter/material.dart';
final gggg="kkkk";
class DlNotification extends StatelessWidget {
  const DlNotification({super.key});

  @override
  Widget build(BuildContext context) {
    final Height =MediaQuery.of(context).size.height;
    final Width =MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
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
        backgroundColor: Color(0xff911f2a),
        automaticallyImplyLeading: false,
        title: Text(
          'Notification',
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
    height: Height,
    width: Width,
    child: ListView.builder(
    itemCount: 2,
    itemBuilder: (context, index) {
      return Container(
        margin: EdgeInsets.all(10),
        height: Height*0.07,
        // width: width,
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
      );



    }

    )

    ));
  }
}
