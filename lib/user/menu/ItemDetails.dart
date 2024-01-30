import 'dart:ffi';

import 'package:flutter/material.dart';

class ItemDetails extends StatefulWidget {
  final String title;
  final String discription;
  final String price;
  final String image;

  const ItemDetails({super.key,required this.title,required this.discription,required this.price,required this.image,});

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  bool isFavorited = false;
  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff911f2a),
        automaticallyImplyLeading: false,
        leading:IconButton(icon: ImageIcon(AssetImage('assets/icons/left.png'),
          size: 30,
          color: Colors.white,
        ),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: Text(
          widget.title,
          style: TextStyle(
              fontFamily: 'poppins',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),

      ),
      body: Container(
        height:Height,
        width: Width,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: Height*0.010,horizontal: Width*0.02),
              height: Height*0.25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage(
                        widget.image
                      ),
                      fit: BoxFit.fill),
                color: Colors.grey
              ),
            ),
            SizedBox(height: Height*0.03,),
            Row(
              children: [
                SizedBox(width: 10,),
                Text(widget.title,style: TextStyle(fontSize: 25,
                fontWeight: FontWeight.bold)),

              ],
            ),
            Spacer(),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Expanded(

                  child: Text(widget.discription,
                    // " a savory and succulent dish,\n"
                    //   " is prepared by marinating chicken with \n "
                    //   "flavorful herbs and spices before being \n"
                    //   " expertly grilled to perfection."
                    //   " The smoky\n char and tenderness of the chicken create\n"
                    //   " a mouthwatering experience.",
                    style:
                    TextStyle(
                      fontSize: 15
                    ),),
                )
              ],
            ),
           Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [


                Image.asset('assets/icons/non-veg.png',width: 30,),
                    SizedBox(width: 10,),
                  ],
                ),
              ],
            ),
            Spacer(),
              Container(
                height: Height*0.07,
                margin: EdgeInsets.symmetric(horizontal: Width*0.015),
                // width: ,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Add',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'poppins',
                          fontSize: 15,
                        ),
                      ),
                      Spacer(),
                      Text(
                        widget.price,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'poppins',
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff3c8a3c),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10,),
            SizedBox(height: 10,)
          ],
        ),
      ),
    );

  }
}
