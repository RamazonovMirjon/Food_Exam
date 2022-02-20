import 'package:flutter/material.dart';
import 'package:food/core/constants/color_const.dart';
import 'package:food/data/foot_data.dart';
import 'package:food/widgets/Texts.dart';

import '../widgets/my_appbar.dart';

class FinalPage extends StatefulWidget {
  final int pageNum;
  const FinalPage({Key? key, this.pageNum = 0}) : super(key: key);

  @override
  State<FinalPage> createState() => _FinalPageState();
}

class _FinalPageState extends State<FinalPage> {
  @override
  Widget build(BuildContext context) {
    final foods = FoodData().foodList[widget.pageNum];
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
            
          ],
        ),
      ),
    );
  }
}
