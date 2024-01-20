import 'package:flutter/material.dart';

void main(){
  runApp(Cart());
}
class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Your Cart'),
      ),
    );
  }
}
