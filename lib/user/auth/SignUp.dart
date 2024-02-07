import 'package:flutter/material.dart';
import 'package:alridafrieds/user/auth/Signin.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Signup extends StatelessWidget {
  Signup({super.key});

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _createpassController = TextEditingController();
  final TextEditingController _confirmpassController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Color(0xfff2b45e),
        child: SafeArea(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(
                  height: Height * 0.12,
                ),
                Text(
                  'Sign Up',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: Height * 0.026),
                ),
                SizedBox(
                  height: Height * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: Width * 0.025,
                    ),
                    Text(
                      'Username',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: Height * 0.023),
                    ),
                  ],
                ),
                buildTextFormField(
                  controller: _usernameController,
                  hintText: 'Enter your Username',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a username';
                    }
                    if (value.trim().length < 4) {
                      return 'Username must be at least 4 characters long';
                    }
                    if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                      return 'Username can only contain alphabets';
                    }
                    return null;
                  },
                  context: context,
                ),
                SizedBox(height: Height * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: Width * 0.025,
                    ),
                    Text(
                      'Email',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: Height * 0.023),
                    ),
                  ],
                ),
                buildTextFormField(
                  controller: _emailController,
                  hintText: 'Enter your Email',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter an email';
                    }
                    if (!value.toLowerCase().endsWith('@gmail.com')) {
                      return 'Email must end with @gmail.com';
                    }
                    if (!value.contains('@') || value.indexOf('@') != value.lastIndexOf('@')) {
                      return 'Invalid email format';
                    }
                    return null;
                  },
                  context: context,
                ),
                SizedBox(height: Height * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: Width * 0.025,
                    ),
                    Text(
                      'Create Password',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: Height * 0.023),
                    ),
                  ],
                ),
                buildTextFormField(
                  controller: _createpassController,
                  hintText: 'Create password',
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a password';
                    }
                    if (value.length < 8) {
                      return 'Password must be at least 8 characters long';
                    }
                    // You can add more complex validation rules here
                    return null;
                  },
                  context: context,
                ),
                SizedBox(height: Height * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: Width * 0.025,
                    ),
                    Text(
                      'Confirm Password',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: Height * 0.023),
                    ),
                  ],
                ),
                buildTextFormField(
                  controller: _confirmpassController,
                  hintText: 'Confirm your password',
                  obscureText: true,
                  validator: (value) {
                    if (value != _createpassController.text) {
                      return 'Passwords do not match';
                    }
                    return null;
                  },
                  context: context,
                ),
                SizedBox(height: Height * 0.02),
                SizedBox(
                  height: Height * 0.07,
                  width: Width * 0.9,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // All fields are valid, you can proceed with signup
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Signin()),
                        );
                      }
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: Height * 0.025, color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: Height * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account?'),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Signin()),
                        );
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
      ),
    );
  }

  // Function to build TextFormField with validation
  Widget buildTextFormField({
    required TextEditingController controller,
    required String hintText,
    bool obscureText = false,
    String? Function(String?)? validator,
    required BuildContext context,
  }) {
    final Height = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        validator: validator,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(width: Width * 0.007),
            borderRadius: BorderRadius.circular(Height * 0.015),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Height * 0.015),
            borderSide: BorderSide(width: Width * 0.007, color: Colors.black),
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}
