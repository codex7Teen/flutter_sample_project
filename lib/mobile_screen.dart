import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenMobile extends StatelessWidget {
  const ScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'M O B I L E',
            style: GoogleFonts.bebasNeue(),
          ),
          centerTitle: true),
      backgroundColor: Colors.deepPurple,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Play area
            Padding(
              padding: const EdgeInsets.all(10),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Container(
                  height: 200,
                  color: Colors.deepPurple[400],
                ),
              ),
            ),

            // Comments
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 30,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Container(
                    height: 50,
                    color: Colors.deepPurple[400],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
