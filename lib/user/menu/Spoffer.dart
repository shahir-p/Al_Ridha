import 'package:alridafrieds/user/menu/ItemDetails.dart';
import 'package:flutter/material.dart';

class SpOffer extends StatelessWidget {
  const SpOffer({super.key});

  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.width;
    List<Map<String, dynamic>> items = [
      // 'page':OnGoingOrders()
      {
        'image': 'assets/sp6.png',
        'title': 'Grilled Chicken',
        'price': '+119',
        'page': ItemDetails(
          title: 'Grilled Chicken',
          image: 'assets/sp6.png',
          price: '+119',
          discription: 'Best ',
        )
      },
      {
        'image': 'assets/sp/sp2.png',
        'title': 'Shawaya',
        'price': '+119',
        'page': ItemDetails(
            title: 'Shawaya',
            image: 'assets/sp/sp2.png',
            price: '+119',
            discription: 'good ')
      },
      {
        'image': 'assets/sp/sp5.png',
        'title': 'Chicken Lollipop',
        'price': '+119',
        'page': ItemDetails(
            title: 'Chicken Lollipop',
            image: 'assets/sp/sp5.png',
            price: '+119',
            discription: 'Superb ')
      },
      {
        'image': 'assets/sp/delicious-chicken-table.jpg',
        'title': 'Tandoori Chicken',
        'price': '+119',
        'page': ItemDetails(
            title: 'Tandoori Chicken',
            image: 'assets/sp/delicious-chicken-table.jpg',
            price: '+119',
            discription: 'awsome ')
      },
    ];
    return InkWell(
      onTap: () {},
      child: Container(
        child: ListView.separated(
          scrollDirection: Axis.vertical,
          itemCount: items.length,
          separatorBuilder: (context, index) =>
              SizedBox(height: Height * 0.01), // Add a gap between items
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => items[index]['page'],
                    ));
              },
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: Offset(0, 3),
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(Width*0.03),
                ),
                height: Height*0.39,
                child: Column(
                  children: [
                    Container( //image container
                      margin: EdgeInsets.symmetric(horizontal: Width*0.01,vertical: Height*0.005),
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage(
                              items[index]['image'],
                            ),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: Width*0.02,),
                        Text(
                          items[index]['title'],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: Height*0.025,
                          ),
                        ),
                        Spacer(),
                        Image.asset(
                          'assets/icons/non-veg.png',
                          width: Height*0.02,
                        ),
                        SizedBox(width: Width*0.02,),
                      ],
                    ),
                    SizedBox(height: Height*0.01),
                    SizedBox(
                      height: Height * 0.065,
                      width: Width * 0.95,
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
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              items[index]['price'],
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff3c8a3c),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                10.0), // Adjust the radius as needed
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
