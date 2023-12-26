// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:math_research/models/memberModel.dart';

class ContactUsWidget extends StatelessWidget {
  const ContactUsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.all(16.0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            memberModel(
              memberName: "Abdullah Mahmoud",
              memberLinkedIn:
                  "https://www.linkedin.com/in/abdullah-mahmoud-hanafy-1a3116255/",
              memberGitHub: "https://github.com/AbdullahMahmoud2003",
            ),
            memberModel(
              memberName: "Ahmed Raafat",
              memberLinkedIn:
                  "https://www.linkedin.com/in/ahmed-raafat-engineer/",
              memberGitHub: "https://github.com/AhmeedRaafatt",
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            memberModel(
              memberName: "Hasnaa Hossam",
              memberLinkedIn:
                  "https://www.linkedin.com/in/hasnaa-hossam-4aab68247/",
              memberGitHub: "https://github.com/hassnaa11",
            ),
            memberModel(
              memberName: "Ahmed Amgad",
              memberLinkedIn:
                  "https://www.linkedin.com/in/engineer-ahmed-amgad/",
              memberGitHub: "https://github.com/AhmedAmgadEid",
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            memberModel(
              memberName: "Salah Mohamed",
              memberLinkedIn:
                  "https://www.linkedin.com/in/salah-mohamed-3a15651b0/",
              memberGitHub: "https://github.com/salahmohamed03",
            ),
            memberModel(
              memberName: "Ayat Tarek",
              memberLinkedIn:
                  "https://www.linkedin.com/in/ayat-tarek-25315123a/",
              memberGitHub: "https://github.com/Ayat-Tarek",
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            memberModel(
              memberName: "Somaia Ahmed",
              memberLinkedIn:
                  "https://www.linkedin.com/in/somaia-ahmed-192b2318b/",
              memberGitHub: "https://github.com/somaiaahmed",
            ),
            memberModel(
              memberName: "Mohamed Ahmed",
              memberLinkedIn:
                  "https://www.linkedin.com/in/mohamed-ahmed-91333524a/",
              memberGitHub: "https://github.com/Mohamed-185",
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
