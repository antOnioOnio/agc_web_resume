import 'package:agc_web_resume/core/constants/colors.dart';
import 'package:flutter/material.dart';

class SkillWidget extends StatelessWidget {
  final String header;
  final List<String> setValues;

  const SkillWidget({Key? key, required this.header, required this.setValues})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              header,
              textAlign: TextAlign.start,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              color: AppColors.greyBorderColor,
              width: 280,
              height: 1,
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        ...List.generate(
          setValues.length,
          (index) => Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Row(
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.black, // color del punto
                  radius: 2, // tamaño del punto
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  setValues[index],
                  style: const TextStyle(
                    fontSize: 16.0,
                    height: 1.5,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
