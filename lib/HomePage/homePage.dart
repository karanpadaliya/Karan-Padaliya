import 'package:flutter/material.dart';

import '../footer/footer.dart';
import '../header/header.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Expanded(child: MainHeader()),
          Expanded(child: Footer()),
        ],
      ),
    );
  }
}
