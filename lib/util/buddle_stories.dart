import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  final String text;
  // ignore: use_key_in_widget_constructors
  const BubbleStories({required this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[400],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(text)
          ],
        ));
  }
}
