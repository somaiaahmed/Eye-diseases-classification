// ignore_for_file: file_names, camel_case_types, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class diabeticRetinopathyProtection extends StatelessWidget {
  const diabeticRetinopathyProtection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Column(
        children: [
          Text(
            "ways to reduce risk of Diabetic Retinopathy",
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
            "Monitor Your Blood Sugar. One of the best things you can do to protect your vision (and overall health) when you have diabetes is to be vigilant about monitoring your blood sugar. When it's controlled, it's less likely to damage the lining of the blood vessels or cause new, abnormal blood vessels to grow in your eyes. Monitoring your blood sugar includes home testing and lab tests.",
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Manage Your Blood Pressure. High blood pressure is common among people with type 2 diabetes. It can affect not only your cardiovascular system but also your vision.",
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Check Your Cholesterol. Your cholesterol level is another important factor in lowering the risk of diabetic retinopathy. People with type 2 diabetes and high LDL or (bad) cholesterol (and lipid levels) have a higher risk of losing vision.",
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Exercise. Exercise is another component of getting and staying healthy when you have type 2 diabetes. Experts have noted that physically active people tended to have less severe retinopathy, unrelated to their A1C levels and body mass index (BMI). BMI is an estimate of body fat that is based on your weight and height.",
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
