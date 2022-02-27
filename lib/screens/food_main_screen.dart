import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/screens/food_description_screen.dart';
import 'package:fooddeliveryapp/utils/colors.dart';
import 'package:fooddeliveryapp/widgets/custom_widgets/big_text_widget.dart';
import 'package:fooddeliveryapp/widgets/custom_widgets/small_text_widget.dart';
import 'package:fooddeliveryapp/widgets/custom_widgets/text_and_icon_widget.dart';
import 'package:fooddeliveryapp/widgets/page_build_widgets/food_description_widget.dart';
import 'package:fooddeliveryapp/widgets/page_build_widgets/food_list_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FoodMainScreen extends StatelessWidget {
  PageController pageController = PageController(viewportFraction: 0.9) ;
   FoodMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      BigTextWidget(
                          text: 'Egypt', size: 25, color: AppColors.mainColor),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          SmallTextWidget(
                            text: 'Cairo',
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.black,
                            size: 15,
                          )
                        ],
                      )
                    ],
                  ),
                  Spacer(),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.mainColor,
                    ),
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 280,
                child: PageView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    controller: pageController,
                    itemBuilder: (context, index) {
                  return InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>FoodDescriptionScreen()));
                    },
                      child: FoodDescriptionWidget());
                }),
              ) ,
              SizedBox(height: 10,) ,
              Center(
                child: SmoothPageIndicator(
                  controller: pageController,
                  count: 5,
                  effect: ExpandingDotsEffect(
                    activeDotColor: AppColors.mainColor,
                    dotColor: Colors.grey ,
                    spacing: 5 ,
                    dotHeight: 8 ,
                    dotWidth: 8 ,
                    expansionFactor: 4 ,
                  ),
                ),
              ),
              SizedBox(height: 20,) ,
              Row(
                children: [
                  BigTextWidget(text: 'Populer' , color: Colors.black,),
                  SizedBox(width: 20,) ,
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: SmallTextWidget(text: 'Food Pairing'),
                  )
                ],
              ) ,
              SizedBox(height: 20,) ,
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context,index)=>FoodListWidget(),
                  separatorBuilder: (context,index)=>SizedBox(height: 10,),
                  itemCount: 10
              )
            ],
          ),
        ),
      ),
    );
  }
}
