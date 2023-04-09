import 'package:flutter/material.dart';

class LanguageButtonWidget extends StatelessWidget {
  final Function(String) onTap;
  final String language;
  final bool isSelected;

  const LanguageButtonWidget({
    Key? key,
    required this.onTap,
    required this.language,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(language),
      child: Opacity(
        opacity: isSelected ? 1 : 0.2,
        child: Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('icons/flags/png/2.5x/$language.png',
                  package: 'country_icons'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
