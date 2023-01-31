import 'package:flutter/material.dart';

class DashTile extends StatelessWidget {
  final Function onTap;
  final String title;
  final double height;

  const DashTile({
    super.key,
    required this.onTap,
    required this.title,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => onTap(),
        child: Container(
          height: height,
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.all(Radius.circular(8)),
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 4,
                spreadRadius: -2,
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
        ),
      ),
    );
  }
}
