import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../custom_widgets/big_text_widget.dart';
import '../custom_widgets/small_text_widget.dart';
import '../custom_widgets/text_and_icon_widget.dart';

class FoodListWidget extends StatelessWidget {
  const FoodListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 120,
          width: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                  image: AssetImage('assets/image/food0.png'),
                  fit: BoxFit.cover)),
        ),
        Expanded(
          child: SizedBox(
            height: 130,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigTextWidget(text: 'Chinese Side'),
                    SizedBox(
                      height: 10,
                    ),
                    SmallTextWidget(text: 'with chinese charachteristics'),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: TextAndIconWidget(
                                color: AppColors.iconColor1,
                                icon: Icons.info,
                                text: 'Normal')),
                        Expanded(
                            child: TextAndIconWidget(
                                color: AppColors.mainColor,
                                icon: Icons.location_on,
                                text: '1.7km')),
                        Expanded(
                            child: TextAndIconWidget(
                                color: Colors.red,
                                icon: Icons.watch_later_outlined,
                                text: '32min')),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
