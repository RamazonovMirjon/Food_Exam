import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/core/constants/color_const.dart';
import 'package:food/widgets/Texts.dart';

import '../widgets/my_scrolls.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Align(
                alignment: Alignment.centerRight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: greytext(
                          text: 'DELIVERY TO',
                          color: ColorConst.greenColor,
                          size: 12),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 100),
                          child: bolttext(text: "San Francisco", size: 22),
                        ),
                        CupertinoButton(
                          child: Icon(
                            Icons.keyboard_arrow_down_sharp,
                            color: ColorConst.blackColor,
                            size: 16,
                          ),
                          onPressed: () {},
                        ),
                        CupertinoButton(
                            child: greytext(
                                text: 'Filter',
                                color: ColorConst.blackColor,
                                size: 16),
                            onPressed: () {})
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 20,
              child: ListView(
                scrollDirection: Axis.vertical,
                padding: const EdgeInsets.symmetric(horizontal: 13),
                children: [
                  const Image(image: AssetImage('assets/images/Header.png')),
                  scrollarTitle('Featured Partners'),
                  const ScrollWidget(),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 34),
                    child: Image(image: AssetImage('assets/images/Banner.png')),
                  ),
                  scrollarTitle('Best Picks \nRestaurants by team'),
                  const ScrollWidget(i: 2),
                  scrollarTitle('All Restaurants'),
                  const ScrollWidget(i: 4,scroll: Axis.vertical,rasmHight: 185,rasmWith: double.infinity,sizeBoxhight: 400),



                ],
              ),
            ),
            Expanded(flex: 2, child: Row()),
          ],
        ),
      ),
    );
  }

  Center scrollarTitle(String title) => Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            bolttext(text: title, size: 24, align: TextAlign.start),
            CupertinoButton(
              child: greytext(
                  text: 'See all', color: ColorConst.greenColor, size: 16),
              onPressed: () {},
            )
          ],
        ),
      );
}
