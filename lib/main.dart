import 'package:flutter/material.dart';
import 'package:flutter_colors_catalog/core/app_router.dart';
import 'package:flutter_colors_catalog/core/named_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext buildContext) {
    var router = AppRouter();

    return MaterialApp(
      title: 'Color Catalog',
      routes: router.routes,
      initialRoute: NamedRoutes.homeScreen,
    );
  }
}
