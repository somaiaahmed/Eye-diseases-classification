// ignore_for_file: file_names, camel_case_types, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class glaucomaProtection extends StatelessWidget {
  const glaucomaProtection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Column(
        children: [
          Text(
            "ways to reduce risk of Glaucoma",
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
            "Avoid head-down positions. If you have glaucoma or you're at high risk of the disease, don't place your head below your heart for long periods of time. That includes staying away from inversion tables or gravity boots for back pain. Head-down positions can greatly raise your eye pressure. Some people with severe glaucoma may need to avoid certain yoga positions. Ask your doctor if you need to avoid a head-down position in your exercise routine.",
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Sleep in the right position. If you have glaucoma, avoid sleeping with your eye against the pillow or on your arm. People who have obstructive sleep apnea (OSA) are at risk of glaucoma, or may have more serious disease. If you snore heavily or stop breathing throughout the night, get tested for OSA.",
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Protect your eyes from sunlight. There is some evidence that the sun's UV rays may cause a type of glaucoma. Wear quality polarized sunglasses and a hat when exploring the outdoors.",
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Keep your mouth clean. Recent research links gum disease with optic nerve damage in glaucoma. Brush and floss your teeth every day and see your dentist regularly.",
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
