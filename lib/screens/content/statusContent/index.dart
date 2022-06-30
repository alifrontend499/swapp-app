import 'package:flutter/material.dart';

// google fonts
import 'package:google_fonts/google_fonts.dart';

class StatusContent extends StatefulWidget {
  const StatusContent({Key? key}) : super(key: key);

  @override
  State<StatusContent> createState() => _StatusContentState();
}

class _StatusContentState extends State<StatusContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Status'),
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
