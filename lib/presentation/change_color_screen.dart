import 'dart:math';

import 'package:changecolorapp/presentation/base_screen.dart';
import 'package:changecolorapp/resources/app_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChangeColorScreen extends BaseScreen {
  @override
  _ChangeColorScreenState createState() => _ChangeColorScreenState();
}

class _ChangeColorScreenState extends BaseState<ChangeColorScreen> {
  Random _random;
  Color _currentColor;

  @override
  void initState() {
    super.initState();
    _random = Random();
  }

  @override
  Widget body() => GestureDetector(
      onTap: () => _handleTap(), child: _Body(backgroundColor: _currentColor));

  @override
  Color backgroundColor() => null;

  @override
  void dispose() {
    super.dispose();
  }

  void _handleTap() {
    setState(() => _currentColor =
        Colors.primaries[_random.nextInt(Colors.primaries.length)]);
  }
}

class _Body extends StatefulWidget {
  final Color backgroundColor;

  const _Body({Key key, this.backgroundColor}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  static const Color _defaultColor = Colors.transparent;
  Color _backgroundColor;

  @override
  void initState() {
    super.initState();
    _backgroundColor = widget.backgroundColor ?? _defaultColor;
  }

  @override
  void didUpdateWidget(_Body oldWidget) {
    super.didUpdateWidget(oldWidget);
    _backgroundColor = widget.backgroundColor ?? _defaultColor;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: _backgroundColor,
      child: Center(
        child: Text(AppStrings.heyThere,
            style: Theme.of(context).textTheme.bodyText1),
      ),
    );
  }
}
