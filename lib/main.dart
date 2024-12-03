import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:karan_padaliya/header/header.dart';

import 'HomePage/homePage.dart';

void main() {
  runApp(const SafeArea(child: MainPage()));
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => Homepage()),
        GetPage(name: "/MainHeader", page: () => MainHeader()),
      ],
    );
  }
}
