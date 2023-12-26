// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';

class futureWorkPage extends StatelessWidget {
  const futureWorkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: const IconThemeData(color: Colors.black, size: 35),
        backgroundColor: Colors.white,
        title: const Text(
          "Future Work",
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                "While the current results are promising, there are several avenues for improvement to achieve even better accuracy and validation performance. The following points could be taken into consideration.",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 5,
              ),
              const Divider(
                color: Colors.black,
              ),
              RichText(
                text: const TextSpan(
                  // Note: Styles for TextSpans must be explicitly defined.
                  // Child text spans will inherit styles from parent
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Leveraging Expertise:',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                    TextSpan(
                        style: TextStyle(fontSize: 18),
                        text:
                            ' Accurately Identifying and Classifying a Spectrum of Ailments, including:'),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              RichText(
                text: const TextSpan(
                  // Note: Styles for TextSpans must be explicitly defined.
                  // Child text spans will inherit styles from parent
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Age-Related Macular Degeneration (AMD):',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    TextSpan(
                        style: TextStyle(fontSize: 16),
                        text:
                            ' AMD is a progressive eye condition that affects the macula, the central part of the retina responsible for sharp central vision. It is most commonly seen in older individuals and can result in blurred or distorted vision, making it difficult to read or recognize faces.'),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              RichText(
                text: const TextSpan(
                  // Note: Styles for TextSpans must be explicitly defined.
                  // Child text spans will inherit styles from parent
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Hypertension:',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    TextSpan(
                        style: TextStyle(fontSize: 16),
                        text:
                            ' Also known as high blood pressure, is a chronic medical condition characterized by elevated blood pressure in the arteries. It can put strain on the cardiovascular system and increase the risk of heart disease, stroke, and other related health complications.'),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              RichText(
                text: const TextSpan(
                  // Note: Styles for TextSpans must be explicitly defined.
                  // Child text spans will inherit styles from parent
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Pathological Myopia:',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    TextSpan(
                        style: TextStyle(fontSize: 16),
                        text:
                            ' Pathological myopia is a severe form of nearsightedness (myopia) that goes beyond normal refractive errors. It is characterized by excessive elongation of the eyeball, leading to thinning of the retina and other structural changes.'),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Divider(
                color: Colors.black,
              ),
              RichText(
                text: const TextSpan(
                  // Note: Styles for TextSpans must be explicitly defined.
                  // Child text spans will inherit styles from parent
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Diversifying Dataset:',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                    TextSpan(
                        style: TextStyle(fontSize: 18),
                        text:
                            ' Consider expanding the dataset to include more diverse scenarios, lighting conditions, and demographic representations for improved model robustness.    '),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Divider(
                color: Colors.black,
              ),
              RichText(
                text: const TextSpan(
                  // Note: Styles for TextSpans must be explicitly defined.
                  // Child text spans will inherit styles from parent
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Advanced Augmentation:',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                    TextSpan(
                        style: TextStyle(fontSize: 18),
                        text:
                            " Explore advanced augmentation techniques to generate a more varied set of training samples, enhancing the model's adaptability to various input variations."),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Divider(
                color: Colors.black,
              ),
              const Text(
                "These steps collectively aim to not only improve accuracy but also provide deeper insights into the model's behavior, contributing to its reliability in real-world applications.",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
