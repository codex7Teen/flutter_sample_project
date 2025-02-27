import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    final _screenWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      //! BODY
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: Text(_screenWidth.round().toString(),
                  style: GoogleFonts.bebasNeue(letterSpacing: 1, fontSize: 30)))
        ],
      ),
    );
  }
}
