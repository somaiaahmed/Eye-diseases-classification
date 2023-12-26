// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:math_research/widgets/ContactUsWidget.dart';

class contactUsPage extends StatelessWidget {
  const contactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black, size: 35),
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        title: const Text(
          "About Us",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/thirdAppBackground.jpg"),
              fit: BoxFit.fill),
        ),
        child: const SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Who are we?",
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
              height: 10,
            ),
            Text(
              "We are a group of eight students studying Biomedical Engineering at the Faculty of Engineering in Cairo University. Our passion for the intersection of engineering and healthcare has brought us together to explore the exciting field of biomedical engineering. With a strong interest in artificial intelligence (AI), we are eager to leverage its potential to revolutionize healthcare and improve patient outcomes.",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
            ContactUsWidget(),
          ]),
        ),
      ),
    );
  }
}
