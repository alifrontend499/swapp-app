import 'dart:io';

import 'package:flutter/material.dart';

// route
import 'package:app/theme/routing/routing_constants.dart';
import 'package:flutter/services.dart';

// google fonts
import 'package:google_fonts/google_fonts.dart';

// colors
import 'package:app/theme/colors.dart';
import 'package:image_picker/image_picker.dart';

class SignupStepThreeScreen extends StatefulWidget {
  const SignupStepThreeScreen({Key? key}) : super(key: key);

  @override
  State<SignupStepThreeScreen> createState() => _SignupStepThreeScreenState();
}

class _SignupStepThreeScreenState extends State<SignupStepThreeScreen> {

  // -----styles
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

  final btnStylesUpload = ElevatedButton.styleFrom(
    fixedSize: const Size.fromHeight(43),
    maximumSize: const Size.fromWidth(200),
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

  // -----functions
  // IMAGE PICKER
  File? image;
  Future imgPickerFromPhotos() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if(image == null) return;
      
      final imageTemp = File(image.path);
      setState(() {
        this.image = imageTemp;
      });
    } catch(e) {
      print('Failed to pick image: $e');
    }
  }

  Future imgPickerFromCamera() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if(image == null) return;

      final imageTemp = File(image.path);
      setState(() {
        this.image = imageTemp;
      });
    } on PlatformException catch(e) {
      print('Failed to pick image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  // flex: 1,
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      children: [
                        Text(
                          'Upload profile image',
                          style: additionalTextStyles,
                        ),
                        const SizedBox(height: 15),

                        ElevatedButton(
                          onPressed: () => imgPickerFromPhotos(),
                          child: const Text('Photos'),
                          style: btnStylesUpload,
                        ),
                        const SizedBox(height: 15),

                        ElevatedButton(
                          onPressed: () => imgPickerFromCamera(),
                          child: const Text('Camera'),
                          style: btnStylesUpload,
                        ),
                        const SizedBox(height: 15),

                        Stack(
                          children: [
                            image != null ? ClipRRect (
                              borderRadius: BorderRadius.circular(10.0),
                              child: (
                                  Image.file(
                                    image!,
                                    height: 300,
                                    fit: BoxFit.cover,
                                  )
                              )
                            ) : const SizedBox(),

                            Positioned(
                              top: 5,
                              right: 5,
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    image = null;
                                  });
                                },
                                icon: const Icon(
                                  Icons.close,
                                  color: Colors.white,
                                ),
                                iconSize: 30,
                              ),
                            )
                          ],
                        )
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
                          '3 of 5',
                          style: progressTextStyle,
                          textAlign: TextAlign.right,
                        ),
                        const SizedBox(height: 10),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: const LinearProgressIndicator(
                            color: appProgressBarType1BarColor,
                            value: 3 / 5,
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
                        onPressed: () => Navigator.pushNamed(context, signupScreenRouteStep4),
                        child: const Text('Next Step'),
                        style: btnStylesSubmit,
                      ),
                    ),
                  ],
                ),
              ],
          ),
      ),
    );
  }
}