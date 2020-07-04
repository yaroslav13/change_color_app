import 'package:changecolorapp/presentation/change_color_screen.dart';
import 'package:changecolorapp/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (_context, navigator) {
        return Theme(
          data: _appTheme(_context),
          child: navigator,
        );
      },
      home: ChangeColorScreen(),
    );
  }

  _appTheme(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return ThemeData(
        fontFamily: 'Como',
        scaffoldBackgroundColor: AppColors.background,
        textTheme: _textTheme()
    );
  }

  TextTheme _textTheme() {
    return TextTheme(
      bodyText1: TextStyle(
          color: AppColors.onPrimary,
          fontSize: 24.0,
          fontWeight: FontWeight.bold),
    );
  }

}


