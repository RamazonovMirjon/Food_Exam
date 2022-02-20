import 'package:flutter/material.dart';
import 'package:food/core/constants/color_const.dart';
import 'package:food/data/final_card_data.dart';
import 'package:food/data/final_food_data.dart';
import 'package:food/data/foot_data.dart';
import 'package:food/model/food_model.dart';
import 'package:food/widgets/Texts.dart';

import '../widgets/my_appbar.dart';

class FinalPage extends StatefulWidget {
  final int pageNum;
  const FinalPage({Key? key, this.pageNum = 0}) : super(key: key);

  @override
  State<FinalPage> createState() => _FinalPageState();
}

class _FinalPageState extends State<FinalPage> {
  final fFoods = FinalFoodData();
  final fCards = FinalCardData();
  @override
  Widget build(BuildContext context) {
    final Food foods = FoodData().foodList[widget.pageNum];
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: myAppBar(listIcon: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            width: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.search_outlined,
                  color: ColorConst.blackColor,
                  size: 34,
                ),
                Icon(
                  Icons.screen_share_outlined,
                  color: ColorConst.blackColor,
                  size: 34,
                )
              ],
            ),
          ),
        ),
      ]),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage(foods.image),
              fit: BoxFit.cover,
              height: 250,
              width: double.infinity,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
              height: 160,
              width: 335,
              color: Colors.black,
              child: Column(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: bolttext(text: 'Featured Items', size: 20),
            ),
            SizedBox(
              height: 198,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext contect, int index) =>
                    cards(index % 3),
                itemCount: fCards.finalCardList.length * 3,
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  bolttext(
                      text: ' Beef & Lamb  ',
                      size: 24,
                      color: ColorConst.greyColor),
                  bolttext(text: ' Seafood  ', size: 24),
                  bolttext(
                      text: ' Appetizers  ',
                      size: 24,
                      color: ColorConst.greyColor),
                  bolttext(
                      text: ' Dim Sum  ',
                      size: 24,
                      color: ColorConst.greyColor),
                ],
              ),
            ),
            bolttext(
                text: '   Most Populars',
                color: ColorConst.blackColor,
                size: 20),
            SizedBox(
              width: double.infinity,
              height: 2000,
              child: ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: fFoods.finalFoodList.length,
                itemBuilder: (BuildContext contect, int index) => ffoods(index),
                separatorBuilder: (BuildContext contect, int index) =>
                    const Divider(),
              ),
            ),
            Container(
              height: 1000,
            )
          ],
        ),
      ),
    );
  }

  Widget cards(int index) => Container(
        width: 140,
        height: 198,
        margin: const EdgeInsets.all(7),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(fCards.finalCardList[index].image)),
            bolttext(text: fCards.finalCardList[index].title, size: 16),
            greytext(text: '\$\$   |   ' + fCards.finalCardList[index].subtitle)
          ],
        ),
      );

  Widget ffoods(int index) => Container(
      margin: const EdgeInsets.all(20),
      width: double.infinity,
      height: 110,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image(image: AssetImage(fFoods.finalFoodList[index].image)),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              bolttext(text: fFoods.finalFoodList[index].title, size: 18),
              SizedBox(
                  height: 50,
                  width: 210,
                  child: greytext(
                      text: fFoods.finalFoodList[index].subtitle, size: 17)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  greytext(
                    text: '\$\$   |   ' + fFoods.finalFoodList[index].sinf,
                  ),
                  greytext(
                      text: "   USD" +
                          fFoods.finalFoodList[index].narx.toString(),
                      color: ColorConst.greenColor),
                ],
              )
            ],
          )
        ],
      ));
}
