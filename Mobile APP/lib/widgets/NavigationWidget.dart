// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:math_research/widgets/drawerTiles.dart';

class navigationWidget extends StatelessWidget {
  const navigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Container(
            color: Colors.white,
            child: const DrawerHeader(
                child: CircleAvatar(
              radius: 300,
              backgroundImage: AssetImage("assets/images/finallogo.jpg"),
            )),
          ),
          Container(color: Colors.white, child: buildMenuItems())
        ],
      ),
    );
  }

  Widget buildMenuItems() {
    return const Column(
      children: [
        drawerTiles(icon: Icon(Icons.wysiwyg_sharp), title: "Model"),
        drawerTiles(icon: Icon(Icons.healing), title: "Protection"),
        drawerTiles(icon: Icon(Icons.search), title: "Future Work"),
        drawerTiles(icon: Icon(FontAwesomeIcons.person), title: "About Us"),
      ],
    );
  }
}
