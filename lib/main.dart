// import 'package:alridafrieds/deliveryboy_app/Bottom%20Nav.dart';
import 'package:alridafrieds/deliveryboy_app/Dashboard.dart';
import 'package:alridafrieds/deliveryboy_app/Home.dart';
import 'package:alridafrieds/user/accounts/order%20placed.dart';
import 'package:alridafrieds/user/auth/LoginSignup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Color(0xFFA91313); // Desired primary color
    Color defaultWidgetBackgroundColor = Color(0xff66161d); // Desired default color

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'poppins',
        primaryColor: Colors.black,
        primarySwatch: MaterialColor(primaryColor.value, {
          50: primaryColor.withOpacity(0.1),
          100: primaryColor.withOpacity(0.2),
          200: primaryColor.withOpacity(0.3),
          300: primaryColor.withOpacity(0.4),
          400: primaryColor.withOpacity(0.5),
          500: primaryColor,
          600: primaryColor.withOpacity(0.6),
          700: primaryColor.withOpacity(0.7),
          800: primaryColor.withOpacity(0.8),
          900: primaryColor.withOpacity(0.9),
        }),
        backgroundColor: defaultWidgetBackgroundColor, // Set default background color
      ),
      home: SignUporIn(),
      // home: OrderPlaced(),
    );
  }
}
