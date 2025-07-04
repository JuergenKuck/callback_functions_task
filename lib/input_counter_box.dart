import 'package:flutter/material.dart';

class InputCounterBox extends StatefulWidget {
  final Color backGroundcolor;
  final Function(int) onLengthChange;

  const InputCounterBox({
    super.key,
    required this.backGroundcolor,
    required this.onLengthChange,
  });

  @override
  State<InputCounterBox> createState() => _InputCounterBoxState();
}

class _InputCounterBoxState extends State<InputCounterBox> {
  int _length = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: widget.backGroundcolor,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              onChanged: (text) {
                setState(() {
                  _length = text.length;
                  widget.onLengthChange(_length);
                });
              },
              decoration: InputDecoration(
                hintText: 'Text eingeben',
                border: OutlineInputBorder(),
              ),
            ),
            Text('Länge: $_length'),
          ],
        ),
      ),
    );
  }
}
