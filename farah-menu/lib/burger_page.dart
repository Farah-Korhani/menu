import 'package:flutter/material.dart';

import 'food.dart';

class Burger extends StatefulWidget {
  Burger({Key? key}) : super(key: key);

  @override
  _BurgerState createState() {
    return _BurgerState();
  }
}

class _BurgerState extends State<Burger> {
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
      appBar: AppBar(backgroundColor: Colors.grey[900],title: Text('Burgers'),centerTitle: true,),
      body: Center(
        child: ListView.builder(itemBuilder: (itemBuilder,i){
          return Center(
            child: Card(
              color: Colors.grey[300],
              margin: EdgeInsets.all(10), // Adjust the margin as needed
              elevation: 5, // Adjust the elevation for a shadow effect
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0), // Adjust the border radius
                side: BorderSide(color: Colors.grey, width: 1.0), // Border color & width
              ),
              child: SizedBox(
                height: 60, // Specify the height of the card (adjust as needed)
                child: Padding(
                  padding: EdgeInsets.all(10), // Padding inside the card
                  child: Center(
                    child: Text(
                      burgers[i].toString(),
                      style: TextStyle(fontSize: 16), // Adjust the font size
                    ),
                  ),
                ),
              ),
            )


          ) ;
        },itemCount: burgers.length,),
      ),
    );
  }
}