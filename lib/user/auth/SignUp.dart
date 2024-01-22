
import 'package:alridafrieds/user/auth/Signin.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

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
              SizedBox(height: Height*0.12,),
              Text(
                'Sign Up',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: Height*0.026),
              ),
              SizedBox(
                height: Height*0.09,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: Width*0.025,),
                  Text(
                    'Username',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: Height*0.023),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(

                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 2),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(width: 2, color: Colors.black),),
                    hintText: 'Enter your Username',
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Email',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(

                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 2),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(width: 2, color: Colors.black),),
                    hintText: 'Enter your Email',
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Create Password',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(

                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 2),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(width: 2, color: Colors.black),),
                    hintText: 'Create password',
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Confirm Password',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(

                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 2),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(width: 2, color: Colors.black),),
                    hintText: 'Confirm your password',
                  ),
                ),
              ),
              SizedBox(
                height:10
              ),


              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>Signin()),);
                      // Access _emailController.text and _passwordController.text for user input
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?'),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>Signin()),);
                    },
                    child: Text(
                      'Sign In',
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
