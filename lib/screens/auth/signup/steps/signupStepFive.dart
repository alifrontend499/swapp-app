import 'package:flutter/material.dart';

// route
import 'package:app/theme/routing/routing_constants.dart';

// google fonts
import 'package:google_fonts/google_fonts.dart';

// colors
import 'package:app/theme/colors.dart';

class SignupStepFiveScreen extends StatefulWidget {
  const SignupStepFiveScreen({Key? key}) : super(key: key);

  @override
  State<SignupStepFiveScreen> createState() => _SignupStepFiveScreenState();
}

class _SignupStepFiveScreenState extends State<SignupStepFiveScreen> {
  final additionalTextStyles = GoogleFonts.montserrat(
      fontSize: 22,
      fontWeight: FontWeight.w600,
      color: Colors.black
  );

  final btnStylesSubmit = ElevatedButton.styleFrom(
    // fixedSize: const Size.fromHeight(43),
    minimumSize: const Size(double.infinity, 43),
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

  final progressTextStyle = GoogleFonts.montserrat(
      fontSize: 17,
      fontWeight: FontWeight.w600,
      color: Colors.black
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Sign Up'),
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
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Payment',
                            style: additionalTextStyles,
                          ),
                          const SizedBox(height: 15),

                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Name on Card',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40),
                                  borderSide: const BorderSide(color: Colors.red, width: 2.0)
                              ),
                              contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                            ),
                          ),
                          const SizedBox(height: 10),

                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Card Details',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40),
                                  borderSide: const BorderSide(color: Colors.red, width: 2.0)
                              ),
                              contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                            ),
                          ),
                          const SizedBox(height: 10),

                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Expiry CVV',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40),
                                  borderSide: const BorderSide(color: Colors.red, width: 2.0)
                              ),
                              contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            '5 of 5',
                            style: progressTextStyle,
                            textAlign: TextAlign.right,
                          ),
                          const SizedBox(height: 10),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: const LinearProgressIndicator(
                              color: appProgressBarType1BarColor,
                              value: 5 / 5,
                              backgroundColor: appProgressBarType1BgColor,
                              minHeight: 10,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: ElevatedButton(
                          onPressed: () { },
                          child: const Text('Complete Sign Up'),
                          style: btnStylesSubmit,
                        ),
                      ),
                    ],
                  )
                ],
              ),
        ),
      ),
    );
  }
}
