import 'package:flutter/material.dart';
import 'package:food/core/constants/color_const.dart';

PreferredSizeWidget myAppBar({BuildContext? context,
        Widget title = const Text(''), List<Widget>? listIcon}) =>
    AppBar(
      
      toolbarHeight: 44,
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        color: ColorConst.blackColor,
        icon: const Icon(
          Icons.arrow_back_ios_outlined,

        ),
        //orqaga qaytish uchun
        onPressed: () {
          
          Navigator.pop(context!);
        },
      ),

      title: title,
      centerTitle: true,

      //final sahifadagi appbar uchun iconlar
      actions: listIcon,
    );
