import 'package:flutter/material.dart';
import 'package:food/core/constants/color_const.dart';
import 'package:food/data/foot_data.dart';

import 'Texts.dart';

class ScrollWidget extends StatelessWidget {
  final int index;
  const ScrollWidget({Key? key, this.index = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var foodList = FoodData().foodList;
    int a = index;
    return SizedBox(
      height: 256,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, index) {
          index += a;
          index %= foodList.length;
          return Padding(
            padding: const EdgeInsets.all(5),
            child: SizedBox(
              width: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(
                    height: 160,
                    width: 200,
                    image: AssetImage(foodList[index].image),
                    fit: BoxFit.cover,
                  ),
                  bolttext(text: foodList[index].title, size: 20),
                  greytext(text: foodList[index].subtitle, size: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      reyting(foodList, index),
                      greytext(text: '${foodList[index].time}min'),
                      greytext(text: '|'),
                      greytext(text: foodList[index].filial),
                    ],
                  )
                ],
              ),
            ),
          );
        },
        itemCount: foodList.length,
      ),
    );
  }

  Widget reyting(foodList, index) => Container(
        height: 20,
        width: 36,
        decoration: BoxDecoration(
            color: ColorConst.greenColor,
            borderRadius: const BorderRadius.all(Radius.circular(6))),
        alignment: Alignment.center,
        child: bolttext(
            text: foodList[index].reyting.toString(),
            color: ColorConst.whiteColor,
            size: 12),
      );
}
