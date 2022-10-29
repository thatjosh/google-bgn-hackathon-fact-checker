// ignore_for_file: file_names
import 'package:flutter/material.dart';

class TabUploadImage extends StatelessWidget {
  const TabUploadImage({required super.key});
  // Fields in a Widget subclass are always marked "final".
  // final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36.0, // in logical pixels
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      // Row is a horizontal, linear layout.
      child: Row(
        children: const [Icon(Icons.directions_transit)],
      ),
    );
  }
}
