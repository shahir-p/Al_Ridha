import 'package:flutter/material.dart';

class ProfileUser extends StatelessWidget {
  const ProfileUser({super.key});

  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff911f2a),
        leading:IconButton(icon: ImageIcon(AssetImage('assets/icons/left.png'),
          size: 30,
          color: Colors.white,
        ),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.white, fontFamily: 'poppins'),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: ListView(
          children:[ Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                height: 80,
                width: 80,
                child: Image.asset('assets/icons/user-avatar.png'),
                decoration:
                    BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
              ),
              SizedBox(height: Height*0.02,),
              Container(
                color: Colors.white,
                width: Width-20,
                height: Height-10,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Name',
                          style: TextStyle(
                            fontFamily: 'poppins',
                              fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    TextField(
                      keyboardType: TextInputType.name,
                      controller: _nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 2),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(width: 2, color: Colors.black),),
                        hintText: 'Enter your Name',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Email',
                          style: TextStyle(

                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      controller: _emailController,

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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Password',
                          style: TextStyle(
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    TextField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 2),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(width: 2, color: Colors.black),),
                        hintText: 'Enter your Password',
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Mobile Number',
                          style: TextStyle(
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    TextField(
                      controller:_mobilenumberController,

                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 2),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(width: 2, color: Colors.black),),
                        hintText: 'Enter your Mobile Number',

                      ),
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Address',
                          style: TextStyle(
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                       // <-- TextField width
                      height: 120, // <-- TextField height
                      child: TextField(
                        controller:_addressController,

                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: 2),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(width: 2, color: Colors.black),),
                          hintText: 'Enter your address here',

                        ),
                        maxLines: null,
                        expands: true,

                      ),
                    ),
                    SizedBox(height: Height*0.02,),
                    SizedBox(
                        height:50,
                        width: double.infinity,
                        child: ElevatedButton(onPressed: (){}, child: Text('Update',
                        style: TextStyle(
                          fontFamily: 'poppins',
                          fontSize: 15,
                          color: Colors.white,
                        ),),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                        )),
                                        )
              ]),

              ) ],
          ),]
        ),
      ),
    );
  }
}

final TextEditingController _nameController = TextEditingController();
final TextEditingController _emailController = TextEditingController();
final TextEditingController _passwordController = TextEditingController();
final TextEditingController _mobilenumberController = TextEditingController();
final TextEditingController _addressController = TextEditingController();
