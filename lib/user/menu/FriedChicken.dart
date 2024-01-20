
import 'package:alridafrieds/user/menu/ItemDetails.dart';
import 'package:flutter/material.dart';

class FriedChicken extends StatelessWidget {
  const FriedChicken({super.key});

  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.width;
    List<Map<String, dynamic>> items = [
      {
        'title': '1 Pcs',
        'image': 'assets/menu/menu.png',
        'page': ItemDetails(title:'1 Pcs',image:'assets/menu/menu.png' ,price:'+69',discription: '1 Pcs ',)
      },
      {
        'title': '2 Pcs',
        'image': 'assets/menu/menu.png',
        'page': ItemDetails(title:'2 Pcs',image:'assets/menu/menu.png' ,price:'+129',discription: 'Best ',)
      },
      {
        'title': '4 Pcs',
        'image': 'assets/menu/menu.png',
        'page': ItemDetails(title:'4 pcs',image:'assets/menu/menu.png' ,price:'+269',discription: '4 Pcs ',)
      },
      {
        'title': '6 Pcs',
        'image': 'assets/menu/menu.png',
        'page': ItemDetails(title:'6 Pcs',image:'assets/menu/menu.png' ,price:'+409',discription: '6 Pcs ',)
      },
      {
        'title': '8 Pcs',
        'image': 'assets/menu/menu.png',
        'page': ItemDetails(title:'8 Pcs',image:'assets/menu/menu.png' ,price:'+589',discription: '8 Pcs',)
      },
      {
        'title': '10 Pcs',
        'image': 'assets/menu/menu.png',
        'page': ItemDetails(title:'10Pcs',image:'assets/menu/menu.png' ,price:'+649',discription: '10 Pcs ',)
      },
      {
        'title': '16 Pcs',
        'image': 'assets/menu/menu.png',
        'page': ItemDetails(title:'16 Pcs',image:'assets/menu/menu.png' ,price:'+1019',discription: '16 Pcs ',)
      },
      {
        'title': '24 Pcs',
        'image': 'assets/menu/menu.png',
        'page': ItemDetails(title:'24 Pcs',image:'assets/menu/menu.png' ,price:'+1519',discription: '24 Pcs ',)
      },
    ];
    return Container(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 4/ 5,
          ),
          itemCount: items.length,
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
                      spreadRadius: 3,
                      blurRadius: 4,
                      offset: Offset(0, 3),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                width: 150,
                height: 230,
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Container(
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage("assets/menu/menu.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                                items[index]['title'],
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'poppins',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Image.asset(
                              'assets/icons/veg.png',
                              width: 15,
                            ),
                          )
                        ],
                      ),
                      // SizedBox(
                      //   height: 5,
                      // ),
                      SizedBox(
                        height: 40,
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
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                '+1519',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'poppins',
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff3c8a3c),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              ),
            );
          },
        )
      //             GridView.builder(
      //                 gridDelegate:
      //                     SliverGridDelegateWithFixedCrossAxisCount(
      //                         crossAxisCount: 3,
      //                         crossAxisSpacing: 20,
      //                         mainAxisSpacing: 20,
      //                         childAspectRatio: 6 / 3.4),
      //                 children: [

      //
      //   ],
      // ),
    );
  }
}
