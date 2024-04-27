import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theming/widgets/custom_button.dart';

import '../../themeChanger/themeChangerProvider/theme_changer_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeChangerProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text("Changing the Theme of the APP"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            SwitchListTile(
              title: const Text("Dark Mode"),
              value: themeProvider.themeMode == ThemeMode.dark,
              onChanged: (value) {
                final newThemeMode =
                value ? ThemeMode.dark : ThemeMode.light;
                themeProvider.setTheme(newThemeMode);
              },
            ),
            // RadioListTile<ThemeMode>(
            //   title: const Text("Light Mode"),
            //   value: ThemeMode.light,
            //   groupValue: themeProvider.themeMode,
            //   onChanged: (value) => themeProvider.setTheme(value!),
            // ),
            // RadioListTile<ThemeMode>(
            //   title: const Text("Dark Mode"),
            //   value: ThemeMode.dark,
            //   groupValue: themeProvider.themeMode,
            //   onChanged: (value) => themeProvider.setTheme(value!),
            // ),
            // RadioListTile<ThemeMode>(
            //   title: const Text("System Default Mode"),
            //   value: ThemeMode.system,
            //   groupValue: themeProvider.themeMode,
            //   onChanged: (value) => themeProvider.setTheme(value!),
            // ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary, // Use primary color
              ),
              child: const Text('Save Changes'),
            ),

          ],
        ),
      ),
    );
  }
}
