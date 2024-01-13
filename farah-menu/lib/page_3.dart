import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  Page3({Key? key}) : super(key: key);

  @override
  _Page3State createState() {
    return _Page3State();
  }
}

class _Page3State extends State<Page3> {
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
      appBar: AppBar(backgroundColor: Colors.grey[900],title: Text('About us',),centerTitle: true,),
      body: Center(
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
            Container(
              width: 360,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey[400], // Set the background color to grey[400]
                border: Border.all(
                  color: Colors.black, // Set the border color to black
                  width: 2.0, // Set the border width to make it bold
                ),
              ),
              child: Center(
                child: SingleChildScrollView(
                  child: Text(
                    'Welcome to our new restaurant!\n\nWe offer a delightful fusion of flavors and culinary expertise that will tantalize your taste buds!', // Merged text with line breaks
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16, // Adjust the font size as needed
                      fontWeight: FontWeight.bold,
                      color: Colors.black, // Change the text color if desired
                    ),
                  ),
                ),
              ),
            )







          ],
        ),
      ),
    );
  }
}