import 'package:flutter/material.dart';

class Page4 extends StatefulWidget {
  Page4({Key? key}) : super(key: key);

  @override
  _Page4State createState() {
    return _Page4State();
  }
}

class _Page4State extends State<Page4> {
  TextEditingController controller = new TextEditingController();
  String message = ''; // Empty message initially

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
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text('Contact us'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 350,
          height: 330,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black, // Set the border color to black
              width: 2.0, // Set the border width to make it bold
            ),
            color: Colors.grey[400],
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'You can take our Email',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text('farah.restaurant@hotmail.com'),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: TextField(
                    controller: controller,
                    decoration: InputDecoration(
                      labelText: 'Send your message here',
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      controller.clear();
                      message = 'Your message was sent, thank you!'; // Change message on submit
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey[900], // Change the button color to grey 900
                  ),
                  child: Text('Submit'),
                ),
                Text(
                  message, // Display the message after submitting
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
