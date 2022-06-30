import 'package:flutter/material.dart';

// google fonts
import 'package:google_fonts/google_fonts.dart';

class SpotsContent extends StatefulWidget {
  const SpotsContent({Key? key}) : super(key: key);

  @override
  State<SpotsContent> createState() => _SpotsContentState();
}

class _SpotsContentState extends State<SpotsContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Spots'),
        titleTextStyle: GoogleFonts.montserrat(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black
        ),
        centerTitle: true,
        leading: null,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
    );
  }
}
