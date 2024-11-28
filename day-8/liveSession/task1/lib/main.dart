import 'package:flutter/material.dart';
import 'package:task1/widgets/location_info_screen.dart';

void main() {
  runApp(const FirstTask());
}

class FirstTask extends StatelessWidget {
  const FirstTask({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: LocationInfoScreen(),
    );
  }
}
