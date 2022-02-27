import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/widgets/custom_widgets/big_text_widget.dart';

import '../../utils/colors.dart';
import '../custom_widgets/small_text_widget.dart';
import '../custom_widgets/text_and_icon_widget.dart';

class FoodDescriptionWidget extends StatelessWidget {
  const FoodDescriptionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: EdgeInsets.only(right: 5),
      height: 270,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Align(
            alignment: AlignmentDirectional.topCenter,
            child: Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColors.mainColor,
                  borderRadius: BorderRadius.circular(30) ,
                  image: DecorationImage(
                      image: AssetImage('assets/image/food0.png') ,
                      fit: BoxFit.cover
                  )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              width: double.infinity,
              height: 140,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30) ,
                  color: Colors.white
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigTextWidget(text: 'Bitter Orange Marinade' , color: Colors.black,size: 22,fontWeight: FontWeight.normal,) ,
                    SizedBox(height: 10,) ,
                    Row(
                      children: [
                        Row(
                          children: List.generate(5, (index) => Icon(Icons.star , color: AppColors.mainColor,size: 15,)),
                        ),
                        SizedBox(width: 10,) ,
                        SmallTextWidget(text: '4.5') ,
                        SizedBox(width: 10,) ,
                        SmallTextWidget(text: '1286') ,
                        SizedBox(width: 5,) ,
                        SmallTextWidget(text: 'comments') ,
                      ],
                    ) ,
                    SizedBox(height: 20,) ,
                    Row(
                      children: [
                        Expanded(child: TextAndIconWidget(color: AppColors.iconColor1, icon: Icons.info_outline, text: 'Normal ')),
                        Expanded(child: TextAndIconWidget(color: AppColors.mainColor, icon: Icons.location_on, text: '1.7km ')),
                        Expanded(child: TextAndIconWidget(color: Colors.red, icon: Icons.watch_later_outlined, text: '32min ')),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
