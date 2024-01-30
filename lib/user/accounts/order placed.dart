
import 'package:alridafrieds/user/main/bottom%20navigation.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class OrderPlaced extends StatefulWidget {
  const OrderPlaced({super.key});

  @override
  State<OrderPlaced> createState() => _OrderPlacedState();
}

class _OrderPlacedState extends State<OrderPlaced> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Container(
  child: Center(
    child: Column(
      children: [
        SizedBox(height: 200,),
        Container(
          child:
          Lottie.asset("assets/menu/Animation - 1705170634142.json",
          height: 300),
          width: 350,
        ),
        Text('Order Confirmed',style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold
        ),),
        Text('Thank you for your order',style: TextStyle(fontSize: 15,
        color: Colors.grey),),
        SizedBox(height: 80,),
        TextButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) =>HomeScreen()),);
        }, child: Text('Continue',style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Color(0xff911f2a)
        ),)),
        SizedBox(
          height: 50,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Text('If you want to cancel the order please contact us',style: TextStyle(
            fontSize: 12,
            color: Colors.grey
          ),),
        )
      ],
    ),
  ),
),
    );
  }
}
