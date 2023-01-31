import 'package:flutter/material.dart';

class GoodBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  GoodBar({super.key, required this.title});

  @override
  final Size preferredSize = Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: Theme.of(context).textTheme.headlineLarge,
      ),
      centerTitle: false,
      backgroundColor: Theme.of(context).canvasColor,
      elevation: 0,
    );
  }
}
