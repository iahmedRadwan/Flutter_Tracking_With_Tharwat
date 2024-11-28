import 'package:flutter/material.dart';

class LocationActionButton extends StatelessWidget {
  const LocationActionButton(
      {super.key, required this.icon, required this.buttonText});

  final IconData icon;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.deepPurple,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          buttonText,
          style: const TextStyle(
            color: Colors.deepPurple,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
