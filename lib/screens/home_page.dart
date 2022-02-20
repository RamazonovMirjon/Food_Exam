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
                  Center(
                    heightFactor: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        bolttext(text: "Featured Partners", size: 24),
                        greytext(
                            text: 'See all',
                            color: ColorConst.greenColor,
                            size: 16)
                      ],
                    ),
                  ),
                  const Biribchiscroll(),
                  const Padding(
                    padding:  EdgeInsets.symmetric(vertical: 34),
                    child: Image(
                        image: AssetImage('assets/images/Banner.png')
                      ),
                  ),
                  
                ],
              ),
            ),
            Expanded(flex: 2, child: Row()),
          ],
        ),
      ),
    );
  }
}
