import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';
import 'package:theming/screens/homeScreen/home_screen.dart';
import 'package:theming/themeChanger/themeChangerProvider/theme_changer_provider.dart';
import 'package:theming/themeChanger/themes/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeChangerProvider())
      ],
      child: Builder(builder: (BuildContext context) {
        final themeProvider = Provider.of<ThemeChangerProvider>(context);
        return GetMaterialApp(
          title: 'Theming',
          themeMode: themeProvider.themeMode,
          theme: AppThemes.lightTheme,
          darkTheme: AppThemes.darkTheme,
          home: const HomeScreen(),
        );
      },),
    );
  }
}