import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../themeChanger/themeChangerProvider/theme_changer_provider.dart';

class CustomButton extends StatelessWidget {
  final String title;
  const CustomButton({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeChangerProvider>(context);
    final ThemeData themeData = Theme.of(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: themeProvider.themeMode == ThemeMode.dark
              ? Colors.deepPurple // Dark theme color
              : Colors.grey, // Light theme color
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            title,
            style: themeData.textTheme.button!.copyWith(
              color: themeProvider.themeMode == ThemeMode.dark
                  ? Colors.white // Dark theme text color
                  : Colors.black, // Light theme text color
            ),
          ),
        ),
      ),
    );
  }
}





