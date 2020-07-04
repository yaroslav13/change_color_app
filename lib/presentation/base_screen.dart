import 'package:flutter/material.dart';

abstract class BaseScreen extends StatefulWidget {
  BaseScreen({Key key}) : super(key: key);
}

abstract class BaseState<T extends BaseScreen> extends State<T> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor(),
      body: body(),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget body();

  Color backgroundColor() => null;
}
