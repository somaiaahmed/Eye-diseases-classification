// ignore_for_file: file_names, camel_case_types, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class diabeticRetinopathyDefinitionWidget extends StatelessWidget {
  const diabeticRetinopathyDefinitionWidget({super.key});

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
            "What is Diabetic Retinopathy?",
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
            "Diabetic retinopathy is a common complication of diabetes where high blood sugar levels cause damages to the blood vessels of the retina. Globally, 27% of diabetic patients have it.",
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
