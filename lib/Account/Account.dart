import 'package:alridafrieds/menu/cart.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Accounts());
}
class Accounts extends StatelessWidget {
  const Accounts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

        ),
    body:Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 60),
                child: Text('Account and Settings',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
              )
            ],
          ),//// Text Row
          SizedBox(
            height: 30,
          ),

          SizedBox(
            height: 55,
            width: 350,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                  Colors.white,
                  foregroundColor: Colors.black,//
                  // background color of button
                  side: BorderSide(), //border width and color
                  elevation: 3, //elevation of button
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    //to set border radius to button
                  ), //content padding inside button
                ),
                onPressed: (){}, child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 1),
                    child: Row(
                      children: [
                        Image.asset('assets/icons/orders.png',width: 30,),
                        SizedBox(width: 15,),
                        Text('Orders',style: TextStyle(fontSize: 15),),
                      ],
                    ),
                  ),
                  Image.asset('assets/icons/right-arrow.png',width: 15,),
                ],
              ),
            )),
          ),//Order Button
          SizedBox(
            height: 10,
          ),

          SizedBox(
            height: 55,
            width: 350,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                  Colors.white,
                  foregroundColor: Colors.black,//
                  // background color of button
                  side: BorderSide(), //border width and color
                  elevation: 3, //elevation of button
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    //to set border radius to button
                  ), //content padding inside button
                ),
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) => Cart()),
                  );
                }, child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 1),
                    child: Row(
                      children: [
                        Image.asset('assets/icons/cart.png',width: 30,),
                        SizedBox(width: 15,),
                        Text('Show Your Cart',style: TextStyle(fontSize: 15),),
                      ],
                    ),
                  ),
                  Image.asset('assets/icons/right-arrow.png',width: 15,),
                ],
              ),
            )),
          ),//Show you cart

          SizedBox(
            height: 10,
          ),

          SizedBox(
            height: 55,
            width: 350,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                  Colors.white,
                  foregroundColor: Colors.black,//
                  // background color of button
                  side: BorderSide(), //border width and color
                  elevation: 3, //elevation of button
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    //to set border radius to button
                  ), //content padding inside button
                ),
                onPressed: (){}, child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 1),
                    child: Row(
                      children: [
                        Image.asset('assets/icons/fav.png',width: 23,),
                        SizedBox(width: 15,),
                        Text('Favorite',style: TextStyle(fontSize: 15),),
                      ],
                    ),
                  ),
                  Image.asset('assets/icons/right-arrow.png',width: 15,),
                ],
              ),
            )),
          ),//Favorite
          SizedBox(
            height: 10,
          ),

          SizedBox(
            height: 55,
            width: 350,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                  Colors.white,
                  foregroundColor: Colors.black,//
                  // background color of button
                  side: BorderSide(), //border width and color
                  elevation: 3, //elevation of button
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    //to set border radius to button
                  ), //content padding inside button
                ),
                onPressed: (){}, child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 1),
                    child: Row(
                      children: [
                        Image.asset('assets/icons/address.png',width: 25,),
                        SizedBox(width: 15,),
                        Text('Address',style: TextStyle(fontSize: 15),),
                      ],
                    ),
                  ),
                  Image.asset('assets/icons/right-arrow.png',width: 15,),
                ],
              ),
            )),
          ),//Saved Address

          SizedBox(
            height: 10,
          ),

          SizedBox(
            height: 55,
            width: 350,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                  Colors.white,
                  foregroundColor: Colors.black,//
                  // background color of button
                  side: BorderSide(), //border width and color
                  elevation: 3, //elevation of button
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    //to set border radius to button
                  ), //content padding inside button
                ),
                onPressed: (){}, child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 1),
                    child: Row(
                      children: [
                        Image.asset('assets/icons/address.png',width: 25,),
                        SizedBox(width: 15,),
                        Text('Sign Out',style: TextStyle(fontSize: 15,color: Colors.red.shade700),),
                      ],
                    ),
                  ),
                  Image.asset('assets/icons/right-arrow.png',width: 15,),
                ],
              ),
            )),
          ),//Sign Out


        ],
      ),
    )
    );
  }
}
