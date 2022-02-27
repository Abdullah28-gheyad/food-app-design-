import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BigTextWidget extends StatelessWidget {
  String text;

  Color? color;

  double? size;

  FontWeight? fontWeight ;

  BigTextWidget(
      {Key? key,
      this.color = Colors.black38,
      this.size = 20,
      required this.text ,
      this.fontWeight = FontWeight.bold})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      style: TextStyle(
        overflow: TextOverflow.ellipsis,
          color: color,
          fontSize: size,
          fontWeight: fontWeight,
          fontFamily: 'Roboto'),
    );
  }
}
