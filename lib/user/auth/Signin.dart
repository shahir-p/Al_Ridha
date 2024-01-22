
import 'package:alridafrieds/user/auth/SignUp.dart';
import 'package:alridafrieds/user/auth/forgotpass.dart';
import 'package:alridafrieds/user/main/bottom%20navigation.dart';

import 'package:flutter/material.dart';

class Signin extends StatelessWidget {
   Signin({Key? key}) : super(key: key);

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Height=MediaQuery.of(context).size.height;
    final Width=MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Color(0xfff2b45e),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: Height*0.1,),
              Text(
                'Sign In',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: Height*0.03),
              ),
              SizedBox(
                height: Height*0.14,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: Width*0.025,),
                  Text(
                    'Email',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: Height*0.025),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: Width*0.007),
                      borderRadius: BorderRadius.circular(Height*0.015),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(Height*0.015),
                      borderSide: BorderSide(width: Width*0.007, color: Colors.black),),
                  hintText: 'Enter your Email',
                  ),
                ),
              ),
              SizedBox(
                height: Height*0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: Width*0.025,),
                  Text(
                    'Password',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: Height*0.025),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: Width*0.007),
                      borderRadius: BorderRadius.circular(Height*0.015),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(Height*0.015),
                      borderSide: BorderSide(width: Width*0.007, color: Colors.black),),
                    hintText: 'Enter your password',
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>ForgotPassword()),);
                  }, child: Text('forgot password?',style: TextStyle(
                    color: Colors.black
                  ),)),
                ],
              ),
              SizedBox(
                height: Height*0.01,
              ),
              SizedBox(
                height: Height*0.07,
                width: Width*0.9,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>HomeScreen()),);
                    // Access _emailController.text and _passwordController.text for user input
                  },
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: Height*0.025,
                        color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: Height*0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Dont have an account?'),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>Signup()),);
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.red),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
