import 'package:flutter/material.dart';

class CustomLocationListTile extends StatelessWidget {
  const CustomLocationListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text(
        "Oeschinen Lake Campground",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
      ),
      subtitle: const Padding(
        padding: EdgeInsets.only(top: 6),
        child: Text(
          "Kandersteg. Switzerland",
          style: TextStyle(color: Colors.grey),
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.star,
            color: Colors.redAccent[700],
          ),
          const SizedBox(
            width: 4,
          ),
          const Text(
            "41",
            style: TextStyle(fontSize: 14),
          )
        ],
      ),
    );
  }
}
