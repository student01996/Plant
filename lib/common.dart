import 'package:flutter/cupertino.dart';

class CText extends StatelessWidget {
  final String text;
  final bool mbold;

  final double? mSize;

  final Color? color;

  const CText(
      {super.key,
      required this.text,
      this.mbold = false,
      this.mSize = 16,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: mSize,
          color: color,
          fontWeight: mbold ? FontWeight.bold : FontWeight.normal),
    );
  }
}
