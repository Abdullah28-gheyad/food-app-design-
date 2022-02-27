import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SmallTextWidget extends StatelessWidget {
  String text;

  Color? color;

  double? size;
  int? maxLine ;
  TextOverflow? textOverflow ;
  SmallTextWidget(
      {Key? key,
        this.color = Colors.black38,
        this.size = 14,
        this.textOverflow = TextOverflow.ellipsis,
        this.maxLine = 1 ,
        required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      style: TextStyle(
        overflow:textOverflow ,
          color: color,
          fontSize: size,
          fontFamily: 'Roboto'),
    );
  }
}
