import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/utils/colors.dart';
import 'package:fooddeliveryapp/widgets/custom_widgets/big_text_widget.dart';
import 'package:fooddeliveryapp/widgets/custom_widgets/small_text_widget.dart';
import 'package:fooddeliveryapp/widgets/custom_widgets/text_and_icon_widget.dart';

class FoodDescriptionScreen extends StatelessWidget {
  const FoodDescriptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: 800,
          child: Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              Align(
                alignment: AlignmentDirectional.topCenter,
                child: Stack(
                  children: [
                    Image(
                        height: 350,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        image: AssetImage('assets/image/food1.png')),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.arrow_back_ios,
                                size: 20,
                                color: Colors.black,
                              )),
                          Spacer(),
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.shopping_cart,
                                size: 20,
                                color: Colors.black,
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 535,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BigTextWidget(
                              text: 'Biriani',
                              color: Colors.black,
                              size: 25,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Row(
                                  children: List.generate(
                                      5,
                                      (index) => Icon(
                                            Icons.star,
                                            color: AppColors.mainColor,
                                            size: 15,
                                          )),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                SmallTextWidget(text: '4.5'),
                                SizedBox(
                                  width: 10,
                                ),
                                SmallTextWidget(text: '1287 comments'),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: TextAndIconWidget(
                                        color: AppColors.iconColor2,
                                        icon: Icons.info,
                                        text: 'normal')),
                                Expanded(
                                    child: TextAndIconWidget(
                                        color: AppColors.mainColor,
                                        icon: Icons.location_on,
                                        text: '1.7 km')),
                                Expanded(
                                    child: TextAndIconWidget(
                                        color: Colors.red,
                                        icon: Icons.watch_later_outlined,
                                        text: '32 min')),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SmallTextWidget(
                              text: 'Introduce',
                              color: Colors.black,
                              size: 25,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SingleChildScrollView(
                              child: Text(
                                'Text messages are used for personal, family, business and social purposes. Governmental and non-governmental organizations use text messaging for communication between colleagues. In the 2010s, the sending of short informal messages became an accepted part of many cultures, as happened earlier with emailing.[1] This makes texting a quick and easy way to communicate with friends, family and colleagues, including in contexts where a call would be impolite or inappropriate (e.g., calling very late at night or when one knows the other person is busy with family or work activities). Like e-mail and voicemail and unlike calls (in which the caller hopes to speak directly with the recipient), texting does not require the caller and recipient to both be free at the same moment; this permits communication even between busy individuals. Text',
                                maxLines: 15,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 120,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.remove,
                                          size: 20,
                                        )),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Text('0'),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.add,
                                          size: 20,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            Spacer(),
                            Container(
                              decoration: BoxDecoration(
                                color: AppColors.mainColor,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Text(
                                  '\$0.08 Add to cart',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
