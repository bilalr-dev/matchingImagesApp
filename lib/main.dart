import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: Text('Match the images'),
        backgroundColor: Colors.indigo[800],
      ),
      body: ImagePage(),
    ),
  ));
}

class ImagePage extends StatefulWidget {
  @override
  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  int leftImageNum = 1;
  int rightImageNum = 2;
  void changeImage() {
    leftImageNum = Random().nextInt(8) + 1;
    rightImageNum = Random().nextInt(8) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          leftImageNum == rightImageNum ? 'Matching ' : 'Try again',
          style: TextStyle(
            fontSize: 42,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      changeImage();
                    });
                  },
                  child: Image.asset('images/image-$leftImageNum.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      changeImage();
                    });
                  },
                  child: Image.asset('images/image-$rightImageNum.png'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
