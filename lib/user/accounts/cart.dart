import 'package:alridafrieds/user/accounts/Payment.dart';
import 'package:alridafrieds/user/menu/menu.dart';
import 'package:alridafrieds/user/menu/FriedChicken.dart';
import 'package:flutter/material.dart';

class AccountCart extends StatefulWidget {
  const AccountCart({super.key});

  @override
  State<AccountCart> createState() => _AccountCartState();
}

class _AccountCartState extends State<AccountCart> {
  int quantity = 1;
  int price = 99;
  int dlcharge=40;

  void incrementQuantity() {
    setState(() {
      if (quantity < 5) quantity++;
    });
  }

  void decrementQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff911f2a),
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
          'Your Cart',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 480,
              width: 350,
              child: Container(
                // color: Colors.blueAccent.shade100,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            'Order list',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Menu()),
                              );
                            },
                            child: Text(
                              '+add more',
                              style: TextStyle(color: Color(0xff3C8A3C)),
                            ))
                      ],
                    ),
                    Divider(
                      height: 2,
                      thickness: 2,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 425,
                      width: 330,
                      // color: Colors.pinkAccent.shade100,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Product name',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w400),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: ImageIcon(
                                  AssetImage(
                                    'assets/icons/delete.png',
                                  ),
                                  size: 18,
                                  color: Color(0xff911f2a),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Details',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Price:',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/icons/rupee-indian.png',
                                    width: 15,
                                  ),
                                  Text((price * quantity).toString(),
                                      style: TextStyle(fontSize: 18)),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Container(
                                  child: Expanded(
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      // SizedBox(width: 50,),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        height: 20,
                                        width: 60,
                                        child: Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Color(0xff911f2a),
                                              ),
                                              width: 20,
                                              height: 20,
                                              child: Center(
                                                child: IconButton(
                                                  onPressed: () {
                                                    decrementQuantity();
                                                  },
                                                  icon: ImageIcon(
                                                    AssetImage(
                                                      'assets/icons/minus-sign.png',
                                                    ),
                                                    size: 20,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              color: Colors.white,
                                              width: 20,
                                              height: 20,
                                              child: Center(
                                                  child: Text('$quantity',
                                                      style: TextStyle(
                                                          fontSize: 15))),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Color(0xff3C8A3C),
                                              ),
                                              width: 20,
                                              height: 20,
                                              child: Center(
                                                child: IconButton(
                                                  onPressed: () {
                                                    incrementQuantity();
                                                  },
                                                  icon: ImageIcon(
                                                    AssetImage(
                                                      'assets/icons/plus.png',
                                                    ),
                                                    size: 20,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ]),
                              )),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Divider(
                            height: 2,
                            thickness: 1.5,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              // height: 250,
              width: double.infinity,
              child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'subtotal',
                              style: TextStyle(fontSize: 18),
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/icons/rupee-indian.png',
                                  width: 15,
                                ),
                                Text((price * quantity).toString(),
                                    style: TextStyle(fontSize: 18)),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Divider(
                        height: 2,
                        thickness: 1.5,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/icons/rupee-indian.png',
                                  width: 15,
                                ),
                                Text((price * quantity+dlcharge).toString(),
                                    style: TextStyle(fontSize: 18)),
                              ],
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(width: 5),
                          Text(
                            '(inclusive delivery charges&GST)',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 65,
                      ),
                      SizedBox(
                        width: 340,
                        height: 50,
                        child: ElevatedButton(
                            onPressed: () {

                              Navigator.push(context, MaterialPageRoute(builder: (context) =>Payment()),);
                            },
                            child: Text(
                              'Proceed to checkout',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff3C8A3C))),
                      )
                    ],
                  ),
                  color: Color(0xffededed)),
            ),
          ],
        ),
      ),
    );
  }
}
