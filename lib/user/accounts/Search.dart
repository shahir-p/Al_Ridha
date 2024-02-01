import 'package:alridafrieds/user/accounts/cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class SearchPage extends StatefulWidget {

  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _SearchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
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
          'Search',
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
                      color: Colors.black,
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
        margin: EdgeInsets.all(10),
        child: Row(
          children: [
            SizedBox(
              height: Height*0.07,
              width: Width-20,
              child:  TextField(
                controller:_SearchController,

                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 2),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(width: 2,
                        color: Colors.black),),
                  hintText: 'Search here...',

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
