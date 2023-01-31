import 'package:flutter/material.dart';
import 'package:spray_cave/widgets/good_bar.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GoodBar(
        title: "Profile",
      ),
    );
  }
}
