import 'package:flutter/material.dart';
import 'package:flutter_sample/constants.dart';

class ScreenOne extends StatelessWidget {
  final Widget mobileLayout;
  final Widget webLayout;
  const ScreenOne(
      {super.key, required this.mobileLayout, required this.webLayout});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //! BODY
        body: LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < AppConstants.mobileSize) {
        return mobileLayout;
      } else {
        return webLayout;
      }
    }));
  }
}
