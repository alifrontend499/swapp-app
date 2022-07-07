import 'package:flutter/material.dart';

// google fonts
import 'package:google_fonts/google_fonts.dart';

// colors
import 'package:app/theme/colors.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  // styles
  final userNameStyles = GoogleFonts.montserrat(
    fontSize: 17,
    fontWeight: FontWeight.w600
  );

  final headTextStyles = GoogleFonts.montserrat(
    fontSize: 17,
    fontWeight: FontWeight.w700
  );
  final linkTextStyles = GoogleFonts.montserrat(
    fontSize: 15,
    color: appTextColorPrimary
  );
  final descTextStyles = GoogleFonts.montserrat(
    fontSize: 17,
  );

  // vars
  String userImgSrc = 'https://static.remove.bg/remove-bg-web/ea4eaf12fdb825d09a927ec03bfcfc723af95931/assets/start-1abfb4fe2980eabfbbaaa4365a0692539f7cd2725f324f904565a9a744f8e214.jpg';
  String userName = 'Chris MitchellChris';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Profile'),
        titleTextStyle: GoogleFonts.montserrat(
            fontSize: 17, fontWeight: FontWeight.w600, color: Colors.black),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        // automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
            child: Column(
              children: [
                ClipRRect(
                  child: Image.network(
                    userImgSrc,
                    height: 60,
                    width: 60,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(65.0),
                ),
                const SizedBox(height: 15),
                Text(
                    userName,
                    style: userNameStyles,
                    textAlign: TextAlign.center
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),

          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(top: 30, left: 40, right: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Name',
                            style: headTextStyles,
                          ),
                          const SizedBox(width: 20),

                          InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(5),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                              child: Text(
                                'Edit',
                                style: linkTextStyles,
                              ),
                            ),
                          ),

                        ],
                      ),
                      const SizedBox(height: 5),

                      Text(
                        'Ted Mayborn',
                        style: descTextStyles,
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Title',
                            style: headTextStyles,
                          ),
                          const SizedBox(width: 20),

                          InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(5),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                              child: Text(
                                'Edit',
                                style: linkTextStyles,
                              ),
                            ),
                          ),

                        ],
                      ),
                      const SizedBox(height: 5),

                      Text(
                        'Project Manager',
                        style: descTextStyles,
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Industry',
                            style: headTextStyles,
                          ),
                          const SizedBox(width: 20),

                          InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(5),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                              child: Text(
                                'Edit',
                                style: linkTextStyles,
                              ),
                            ),
                          ),

                        ],
                      ),
                      const SizedBox(height: 5),

                      Text(
                        'Healthcare',
                        style: descTextStyles,
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Status',
                            style: headTextStyles,
                          ),
                          const SizedBox(width: 20),

                          InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(5),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                              child: Text(
                                'Edit',
                                style: linkTextStyles,
                              ),
                            ),
                          ),

                        ],
                      ),
                      const SizedBox(height: 5),

                      Text(
                        '',
                        style: descTextStyles,
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Subscription',
                            style: headTextStyles,
                          ),
                          const SizedBox(width: 20),

                          InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(5),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                              child: Text(
                                'Edit',
                                style: linkTextStyles,
                              ),
                            ),
                          ),

                        ],
                      ),
                      const SizedBox(height: 5),

                      Text(
                        '£4,99 / month',
                        style: descTextStyles,
                      ),
                      const SizedBox(height: 5),

                      Text(
                        '**** **** **** 4345',
                        style: descTextStyles,
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
