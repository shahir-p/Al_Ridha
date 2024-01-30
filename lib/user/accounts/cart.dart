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
    final Hieght=MediaQuery.of(context).size.height;
    final Width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff911f2a),
        leading: IconButton(
          icon: ImageIcon(
            AssetImage('assets/icons/left.png'),
            size: Width*0.08,
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
        height:Hieght,
        width: Width,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              height: Hieght*0.61,
              margin: EdgeInsets.all(10),
              // color: Colors.blueAccent.shade100,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(width: Width*0.01,),
                      Text(
                        'Order list',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),Spacer(),
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
                    height: Hieght*0.5,
                    width: Width-20,
                    // color: Colors.pinkAccent.shade100,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Product name',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            ),
                            Spacer(),
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
            Spacer(),
            Container(
              height: Hieght*0.25,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: Width*0.02,),
                        Text(
                          'subtotal',
                          style: TextStyle(fontSize: 18),
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Image.asset(
                              'assets/icons/rupee-indian.png',
                              width: 15,
                            ),
                            Text((price * quantity).toString(),
                                style: TextStyle(fontSize: 18)),
                            SizedBox(width: Width*0.02,),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Divider(
                      height: 2,
                      thickness: 1.5,
                    ),
                    SizedBox(
                      height: Hieght*0.01,
                    ),
                    Row(
                      children: [
                        SizedBox(width: Width*0.02,),
                        Text(
                          'Total',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Image.asset(
                              'assets/icons/rupee-indian.png',
                              width: 15,
                            ),
                            Text((price * quantity+dlcharge).toString(),
                                style: TextStyle(fontSize: 18)),
                            SizedBox(width: Width*0.02,),
                          ],
                        )
                      ],
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
                    Spacer(),

                    Container(
                      height: Hieght*0.07,
                      width: Width-20,
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
                    ),
                    SizedBox(height: Hieght*0.02,)
                  ],
                ),
                color: Color(0xffededed)),
          ],
        ),
      ),
    );
  }
}
