import 'package:flutter/material.dart';

PreferredSizeWidget myAppBar({Widget title = const Text(''), List<Widget>? listIcon}) => AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        color: Colors.black,
        icon: const Icon(
          Icons.arrow_back_ios_outlined,
        ),
        onPressed: () {},
      ),
      title: title,
      centerTitle: true,
      actions: listIcon,
    );
