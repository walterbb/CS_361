import 'package:flutter/material.dart';
import 'package:spray_cave/widgets/good_bar.dart';
import 'package:spray_cave/widgets/climb_tile.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GoodBar(title: "Projects"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              "Your Saved Climbs",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Padding(padding: EdgeInsets.all(4)),
            Row(
              children: [
                ClimbTile(onTap: () {}, name: "Off the Wagon", grade: 16),
              ],
            ),
            Padding(padding: EdgeInsets.all(4)),
            Row(
              children: [
                ClimbTile(onTap: () {}, name: "Alphane", grade: 17),
              ],
            ),
            Padding(padding: EdgeInsets.all(4)),
            Row(
              children: [
                ClimbTile(onTap: () {}, name: "Midnight Lightning", grade: 8),
              ],
            ),
            Padding(padding: EdgeInsets.all(4)),
            Row(
              children: [
                ClimbTile(onTap: () {}, name: "Silence", grade: 17),
              ],
            ),
            Padding(padding: EdgeInsets.all(4)),
            Row(
              children: [
                ClimbTile(onTap: () {}, name: "New Base Line", grade: 14),
              ],
            ),
            Padding(padding: EdgeInsets.all(4)),
            Row(
              children: [
                ClimbTile(onTap: () {}, name: "Radja", grade: 14),
              ],
            ),
            Padding(padding: EdgeInsets.all(4)),
            Row(
              children: [
                ClimbTile(onTap: () {}, name: "Megatron", grade: 17),
              ],
            ),
            Padding(padding: EdgeInsets.all(4)),
            Row(
              children: [
                ClimbTile(onTap: () {}, name: "Gakido", grade: 16),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
