import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 500,
            width: 400,
            color: Colors.deepOrange[400],
            child: Text(
              '3',
              style: TextStyle(fontSize: 40),
            ),
          ),
        ),
      ),
    );
  }
}
