// ignore_for_file: file_names, camel_case_types, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class memberModel extends StatelessWidget {
  const memberModel(
      {required this.memberName,
      required this.memberLinkedIn,
      required this.memberGitHub});

  final String memberName;
  final String memberLinkedIn;
  final String memberGitHub;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.green, width: 3),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      height: 80,
      width: 150,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Text(
          memberName,
          style: const TextStyle(fontSize: 16),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                Uri url = Uri.parse(memberLinkedIn);
                launchUrl(url);
              },
              child: const Icon(FontAwesomeIcons.linkedin),
            ),
            InkWell(
              onTap: () {
                Uri url = Uri.parse(memberGitHub);
                launchUrl(url);
              },
              child: Image.asset(
                "assets/images/githubIcon.webp",
                scale: 11,
              ),
            )
          ],
        ),
      ]),
    );
  }
}
