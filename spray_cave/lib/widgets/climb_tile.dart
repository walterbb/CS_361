import 'package:flutter/material.dart';

class ClimbTile extends StatelessWidget {
  final Function onTap;
  final String name;
  final int grade;

  const ClimbTile({
    super.key,
    required this.onTap,
    required this.name,
    required this.grade,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => onTap(),
        child: Container(
          height: 80,
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.all(Radius.circular(8)),
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 2,
                spreadRadius: -2,
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    name,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                Text(
                  "v$grade",
                  style: Theme.of(context).textTheme.headlineSmall,
                  textAlign: TextAlign.end,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
