import 'package:flutter/material.dart';
import 'package:flutter_colors_catalog/core/named_routes.dart';
import 'package:flutter_colors_catalog/screens/colors_screen/models/colors_screen_arguments.dart';
import 'package:flutter_colors_catalog/screens/final_screen/models/final_sceen_arguments.dart';
import 'package:flutter_colors_catalog/screens/final_screen/views/final_screen.dart';
import 'package:flutter_colors_catalog/screens/home_screen.dart';
import 'package:flutter_colors_catalog/screens/colors_screen/views/colors_screen.dart';

class AppRouter {
  Map<String, WidgetBuilder> get routes {
    return {
      NamedRoutes.homeScreen: (context) {
        return HomeScreen();
      },
      NamedRoutes.endScreen: (context) {
        final FinalScreenArguments arguments =
            ModalRoute.of(context).settings.arguments;

        return FinalScreen(
          color: arguments.color,
        );
      },
      NamedRoutes.colorsScreen: (context) {
        final ColorsScreenArguments arguments =
            ModalRoute.of(context).settings.arguments;
        return ColorsScreen(
          colors: arguments.colors,
          title: arguments.title,
        );
      }
    };
  }
}
