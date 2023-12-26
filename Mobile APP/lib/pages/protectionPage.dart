// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:math_research/protectionOfDiseases/cataractProtection.dart';
import 'package:math_research/protectionOfDiseases/diabeticRetinopathyProtection.dart';
import 'package:math_research/protectionOfDiseases/glaucomaProtection.dart';

class protectionPage extends StatelessWidget {
  const protectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: const IconThemeData(color: Colors.black, size: 35),
        backgroundColor: Colors.white,
        title: const Text(
          "Protection",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/thirdAppBackground.jpg"),
              fit: BoxFit.fill),
        ),
        child: const SingleChildScrollView(
          child: Column(
            children: [
              CataractProtection(),
              SizedBox(
                height: 20,
              ),
              glaucomaProtection(),
              SizedBox(
                height: 20,
              ),
              diabeticRetinopathyProtection(),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
