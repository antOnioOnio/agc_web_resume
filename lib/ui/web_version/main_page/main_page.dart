import 'package:agc_web_resume/core/constants/colors.dart';
import 'package:agc_web_resume/ui/web_version/main_page/widgets/main_header_profile_info.dart';
import 'package:agc_web_resume/ui/web_version/main_page/sections/page_section_controller.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 200, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            MainHeaderProfileInfo(),
            SizedBox(height: 16.0),
            PageSectionController(),
          ],
        ),
      ),
    );
  }
}
