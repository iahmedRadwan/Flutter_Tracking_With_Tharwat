import 'package:flutter/material.dart';
import 'package:task1/widgets/location_action_button.dart';

class CustomListActionButton extends StatelessWidget {
  const CustomListActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        LocationActionButton(
          icon: Icons.call,
          buttonText: 'CALL',
        ),
        LocationActionButton(
          icon: Icons.near_me,
          buttonText: 'ROUTE',
        ),
        LocationActionButton(
          icon: Icons.share,
          buttonText: 'SHARE',
        ),
      ],
    );
  }
}
