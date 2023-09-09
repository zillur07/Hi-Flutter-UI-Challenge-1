import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_challenge_1/src/helper/hex_color.dart';
import 'package:ui_challenge_1/src/pages/home_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UI Challenge_1',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: HexColor('#5F18E8'))),
      home: HomePage(),
    );
  }
}
