// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';

class ourModelPage extends StatelessWidget {
  const ourModelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: const IconThemeData(color: Colors.black, size: 35),
        backgroundColor: Colors.white,
        title: const Text(
          "Model",
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
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Introduction to our model",
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
                "Leveraging the power of deep learning and advanced models like CNN and VGG-19, our model accurately classifies common eye diseases such as cataract, glaucoma, and diabetic retinopathy. By analyzing retinal images, it provides quick and reliable diagnoses, assisting healthcare professionals in early detection and treatment planning. With the mobile app and the website, our model aims to improve access to eye healthcare, promote timely intervention, and ultimately enhance patient outcomes.",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Our results",
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
                "The Eye Disease Classification model demonstrated robust performance across multiple eye disease categories. The model exhibited highly satisfying results, reaching a minimum validation loss of 0.3127 and an accuracy of 91.46% at its best epoch",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Image(
                image: AssetImage("assets/images/eye disease acc.png"),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "The model was evaluated on an independent test set, confirming its real-world applicability.",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Image(
                image: AssetImage("assets/images/model third image.png"),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "The results showcase the evolution from cataract detection to a comprehensive eye disease classification system, emphasizing the model's effectiveness and potential areas for enhancement.",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
