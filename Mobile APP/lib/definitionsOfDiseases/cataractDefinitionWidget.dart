// ignore_for_file: file_names, camel_case_types, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class cataractDefinitionWidget extends StatelessWidget {
  const cataractDefinitionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "What is Cataract?",
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
            "Cataract is an eye disease causing the eyes to be cloudy, vision to be frosty or fogged-up and the person suffering from it to face difficulties reading, driving, and even recognizing another person's face. It is caused by proteins that build up in the lens of the eyes preventing light to pass through it.",
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
