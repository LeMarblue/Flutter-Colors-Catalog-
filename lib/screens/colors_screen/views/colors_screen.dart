import 'package:flutter/material.dart';
import 'package:flutter_colors_catalog/core/named_routes.dart';
import 'package:flutter_colors_catalog/screens/final_screen/models/final_sceen_arguments.dart';

class ColorsScreen extends StatelessWidget {
  ColorsScreen({
    this.title,
    this.colors,
  });

  final String title;
  final List<Color> colors;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(
                NamedRoutes.endScreen,
                arguments: FinalScreenArguments(
                  colors[index],
                ),
              );
              // Navigator.of(context).push(
              //   MaterialPageRoute(builder: (context) {
              //     return FinalScreen(
              //       color: Colors.primaries[index],
              //     );
              //   }),
              // );
            },
            child: Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width,
              color: colors[index],
            ),
          );
        },
      ),
    );
  }
}
