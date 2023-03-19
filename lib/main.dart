import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              MyProfileWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class MyProfileWidget extends StatelessWidget {
  const MyProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Columna de la foto
        Container(
          width: 200,
          height: 200,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('assets/images/profile_picture.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
        ),

        // Columna de información
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Antonio García Castillo',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'SENIOR FLUTTER SOFTWARE DEVELOPER IN ACCENTURE',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
              Row(
                children: const [
                  Icon(Icons.location_on),
                  Text(
                    'Granada, Spain',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: const [
                  FaIcon(FontAwesomeIcons.linkedinIn),
                  SizedBox(width: 8),
                  FaIcon(FontAwesomeIcons.github),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
