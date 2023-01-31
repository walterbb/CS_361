import 'package:flutter/material.dart';
import 'package:spray_cave/widgets/good_bar.dart';

class Creator extends StatelessWidget {
  const Creator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GoodBar(title: "Climb Creator")
    );
  }
}
