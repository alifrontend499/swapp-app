import 'package:flutter/material.dart';

// route
import 'package:app/theme/routing/routing_constants.dart';

// google fonts
import 'package:google_fonts/google_fonts.dart';

// colors
import 'package:app/theme/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isPasswordVisible = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  // btns
  final btnStylesFacebook = ElevatedButton.styleFrom(
    minimumSize: const Size(260, 43),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40)
    ),
    primary: btnColorFacebook,
    onPrimary: Colors.white,
    textStyle: GoogleFonts.montserrat(
        textStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600
        )
    ),
  );
  final btnStylesGoogle = ElevatedButton.styleFrom(
    minimumSize: const Size(260, 43),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40)
    ),
    primary: btnColorGoogle,
    onPrimary: Colors.white,
    textStyle: GoogleFonts.montserrat(
        textStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600
        )
    ),
  );
  final btnStylesApple = ElevatedButton.styleFrom(
    minimumSize: const Size(260, 43),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40)
    ),
    primary: btnColorApple,
    onPrimary: Colors.white,
    textStyle: GoogleFonts.montserrat(
        textStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600
        )
    ),
  );

  final btnStylesSubmit = ElevatedButton.styleFrom(
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

  final orTextStyles = GoogleFonts.montserrat(
    fontSize: 17,
    fontWeight: FontWeight.w700
  );

  final labelTextStyles = GoogleFonts.montserrat(
    fontSize: 14,
    fontWeight: FontWeight.w600
  );

  final additionalTextStyles = GoogleFonts.montserrat(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    color: appTextColorPrimary,
    letterSpacing: 2
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Login'),
        titleTextStyle: GoogleFonts.montserrat(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.black
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                    onPressed: () { },
                    child: const Text('Continue with Facebook'),
                    style: btnStylesFacebook,
                  ),
                  const SizedBox(height: 10),

                  ElevatedButton(
                    onPressed: () { },
                    child: const Text('Continue with Google'),
                    style: btnStylesGoogle,
                  ),
                  const SizedBox(height: 10),

                  ElevatedButton(
                    onPressed: () { },
                    child: const Text('Continue with Apple'),
                    style: btnStylesApple,
                  ),
                  const SizedBox(height: 40),

                  Text(
                    'OR',
                    style: orTextStyles,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 60),

                  Text(
                    'Email Address',
                    style: labelTextStyles,
                  ),
                  const SizedBox(height: 5),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: const BorderSide(color: Colors.red, width: 2.0)
                      ),
                      contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                    ),
                  ),
                  const SizedBox(height: 15),

                  Text(
                    'Password',
                    style: labelTextStyles,
                  ),
                  const SizedBox(height: 5),
                  TextField(
                    obscureText: isPasswordVisible,
                    decoration: InputDecoration(
                      hintText: 'Enter your password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: const BorderSide(color: Colors.red, width: 1)
                      ),
                      contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isPasswordVisible = !isPasswordVisible;
                          });
                        },
                        icon: isPasswordVisible
                            ? const Icon(Icons.visibility_off)
                            : const Icon(Icons.visibility),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, contentMainScreenRoute),
                    child: const Text('Log In'),
                    style: btnStylesSubmit,
                  ),
                  const SizedBox(height: 40),

                  GestureDetector(
                    child: Text(
                      'Forgot Password?',
                      style: additionalTextStyles,
                      textAlign: TextAlign.center,
                    ),
                    onTap: () => Navigator.pushNamed(context, forgotPasswordScreenRoute),
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    child: Text(
                      'Create Account',
                      style: additionalTextStyles,
                      textAlign: TextAlign.center,
                    ),
                    onTap: () => Navigator.pushNamed(context, signupScreenRouteStep1),
                  ),
                  const SizedBox(height: 15),
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}
