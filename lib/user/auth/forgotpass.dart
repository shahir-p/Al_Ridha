import 'package:alridafrieds/user/auth/SignUp.dart';
import 'package:alridafrieds/user/auth/Signin.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  late List<TextEditingController> _otpControllers;
  late List<FocusNode> _focusNodes;

  @override
  void initState() {
    super.initState();
    _otpControllers = List.generate(4, (index) => TextEditingController());
    _focusNodes = List.generate(4, (index) => FocusNode());
  }

  @override
  void dispose() {
    for (var controller in _otpControllers) {
      controller.dispose();
    }
    for (var focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailController = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Color(0xfff2b45e),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Text(
                  'Sign In',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              SizedBox(
                height: 120,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'Email',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 2),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(width: 2, color: Colors.black),
                    ),
                    hintText: 'Enter your Email',
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'OTP',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              // Ro
              //
              // w containing four OTP input boxes
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  4,
                      (index) => Container(
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    child: TextField(
                      controller: _otpControllers[index],
                      maxLength: 1,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      focusNode: _focusNodes[index],
                      onChanged: (value) {
                        // Move to the next field when a digit is entered
                        if (value.isNotEmpty) {
                          if (index < 3) {
                            FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
                          } else {
                            // If it's the last field, submit the OTP or move to the next focusable widget
                            FocusScope.of(context).nextFocus();
                          }
                        }
                      },
                      decoration: InputDecoration(
                        counterText: "",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 2),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(width: 2, color: Colors.black),
                        ),
                        hintText: '0',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Access _emailController.text and each _otpControllers[index].text for user input
                      String email = _emailController.text;
                      String otp = _otpControllers.map((controller) => controller.text).join('');
                      print('Email: $email, OTP: $otp');
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>Signin()),);
                    },
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
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
                  Text('Don\'t have an account?'),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>Signup()),);
                      // Navigator.push(context, MaterialPageRoute(builder: (context) =>Signup()),);
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
