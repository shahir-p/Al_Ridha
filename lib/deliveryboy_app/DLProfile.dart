import 'package:alridafrieds/deliveryboy_app/Dl%20notification.dart';
import 'package:flutter/material.dart';

class DlProfile extends StatelessWidget {
  const DlProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: ImageIcon(
            AssetImage('assets/icons/left.png'),
            size: 30,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Color(0xff911f2a),
        automaticallyImplyLeading: false,
        title: Text(
          'Profile',
          style: TextStyle(
            fontFamily: 'poppins',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Color(0xff66161d),
                borderRadius: BorderRadius.circular(30),
              ),
              child:Center(
                child: IconButton(icon: ImageIcon(AssetImage('assets/delivryboy/icon/bell.png'),
                  size: 30,
                  color: Colors.black,
                ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>DlNotification()),);
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Color(0xff66161d),
                borderRadius: BorderRadius.circular(30),
              ),
              child:Center(
                child: IconButton(icon: ImageIcon(AssetImage('assets/delivryboy/icon/user icon.png'),
                  size: 30,
                  color: Colors.white,
                ),
                  onPressed: (){
                    // Navigator.push(context, MaterialPageRoute(builder: (context) =>DlProfile()),);
                  },
                ),
              ),
            ),
          ),
        ],
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
                Container(
                  color: Colors.white,
                  width: 500,

                  child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                'Name',
                                style: TextStyle(
                                  fontFamily: 'poppins',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: TextField(
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
                                  fontFamily: 'poppins',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: TextField(
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
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                'Password',
                                style: TextStyle(
                                  fontFamily: 'poppins',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: TextField(
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
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                'Mobile Number',
                                style: TextStyle(
                                  fontFamily: 'poppins',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: TextField(
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
                        ),
                        SizedBox(height: 10,),


                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: SizedBox(
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
                          ),
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

