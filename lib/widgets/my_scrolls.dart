import 'package:flutter/material.dart';
import 'package:food/core/constants/color_const.dart';
import 'package:food/data/foot_data.dart';

import 'Texts.dart';

class ScrollWidget extends StatelessWidget {
  final int i; // i bu yerda qaysi rasmdan boshlash kerakligini aniqlaydi
  final double rasmWith;  //rasm olchami - sababi bu clasni ikki joyda ishlatganman
  final double rasmHight; // yuqoridagi gap
  final Axis scroll;   // ikki joyda ishlatganim uchun scrollar ikki xil
  final double sizeBoxhight; // buyam ikki joydaligi uchun
  final ScrollPhysics a; //sikrolni tuxtatadi bittasiga bor bittasiga yuq
  const ScrollWidget(
      {Key? key,
      this.i = 0,
      this.rasmHight = 160,    //birichi 2 ta ishlatganimni qiymatlari
      this.rasmWith = 200,
      this.scroll = Axis.horizontal,
      this.sizeBoxhight = 256,
      this.a = const ScrollPhysics()})
      : super(key: key);

  @override
  Widget build(
    BuildContext context,
  ) {
    var foodList = FoodData().foodList;  //FoodDatadagi listni uzlashtirib oldim
    return SizedBox(
      height: sizeBoxhight,
      width: double.infinity,
      child: ListView.builder(
        shrinkWrap: true,
        physics: a,
        scrollDirection: scroll,
        controller: ScrollController(),
        itemBuilder: (BuildContext context, index) {
          //vazifasi indexga har safar a ni qushadi va bir marta data'ni aylanadi
          index += i;
          index %= foodList.length;
          return InkWell(
            onTap: () {
              Navigator.pushNamed(  //bu qism ayni final pagega malumot yuboradigan qism
                context,
                "/finalpage",
                arguments: index,
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: SizedBox(
                width: rasmWith,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(
                      height: rasmHight,
                      width: rasmWith,
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
            ),
          );
        },
        itemCount: foodList.length,
      ),
    );
  }

// containercha reyting berilgan kok qismcha uchun
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
