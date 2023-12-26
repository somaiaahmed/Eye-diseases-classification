// ignore_for_file: file_names, camel_case_types, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class glaucomaDefinitionWidget extends StatelessWidget {
  const glaucomaDefinitionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white,
      child: const Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "What is Glaucoma?",
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
            "Glaucoma is an eye condition where increased intraocular pressure damages the optic nerve, leading to gradual vision loss. It includes open-angle glaucoma with slow progression and angle-closure glaucoma with sudden pressure spikes.",
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
