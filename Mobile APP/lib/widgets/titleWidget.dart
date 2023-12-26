// ignore: file_names
// ignore_for_file: camel_case_types, file_names, duplicate_ignore

import 'package:flutter/material.dart';

class titleWidget extends StatelessWidget {
  const titleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          "   C",
          style: TextStyle(color: Colors.green),
        ),
        Text(
          "ata",
          style: TextStyle(color: Colors.black),
        ),
        Text(
          "N",
          style: TextStyle(color: Colors.green),
        ),
        Text(
          "ova",
          style: TextStyle(color: Colors.black),
        )
      ],
    );
  }
}
