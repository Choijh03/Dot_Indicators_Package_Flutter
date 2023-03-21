import 'package:dot_indicator_tutorial/page_1.dart';
import 'package:dot_indicator_tutorial/page_2.dart';
import 'package:dot_indicator_tutorial/page_3.dart';
import 'package:dot_indicator_tutorial/page_4.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //pageview
          SizedBox(
            height: 500,
            child: PageView(
              controller: _controller,
              children: [
                Page1(),
                Page2(),
                Page3(),
                Page4(),
              ],
            ),
          ),
          //dot indcators
          SmoothPageIndicator(
            controller: _controller,
            count: 4,
            //many different types
            //1)bar moving through dot
            //ExpandingDotsEffect()
            //2)dot moving through dot
            //SwapEffect()
            //3)Jumping dot
            //JumpingDotEffect()

            effect: JumpingDotEffect(
              activeDotColor: Colors.deepOrange,
              dotColor: Colors.deepOrange.shade100,
              dotHeight: 30,
              dotWidth: 30,
              spacing: 16,
              //only for Jumping dot
              //height of jumping
              verticalOffset: 50,
              //only for Jumping dot
              //size of jumping dot
              jumpScale: 5,
            ),
          )
        ],
      ),
    );
  }
}
