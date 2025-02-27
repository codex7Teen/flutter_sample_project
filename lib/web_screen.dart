import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenWeb extends StatelessWidget {
  const ScreenWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'W E B S I T E',
            style: GoogleFonts.bebasNeue(),
          ),
          centerTitle: true),
      backgroundColor: Colors.deepPurple,
      body: Row(
        children: [
          //! FIRST COULUMN
          Expanded(
            child: SingleChildScrollView(
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
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 30,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
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
          ),

          //! SECOND COLUMN
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              width: 250,
              color: Colors.deepPurple[400],
            ),
          )
        ],
      ),
    );
  }
}
