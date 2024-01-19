import 'package:alridafrieds/user/accounts/Search.dart';
import 'package:alridafrieds/user/accounts/cart.dart';
import 'package:flutter/material.dart';

class ItemDetails extends StatefulWidget {
  const ItemDetails({super.key});

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  bool isFavorited = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff911f2a),
        automaticallyImplyLeading: false,
        leading:IconButton(icon: ImageIcon(AssetImage('assets/icons/left.png'),
          size: 30,
          color: Colors.white,
        ),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Menu',
          style: TextStyle(
              fontFamily: 'poppins',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Color(0xff66161d),
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: IconButton(
                    icon: ImageIcon(
                      AssetImage('assets/icons/search.png'),
                      size: 30,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SearchPage()),
                      );
                    },
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Color(0xff66161d),
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: IconButton(
                    icon: ImageIcon(
                      AssetImage('assets/icons/cart.png'),
                      size: 30,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AccountCart()),
                      );
                    },
                  ),
                )),
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 10,),
                Container(
                  height: 200,
                  width: 340,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/sp6.png",
                          ),
                          fit: BoxFit.fill),
                    color: Colors.grey
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 10,),
                Text('Grilled Chicken',style: TextStyle(fontSize: 25,
                fontWeight: FontWeight.bold)),

              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(" a savory and succulent dish,\n"
                    " is prepared by marinating chicken with \n "
                    "flavorful herbs and spices before being \n"
                    " expertly grilled to perfection."
                    " The smoky\n char and tenderness of the chicken create\n"
                    " a mouthwatering experience.",style:
                  TextStyle(
                    fontSize: 15
                  ),)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Row(
                  children: [
                    SizedBox(width: 10,),

                Image.asset('assets/icons/non-veg.png',width: 30,),
                  ],
                ),
                SizedBox(width: 261,),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        isFavorited
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: isFavorited ? Colors.red : null,
                      ),
                      onPressed: () {
                        setState(() {
                          isFavorited = !isFavorited;
                        });
                        // Handle favorite icon tap
                      },
                    ),
                    SizedBox(width: 10,),
                  ],
                ),
              ],
            ),
            SizedBox(height: 170,),
            SizedBox(
              height: 60,
              child: Row(
                children: [SizedBox(width: 10,),
                  SizedBox(
                    height: 50,
                    width: 340,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Add',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'poppins',
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            '+119',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'poppins',
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff3c8a3c),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,)
                ],
              ),
            ),
          ],
        ),
      ),
    );

  }
}
