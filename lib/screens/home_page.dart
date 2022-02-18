import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/core/constants/color_const.dart';
import 'package:food/widgets/Texts.dart';

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
                  SizedBox(
                    height: 256,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) => Padding(
                        padding: const EdgeInsets.all(5),
                        child: SizedBox(
                          width: 200,
                        
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                height: 160,
                                width: 200,
                                image: AssetImage(
                                    'assets/images/osh${(index) % 2 + 1}.png'),
                                fit: BoxFit.fill,
                              ),
                              bolttext(text: "Coffe $index"),
                              greytext(text: 'choy $index'),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(),
                                  greytext(text: 'text'),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      itemCount: 10,
                    ),
                  )
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
