import 'package:flutter/material.dart';
import 'dash_pages/recent.dart';
import 'dash_pages/projects.dart';
import '../widgets/good_bar.dart';
import '../widgets/dash_tile.dart';

class Dash extends StatelessWidget {
  const Dash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GoodBar(title: "Dashboard"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "My Climbs",
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.left,
            ),
            Padding(
              padding: EdgeInsets.all(4),
            ),
            Row(
              children: [
                DashTile(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return Recent();
                      },
                    ),
                  ),
                  title: "Recent",
                  height: 80,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(8),
            ),
            Row(
              children: [
                DashTile(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return Projects();
                      },
                    ),
                  ),
                  title: "Projects",
                  height: 80,
                ),
              ],
            ),
            Padding(padding: EdgeInsets.all(16)),
            Text(
              "Discover",
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.left,
            ),
            Padding(
              padding: EdgeInsets.all(4),
            ),
            Row(
              children: [
                DashTile(
                  onTap: () {},
                  title: "Warm Up",
                  height: 80,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(8),
            ),
            Row(
              children: [
                DashTile(
                  onTap: () {},
                  title: "Recommended",
                  height: 80,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(8),
            ),
            Row(
              children: [
                DashTile(
                  onTap: () {},
                  title: "New",
                  height: 80,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
