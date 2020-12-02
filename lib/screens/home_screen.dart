import 'package:flutter/material.dart';
import 'package:flutter_colors_catalog/core/named_routes.dart';
import 'package:flutter_colors_catalog/screens/colors_screen/models/colors_screen_arguments.dart';

class HomeScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn Flutter'),
        backgroundColor: Colors.black,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              splashColor: Colors.black,
              child: Container(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width * .75,
                child: Center(
                  child: Text(
                    'Primaries',
                    style: TextStyle(
                      fontSize: 35.0,
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.of(context).pushNamed(
                  NamedRoutes.colorsScreen,
                  arguments: ColorsScreenArguments(
                    title: 'Primaries',
                    colors: Colors.primaries,
                  ),
                );
              },
            ),
            InkWell(
              splashColor: Colors.black,
              child: Container(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width * .75,
                child: Center(
                    child: Text(
                  'Accents',
                  style: TextStyle(
                    fontSize: 35.0,
                  ),
                )),
              ),
              onTap: () {
                Navigator.of(context).pushNamed(
                  NamedRoutes.colorsScreen,
                  arguments: ColorsScreenArguments(
                    title: 'Accents',
                    colors: Colors.accents,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
