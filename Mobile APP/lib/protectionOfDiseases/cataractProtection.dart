// ignore_for_file: file_names, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class CataractProtection extends StatelessWidget {
  const CataractProtection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "ways to reduce risk of Cataracts",
            style: TextStyle(
              fontSize: 24,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(10.0, 10.0),
                  blurRadius: 3.0,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Protect your eyes from the sun. Ultraviolet (UV) light from the sun can cause damage to your eyes, which leads to the development of cataracts. At a microscopic level, UV light induces oxidative damage. When this happens, damaging molecules called free radicals can disrupt the proteins in your lens and cause them to clump together.",
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Eat a balanced diet. Eating a nutritious diet with lots of fruits and vegetables and minimally processed foods may help reduce your risk of developing cataracts.",
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Protect your eyes from injury. Injury to your eye is another risk factor for cataracts. Wearing proper safety eyewear during sports and other activities can protect your eyes from injury and reduce the risk of cataracts.",
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Get regular eye checkups. Cataracts and other eye diseases may not have noticeable symptoms in the early stages. To protect the health of your eyes, it's important to get your eyes checked on a regular basis, especially as you get older.",
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Avoid smoking. Chemicals in cigarette smoke can have a negative effect on many parts of your body, including your eyes. People who smoke have a two to three times Trusted Source higher risk of developing cataracts than nonsmokers.",
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
