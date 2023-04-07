import 'package:agc_web_resume/core/constants/colors.dart';
import 'package:flutter/material.dart';

class RectangleImageWIdget extends StatelessWidget {
  final String assetPath;
  final double? height;
  final double? width;

  const RectangleImageWIdget({Key? key, required this.assetPath, this.height, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: height ?? 150,
      height: width ?? 150,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        border: Border.all(
          color: AppColors.greyBorderColor,
          width: 0.5,
        ),
        image: DecorationImage(
          image: AssetImage(assetPath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
