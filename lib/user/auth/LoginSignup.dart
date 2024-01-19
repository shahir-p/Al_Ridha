
import 'package:alridafrieds/deliveryboy_app/signin.dart';
import 'package:alridafrieds/user/auth/SignUp.dart';
import 'package:alridafrieds/user/auth/Signin.dart';
import 'package:flutter/material.dart';



class SignUporIn extends StatelessWidget {
  const SignUporIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/friedBucket.jpg",
                ),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          _showOptionsDialog(context);
                        },
                        child: Container(
                          width: 35.0,
                          height: 35.0,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xffe3a95c)),
                          child: Center(
                            child: Image.asset(
                              "assets/icons/users.png", // Replace with your image asset
                              width: 30.0,
                              height: 30.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 500,
              ),
              Container(
                  //Sign in button
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(width: 2),
                  ),
                  height: 50,
                  width: 250,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>Signin()),);
                      },
                      child: Container(
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                            fontFamily: 'poppins',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ))),
              SizedBox(
                height: 10,
              ),
              Container(
                //Sign in button
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30),
                ),
                height: 50,
                width: 250,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>Signup()),);
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => MyS));
                  },
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                      fontFamily: 'poppins',
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _showOptionsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select User type'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text('Customer '),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUporIn()),
                  );
                  // Handle Customer option click
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Delivery Boy'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>DlSignin()),);
                  // Handle Delivery Boy option click
                  // Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
