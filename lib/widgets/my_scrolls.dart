
import 'package:flutter/material.dart';

import 'Texts.dart';

class Biribchiscroll extends StatelessWidget {
  const Biribchiscroll({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                   '' ),
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
    );
  }
}
