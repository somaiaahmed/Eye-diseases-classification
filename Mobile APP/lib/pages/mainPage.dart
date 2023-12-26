// ignore_for_file: file_names, no_leading_underscores_for_local_identifiers, camel_case_types, sized_box_for_whitespace

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:math_research/definitionsOfDiseases/cataractDefinitionWidget.dart';
import 'package:math_research/definitionsOfDiseases/diabeticRetinopathyDefinitionWidget.dart';
import 'package:math_research/definitionsOfDiseases/glaucomaDefinitionWidget.dart';
import 'package:math_research/widgets/NavigationWidget.dart';
import 'package:math_research/widgets/titleWidget.dart';

Future<String> uploadFile(XFile imageFile) async {
  Dio dio = Dio();

  var url = "https://dlmodel-001-site1.btempurl.com/api/Model";

  var filePath = imageFile.path;
  var file = await MultipartFile.fromFile(filePath);

  var formData = FormData.fromMap({"image": file});

  try {
    var response = await dio.post(
      url,
      data: formData,
    );
    final responseBody = response.data.toString();
    return responseBody;
  } catch (e) {
    throw Error;
  }
}

Future<XFile?> selectImage() async {
  final ImagePicker _picker = ImagePicker();
  final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
  return image;
}

class mainPage extends StatefulWidget {
  const mainPage({super.key});

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  String responseString = '';
  int loading = -1;

  void processImage() async {
    XFile? image = await selectImage();
    if (image != null) {
      try {
        loading = 1;
        setState(() {
          loading = 1;
        });
        String response = await uploadFile(image);
        setState(() {
          responseString = response;
          responseString = responseString.replaceFirst(
              responseString[0], responseString[0].toUpperCase());
          loading = 0;
        });
      } catch (error) {
        throw Exception("Error");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black, size: 35),
        backgroundColor: const Color(0xffFBFBFB),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/finallogo.jpg",
              scale: 13,
            ),
            const titleWidget(),
          ],
        ),
      ),
      drawer: const navigationWidget(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/thirdAppBackground.jpg"),
                fit: BoxFit.fill)),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const cataractDefinitionWidget(),
              const glaucomaDefinitionWidget(),
              const diabeticRetinopathyDefinitionWidget(),
              Container(
                width: double.infinity,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Scan Now",
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
                    const SizedBox(
                      height: 10,
                    ),
                    TextButton(
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: const BorderSide(color: Colors.green),
                            ),
                          ),
                          backgroundColor: MaterialStateColor.resolveWith(
                              (states) => Colors.green)),
                      onPressed: processImage,
                      child: const Text(
                        'Select an image',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 20),
                    if (loading == -1)
                      const Text(
                        "No image selected",
                        style: TextStyle(fontSize: 18),
                      )
                    else if (loading == 1)
                      const Text(
                        "Loading...",
                        style: TextStyle(fontSize: 18),
                      )
                    else if (responseString != "Diabetic_retinopathy")
                      Text(
                        "Identified as $responseString",
                        style: const TextStyle(fontSize: 18),
                      )
                    else
                      const Text(
                        "Identified as Diabetic Retinopathy",
                        style: TextStyle(fontSize: 18),
                      ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
