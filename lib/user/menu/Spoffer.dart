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
        'page': ItemDetails(title:'Grilled Chicken',image:'assets/sp6.png' ,price:'+119',discription: 'Best ',)
      },
      {
        'image': 'assets/sp/sp2.png',
        'title': 'Shawaya',
        'price': '+119',
      'page': ItemDetails(title:'Shawaya',image:'assets/sp/sp2.png' ,price:'+119',discription: 'good ')
      },
      {
        'image': 'assets/sp/sp5.png',
        'title': 'Chicken Lollipop',
        'price': '+119',
        'page': ItemDetails(title:'Chicken Lollipop',image:'assets/sp/sp5.png' ,price:'+119',discription: 'Superb ')
      },
      {
        'image': 'assets/sp/delicious-chicken-table.jpg',
        'title': 'Tandoori Chicken',
        'price': '+119',
        'page': ItemDetails(title:'Tandoori Chicken',image:'assets/sp/delicious-chicken-table.jpg' ,price:'+119',discription: 'awsome ')
      },
    ];
    return InkWell(
      onTap: (){


      },
      child: Container(
        child: ListView.separated(
          padding: EdgeInsets.symmetric(vertical: 10),
          scrollDirection: Axis.vertical,
          itemCount: items.length,
          separatorBuilder: (context, index) => SizedBox(height: 10), // Add a gap between items
          itemBuilder: (context, index) {
            return InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => items[index]['page'],));
              },
              child: Container(

                //single item container
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
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 320,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: 200,
                        //image container
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage(items[index]['image']),
                            fit: BoxFit.fill,
                          ),
                          color: Colors.red,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            items[index]['title'],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              fontFamily: 'poppins',
                            ),
                          ),
                          Image.asset(
                            'assets/icons/non-veg.png',
                            width: 22,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    SizedBox(
                      height: 60,
                      width: 350,
                      child: Padding(
                        padding: EdgeInsets.all(5.0),
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
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                items[index]['price'],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'poppins',
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff3c8a3c),
                          ),
                        ),
                      ),
                    ),
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
