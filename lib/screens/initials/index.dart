import 'package:flutter/material.dart';

// route
import 'package:app/theme/routing/routing_constants.dart';

// google fonts
import 'package:google_fonts/google_fonts.dart';

// colors
import 'package:app/theme/colors.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  // styles
  final textStyles = GoogleFonts.montserrat(
      textStyle: const TextStyle(
        decoration: TextDecoration.none,
        fontSize: 21,
        color: Colors.white,
        fontWeight: FontWeight.w600,
        letterSpacing: 3
      )
  );
  final btnStylesPrimary = ElevatedButton.styleFrom(
    minimumSize: const Size(260, 43),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(40)
    ),
    primary: appPrimaryBtnColor,
    onPrimary: appPrimaryBtnColorOnPrimary,
    textStyle: GoogleFonts.montserrat(
        textStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600
        )
    ),
  );
  final btnStylesSecondary = ElevatedButton.styleFrom(
    minimumSize: const Size(260, 43),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40)
    ),
    primary: appWhiteBtnColor,
    onPrimary: appWhiteBtnColorOnPrimary,
    textStyle: GoogleFonts.montserrat(
        textStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600
        )
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/pages/login-and-signup/login-signup-bg.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black26,
                  BlendMode.darken
              ),
            )
        ),
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('assets/icons/icon-only.png'),
              height: 130,
            ),
            const SizedBox(height: 70),
            Text(
              'Welcome to SWAPP',
              style: textStyles,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, loginScreenRoute);
              },
              child: const Text('Log In'),
              style: btnStylesPrimary,
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, signupScreenRoute);
              },
              child: const Text('Sign Up'),
              style: btnStylesSecondary,
            ),
          ],
        )
    );
  }
}
