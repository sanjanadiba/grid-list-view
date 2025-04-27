import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(Icons.settings, size: 80, color: Colors.blueGrey),
        SizedBox(height: 20),
        Text('This is the Settings Page', style: TextStyle(fontSize: 18)),
      ],
    );
  }
}
