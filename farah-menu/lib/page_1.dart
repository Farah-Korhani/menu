import 'package:flutter/material.dart';
import 'package:menu/page_2.dart';
import 'package:menu/page_3.dart';
import 'package:menu/page_4.dart';

class Page1 extends StatefulWidget {
  Page1({Key? key}) : super(key: key);

  @override
  _Page1State createState() {
    return _Page1State();
  }
}

class _Page1State extends State<Page1> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(backgroundColor: Colors.grey[900],title: Text('Welcome to our menu'),centerTitle: true,),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(300), // Adjust the radius as needed
                    image: DecorationImage(
                      image: AssetImage('farah-logo.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  width: 300,
                  height: 300,
                ),
                Column(
                  children: [
                  GestureDetector(
                  onTap: () {
    Navigator.of(context).push(MaterialPageRoute(builder: (builder){return Page2();}));
    },
    child: Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: 300,
    decoration: BoxDecoration(
    color: Colors.grey[900],
    borderRadius: BorderRadius.circular(8),
    ),
    child: Text(
    'Menu',
    textAlign: TextAlign.center,
    style: TextStyle(
    color: Colors.white,
    fontSize: 18,
    ),
    ),
    ),
    ),
    SizedBox(height: 19,),
    GestureDetector(
    onTap: () {
      Navigator.of(context).push(MaterialPageRoute(builder: (builder){return Page3();}));

    },
    child: Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: 300,
    decoration: BoxDecoration(
    color: Colors.grey[900],
    borderRadius: BorderRadius.circular(8),
    ),
    child: Text(
    'About us',
      textAlign: TextAlign.center,
    style: TextStyle(
    color: Colors.white,
    fontSize: 18,
    ),
    ),
    ),
    ),
                    SizedBox(height: 19,),
    GestureDetector(
    onTap: () {
      Navigator.of(context).push(MaterialPageRoute(builder: (builder){return Page4();}));
    },
    child: Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    width: 300,
    decoration: BoxDecoration(
    color: Colors.grey[900],
    borderRadius: BorderRadius.circular(8),
    ),
    child: Text(
    'Contact us',
      textAlign: TextAlign.center,
    style: TextStyle(
    color: Colors.white,
    fontSize: 18,
    ),
    ),
    ),
    ),


                  ],
                ),
              ],
        ),
      ) ,
    );
  }
}