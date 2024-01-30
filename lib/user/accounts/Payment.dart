import 'package:alridafrieds/user/accounts/order%20placed.dart';
import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  int? selectedRadio=0; // Make it nullable

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
            size: 30,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Payment',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                // color: Colors.blueAccent,
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 80,
                          width: 10,
                        ),
                        Text(
                          'Choose payment Option',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: Hieght*0.07,
                      width: Width-20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all()),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            child: Image.asset('assets/icons/google-pay.png'),
                          ),
                          SizedBox(
                            width: Width*0.03,
                          ),
                          Text(
                            'G Pay',
                            style: TextStyle(fontSize: 20),
                          ),
                          Spacer(),
                          Radio(
                            value: 0,
                            groupValue: selectedRadio,
                            onChanged: (value) {
                              setState(() {
                                selectedRadio = value as int?;
                              });
                            },
                            activeColor: Color(0xff911f2a),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: Hieght*0.07,
                      width: Width-20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all()),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            child: Image.asset('assets/icons/paytm.png'),
                          ),
                          SizedBox(
                            width: Width*0.03,
                          ),
                          Text(
                            'Paytm',
                            style: TextStyle(fontSize: 20),
                          ),
                          Spacer(),
                          Radio(
                            value: 1,
                            groupValue: selectedRadio,
                            onChanged: (value) {
                              setState(() {
                                selectedRadio = value as int?;
                              });
                            },
                            activeColor: Color(0xff911f2a),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: Hieght*0.07,
                      width: Width-20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all()),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            child: Image.asset('assets/icons/upi-icon.png'),
                          ),
                          SizedBox(
                            width: Width*0.03,
                          ),
                          Text(
                            'UPI',
                            style: TextStyle(fontSize: 20),
                          ),
                        Spacer(),
                          Radio(
                            value: 2,
                            groupValue: selectedRadio,
                            onChanged: (value) {
                              setState(() {
                                selectedRadio = value as int?;
                              });
                            },
                            activeColor: Color(0xff911f2a),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                width: double.infinity,
                child: SizedBox(
                  // height: 250,
                  width: double.infinity,
                  child:  Container(
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
                                  Text(
                                      '99',
                                      // (price * quantity).toString(),
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
                                  Text(
                                      '99',
                                      // (price * quantity+dlcharge).toString(),
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

                                  Navigator.push(context, MaterialPageRoute(builder: (context) =>OrderPlaced()),);
                                },
                                child: Text(
                                  'Confirm Payment',
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
