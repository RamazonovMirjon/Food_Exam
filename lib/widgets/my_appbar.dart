import 'package:flutter/material.dart';

PreferredSizeWidget myAppBar(
        {Widget title = const Text(''), List<Widget>? listIcon}) =>
    AppBar(
      toolbarHeight: 44,
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        color: const Color(0xFF010F07),
        icon: const Icon(
          Icons.arrow_back_ios_outlined,
        ),
        onPressed: () {},
      ),
      title: title,
      centerTitle: true,
      actions: listIcon,
    );
