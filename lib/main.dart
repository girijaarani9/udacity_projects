import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyRectangle(),
  ));
}

class MyRectangle extends StatelessWidget {
  const MyRectangle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hello Rectangle")),
      body: Center(
        child: Container(
          color: Colors.greenAccent,
          width: 300,
          height: 400,
          child: Center(
            child: Text(
              "Hello!",
              style: TextStyle(color: Colors.black, fontSize: 40),
            ),
          ),
        ),
      ),
    );
  }
}
