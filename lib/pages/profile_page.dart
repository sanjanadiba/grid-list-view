import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(Icons.person, size: 80, color: Colors.blueGrey),
        SizedBox(height: 20),
        Text('This is the Profile Page', style: TextStyle(fontSize: 18)),
      ],
    );
  }
}
