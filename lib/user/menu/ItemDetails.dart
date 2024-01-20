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
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 10,),
                Container(
                  height: 200,
                  width: 340,
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
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 10,),
                Text(widget.title,style: TextStyle(fontSize: 25,
                fontWeight: FontWeight.bold)),

              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(widget.discription,
                  // " a savory and succulent dish,\n"
                  //   " is prepared by marinating chicken with \n "
                  //   "flavorful herbs and spices before being \n"
                  //   " expertly grilled to perfection."
                  //   " The smoky\n char and tenderness of the chicken create\n"
                  //   " a mouthwatering experience.",
                  style:
                  TextStyle(
                    fontSize: 15
                  ),)
              ],
            ),
            SizedBox(height: 10,),
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
            SizedBox(height: 170,),
            SizedBox(
              height: 60,
              child: Row(
                children: [SizedBox(width: 10,),
                  SizedBox(
                    height: 50,
                    width: 340,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Add',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'poppins',
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            widget.price,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'poppins',
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff3c8a3c),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,)
                ],
              ),
            ),
            SizedBox(height: 10,)
          ],
        ),
      ),
    );

  }
}
