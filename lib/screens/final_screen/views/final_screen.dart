import 'package:flutter/material.dart';
import 'package:flutter_colors_catalog/screens/final_screen/models/final_sceen_arguments.dart';

class FinalScreen extends StatelessWidget {
  FinalScreen({
    this.color,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Final'),
        backgroundColor: color,
      ),
      body: Center(
        child: Text(
          'The End!',
          style: TextStyle(
            fontSize: 50.0,
            color: color,
          ),
        ),
      ),
    );
  }
}
