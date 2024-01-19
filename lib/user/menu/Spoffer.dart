import 'package:flutter/material.dart';
class SpOffer extends StatefulWidget {
  const SpOffer({super.key});

  @override
  State<SpOffer> createState() => _SpOfferState();
}

class _SpOfferState extends State<SpOffer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                //sigle item container
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 4,
                        offset: Offset(0, 3),
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                height: 320,
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          height: 200,

                          //image container
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/sp6.png",
                                ),
                                fit: BoxFit.fill),
                            color: Colors.red,
                          ),
                        )),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5),
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Grilled Chicken',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                fontFamily: 'poppins'),
                          ),
                          Image.asset(
                            'assets/icons/non-veg.png',
                            width: 22,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                        height: 60,
                        width: 350,
                        child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: ElevatedButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  Text(
                                    'Add',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight:
                                        FontWeight.bold,
                                        fontFamily: 'poppins',
                                        fontSize: 18),
                                  ),
                                  Text(
                                    '+99',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight:
                                        FontWeight.bold,
                                        fontFamily: 'poppins',
                                        fontSize: 18),
                                  ),
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                  Color(0xff3c8a3c))),
                        ))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                //sigle item container
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 4,
                        offset: Offset(0, 3),
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                height: 320,
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          height: 200,

                          //image container
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/sp6.png",
                                ),
                                fit: BoxFit.fill),
                            color: Colors.red,
                          ),
                        )),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5),
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Grilled Chicken',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                fontFamily: 'poppins'),
                          ),
                          Image.asset(
                            'assets/icons/non-veg.png',
                            width: 22,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                        height: 60,
                        width: 350,
                        child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: ElevatedButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  Text(
                                    'Add',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight:
                                        FontWeight.bold,
                                        fontFamily: 'poppins',
                                        fontSize: 18),
                                  ),
                                  Text(
                                    '+99',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight:
                                        FontWeight.bold,
                                        fontFamily: 'poppins',
                                        fontSize: 18),
                                  ),
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                  Color(0xff3c8a3c))),
                        ))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                //sigle item container
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 4,
                        offset: Offset(0, 3),
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                height: 320,
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          height: 200,

                          //image container
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/sp6.png",
                                ),
                                fit: BoxFit.fill),
                            color: Colors.red,
                          ),
                        )),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5),
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Grilled Chicken',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                fontFamily: 'poppins'),
                          ),
                          Image.asset(
                            'assets/icons/non-veg.png',
                            width: 22,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                        height: 60,
                        width: 350,
                        child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: ElevatedButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  Text(
                                    'Add',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight:
                                        FontWeight.bold,
                                        fontFamily: 'poppins',
                                        fontSize: 18),
                                  ),
                                  Text(
                                    '+99',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight:
                                        FontWeight.bold,
                                        fontFamily: 'poppins',
                                        fontSize: 18),
                                  ),
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                  Color(0xff3c8a3c))),
                        ))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                //sigle item container
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 4,
                        offset: Offset(0, 3),
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                height: 320,
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          height: 200,

                          //image container
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/sp6.png",
                                ),
                                fit: BoxFit.fill),
                            color: Colors.red,
                          ),
                        )),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5),
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Grilled Chicken',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                fontFamily: 'poppins'),
                          ),
                          Image.asset(
                            'assets/icons/non-veg.png',
                            width: 22,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                        height: 60,
                        width: 350,
                        child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: ElevatedButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  Text(
                                    'Add',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight:
                                        FontWeight.bold,
                                        fontFamily: 'poppins',
                                        fontSize: 18),
                                  ),
                                  Text(
                                    '+99',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight:
                                        FontWeight.bold,
                                        fontFamily: 'poppins',
                                        fontSize: 18),
                                  ),
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                  Color(0xff3c8a3c))),
                        ))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                //sigle item container
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 4,
                        offset: Offset(0, 3),
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                height: 320,
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          height: 200,

                          //image container
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/sp6.png",
                                ),
                                fit: BoxFit.fill),
                            color: Colors.red,
                          ),
                        )),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5),
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Grilled Chicken',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                fontFamily: 'poppins'),
                          ),
                          Image.asset(
                            'assets/icons/non-veg.png',
                            width: 22,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                        height: 60,
                        width: 350,
                        child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: ElevatedButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  Text(
                                    'Add',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight:
                                        FontWeight.bold,
                                        fontFamily: 'poppins',
                                        fontSize: 18),
                                  ),
                                  Text(
                                    '+99',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight:
                                        FontWeight.bold,
                                        fontFamily: 'poppins',
                                        fontSize: 18),
                                  ),
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                  Color(0xff3c8a3c))),
                        ))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ]),
    );
  }
}
