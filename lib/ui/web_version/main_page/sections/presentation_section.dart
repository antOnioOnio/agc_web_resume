import 'package:agc_web_resume/core/constants/decorations.dart';
import 'package:agc_web_resume/ui/web_version/main_page/widgets/header_text.dart';
import 'package:flutter/material.dart';

class PresentationSection extends StatelessWidget {
  const PresentationSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecorations.sectionDecoration,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            HeaderText(text: 'Presentation'),
            SizedBox(height: 16.0),
            Text(
              "I am a mobile app developer with 4 years of experience, specializing in Flutter development. I began my career developing Android apps for a year before discovering Flutter, which I fell in love with due to its flexibility and ease of use, leading me to focus on it ever since. \n\nIn addition to my experience in mobile app development and strong emphasis on good architecture in all of my projects, I have also led small teams. As a team leader, I effectively manage project timelines and ensure that all team members are aware of their responsibilities and expectations. I encourage communication and collaboration among team members, while providing guidance and support as needed.\n\nFurthermore, I have advanced language skills in English, having lived in London for two years a decade ago. This has allowed me to collaborate effectively with English-speaking teams and work on international projects.",
              style: TextStyle(
                fontSize: 20.0,
                height: 1.5,
              ),
            )
          ],
        ),
      ),
    );
  }
}
