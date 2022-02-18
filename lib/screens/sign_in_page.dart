import 'package:flutter/material.dart';
import 'package:food/widgets/Texts.dart';

import '../widgets/my_appbar.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(title: bolttext(text: "Sign In",size: 16)),
    );
  }
}
