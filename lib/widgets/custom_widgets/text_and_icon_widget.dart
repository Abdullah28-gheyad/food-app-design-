import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/widgets/custom_widgets/small_text_widget.dart';

class TextAndIconWidget extends StatelessWidget {
  IconData icon ;
  Color color ;
  String text ;
   TextAndIconWidget({Key? key,required this.color,required this.icon,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        Row(
          children: [
            Icon(icon ,color: color,size: 20, ) , SizedBox(width: 5,) ,
           Text(text , maxLines: 1,overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 10),)
          ],
        )
      ],
    ) ;
  }
}
