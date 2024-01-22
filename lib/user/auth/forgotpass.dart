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
    final Height=MediaQuery.of(context).size.height;
    final Width=MediaQuery.of(context).size.width;
    final TextEditingController _emailController = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Color(0xfff2b45e),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: Height*0.16,),
              Text(
                'Sign In',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: Height*0.03),
              ),
              SizedBox(
                height: Height*0.1,
              ),
              Text(
                'Email',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: Height*0.023),
              ),
              SizedBox(
                height: Height*0.01,
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
                      borderSide: BorderSide(width: Width*0.007, color: Colors.black),
                    ),
                    hintText: 'Enter your Email',
                  ),
                ),
              ),
              SizedBox(
                height: Height*0.02,
              ),
              Text(
                'OTP',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: Height*0.023),
              ),
              SizedBox(
                height: Height*0.02,
              ),
              // SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  4,
                      (index) => Container(
                    height: Height*0.05,
                    width: Height*0.05,
                    margin: EdgeInsets.symmetric(horizontal: Height*0.01),
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
                          borderSide: BorderSide(width: Width*0.007),
                          borderRadius: BorderRadius.circular(Height*0.015),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(Height*0.015),
                          borderSide: BorderSide(width: Width*0.007, color: Colors.black),
                        ),
                        hintText: '0',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Height*0.02,
              ),
              SizedBox(
                height: Height*0.07,
                width: Width*0.9,
                child: ElevatedButton(
                  onPressed: () {
                    // Access _emailController.text and each _otpControllers[index].text for user input
                    String email = _emailController.text;
                    String otp = _otpControllers.map((controller) => controller.text).join('');
                    print('Email: $email, OTP: $otp');
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>Signin()),);
                  },
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: Height*0.025,
                      color: Colors.white,
                    ),
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
