import 'package:flutter/material.dart';

class Res extends StatelessWidget {
  final Widget mobaile;
  final Widget tablet;
  final Widget windows;

  Res({
    required this.mobaile,
    required this.tablet,
    required this.windows,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 500) {
          return mobaile;
        } else if (constraints.maxWidth < 1100) {
          return tablet;
        } else {
          return windows;
        }
      },
    );
  }
}
