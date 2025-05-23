import 'package:callback_functions/input_counter_box.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int len1 = 0;
  int len2 = 0;
  int len3 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 16,
          children: [
            InputCounterBox(
              backGroundcolor: Colors.lime,
              onLengthChange: (textLenght) {
                len1 = textLenght;
                setState(() {});
              },
            ),
            InputCounterBox(
              backGroundcolor: Colors.cyan,
              onLengthChange: (textLenght) {
                len2 = textLenght;
                setState(() {});
              },
            ),
            InputCounterBox(
              backGroundcolor: Colors.purpleAccent,
              onLengthChange: (textLenght) {
                len3 = textLenght;
                setState(() {});
              },
            ),
            SizedBox(height: 16),
            Text("Gesmattextlänge = $len1 + $len2 + $len3 = ${len1 + len2 + len3}"),
          ],
        ),
      ),
    );
  }
}
