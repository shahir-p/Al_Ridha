import 'package:flutter/material.dart';
class Progress extends StatefulWidget {
  const Progress({super.key});

  @override
  State<Progress> createState() => _ProgressState();
}

class _ProgressState extends State<Progress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Color(0xff911f2a),
      automaticallyImplyLeading: false,
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
      title: Text(
        'Progress',
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
            child: Center(
              child: Image.asset(
                "assets/delivryboy/icon/bell.png",
                width: 20,
                height: 20,
                color: Colors.white,
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
            child: Center(
              child: Image.asset(
                "assets/delivryboy/icon/user icon.png",
                width: 25,
                height: 25,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    ),

      body:Center(
        child: Container(
          height:600,
          width: 340,
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(10),
            // color: Colors.greenAccent
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Order No:#001',style: TextStyle(fontSize: 20,
                    fontWeight: FontWeight.bold),),
                    Text('1 min ago',style:TextStyle(fontSize: 15,
                        color:Color(0xff911f2a), ),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Divider(
                  height: 2,
                  thickness: 1,
                  color: Colors.black
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 10),
              child:Row(
                children: [
                  Text('Address:',style: TextStyle(
                    fontSize: 20
                  ),),
                ],
              )
                ,),
              SizedBox(
                height: 100,
              ) ,
              Container(
                height: 150,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(),
                  // color: Colors.greenAccent,
                  
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Text('Ordered item:',style: TextStyle(
                            fontSize: 18
                          ),),

                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('No',style: TextStyle(fontSize: 15),),
                                  SizedBox(height: 5,),
                                  Text('1',style: TextStyle(fontSize: 15),),
                                  SizedBox(height: 5,),
                                  Text('2',style: TextStyle(fontSize: 15),),
                                  SizedBox(height: 5,),
                                ],
                              ),
                              SizedBox(width: 30,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: [
                                  Text('Item',style: TextStyle(fontSize: 15),),
                                   SizedBox(height: 5,),
                                  Text('Item1',style: TextStyle(fontSize: 15),),
                                  SizedBox(height: 5,),
                                  Text('Item2',style: TextStyle(fontSize: 15),),
                                  SizedBox(height: 5,),

                                ],
                              ),

                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: ElevatedButton(onPressed: (){}, child: Text('Out for delivery',style: TextStyle(
                        color: Colors.white
                      ),),style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff911f2a),)),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: ElevatedButton(onPressed: (){}, child: Text('Delivered',style: TextStyle(
                          color: Colors.white
                      ),),style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff3C8A3C))),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
