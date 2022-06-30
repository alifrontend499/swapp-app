import 'package:flutter/material.dart';

// google fonts
import 'package:google_fonts/google_fonts.dart';

// colors
import 'package:app/theme/colors.dart';

class FavouritesContent extends StatefulWidget {
  const FavouritesContent({Key? key}) : super(key: key);

  @override
  State<FavouritesContent> createState() => _FavouritesContentState();
}

class _FavouritesContentState extends State<FavouritesContent> {

  // styles
  final favHeadingStyles = GoogleFonts.montserrat(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: appTextColorPrimary
  );
  final descTextBoldStyles = GoogleFonts.montserrat(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
  final descTextStyles = GoogleFonts.montserrat(
    fontSize: 16,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourites'),
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

      body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          children: [
            InkWell( // item start
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
                child: Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          width: 1,
                          color: Colors.black38
                      ),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'The White Hart - 0.1 mile ',
                              style: favHeadingStyles,
                            ),
                            const SizedBox(height: 7),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hours: ',
                                  style: descTextBoldStyles,
                                ),
                                Expanded(
                                 child: Text(
                                   '10am - 5pm',
                                   style: descTextStyles,
                                 ),
                                )
                              ],
                            ),
                            const SizedBox(height: 7),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Offer: ',
                                  style: descTextBoldStyles,
                                ),
                                Expanded(
                                  child: Text(
                                    'Bottomless coffee when ordering lunch',
                                    style: descTextStyles,
                                  ),
                                )
                              ],
                            ),
                          ],
                        )
                      ),

                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.bookmark_outline,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            InkWell( // item start
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
                child: Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          width: 1,
                          color: Colors.black38
                      ),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'The White Hart - 0.1 mile ',
                                style: favHeadingStyles,
                              ),
                              const SizedBox(height: 7),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Hours: ',
                                    style: descTextBoldStyles,
                                  ),
                                  Expanded(
                                    child: Text(
                                      '10am - 5pm',
                                      style: descTextStyles,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 7),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Offer: ',
                                    style: descTextBoldStyles,
                                  ),
                                  Expanded(
                                    child: Text(
                                      'Bottomless coffee when ordering lunch',
                                      style: descTextStyles,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          )
                      ),

                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.bookmark_outline,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            InkWell( // item start
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
                child: Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          width: 1,
                          color: Colors.black38
                      ),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'The White Hart - 0.1 mile ',
                                style: favHeadingStyles,
                              ),
                              const SizedBox(height: 7),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Hours: ',
                                    style: descTextBoldStyles,
                                  ),
                                  Expanded(
                                    child: Text(
                                      '10am - 5pm',
                                      style: descTextStyles,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 7),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Offer: ',
                                    style: descTextBoldStyles,
                                  ),
                                  Expanded(
                                    child: Text(
                                      'Bottomless coffee when ordering lunch',
                                      style: descTextStyles,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          )
                      ),

                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.bookmark_outline,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            InkWell( // item start
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
                child: Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          width: 1,
                          color: Colors.black38
                      ),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'The White Hart - 0.1 mile ',
                                style: favHeadingStyles,
                              ),
                              const SizedBox(height: 7),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Hours: ',
                                    style: descTextBoldStyles,
                                  ),
                                  Expanded(
                                    child: Text(
                                      '10am - 5pm',
                                      style: descTextStyles,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 7),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Offer: ',
                                    style: descTextBoldStyles,
                                  ),
                                  Expanded(
                                    child: Text(
                                      'Bottomless coffee when ordering lunch',
                                      style: descTextStyles,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          )
                      ),

                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.bookmark_outline,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            InkWell( // item start
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
                child: Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          width: 1,
                          color: Colors.black38
                      ),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'The White Hart - 0.1 mile ',
                                style: favHeadingStyles,
                              ),
                              const SizedBox(height: 7),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Hours: ',
                                    style: descTextBoldStyles,
                                  ),
                                  Expanded(
                                    child: Text(
                                      '10am - 5pm',
                                      style: descTextStyles,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 7),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Offer: ',
                                    style: descTextBoldStyles,
                                  ),
                                  Expanded(
                                    child: Text(
                                      'Bottomless coffee when ordering lunch',
                                      style: descTextStyles,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          )
                      ),

                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.bookmark_outline,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            InkWell( // item start
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
                child: Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          width: 1,
                          color: Colors.black38
                      ),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'The White Hart - 0.1 mile ',
                                style: favHeadingStyles,
                              ),
                              const SizedBox(height: 7),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Hours: ',
                                    style: descTextBoldStyles,
                                  ),
                                  Expanded(
                                    child: Text(
                                      '10am - 5pm',
                                      style: descTextStyles,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 7),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Offer: ',
                                    style: descTextBoldStyles,
                                  ),
                                  Expanded(
                                    child: Text(
                                      'Bottomless coffee when ordering lunch',
                                      style: descTextStyles,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          )
                      ),

                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.bookmark_outline,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            InkWell( // item start
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
                child: Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          width: 1,
                          color: Colors.black38
                      ),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'The White Hart - 0.1 mile ',
                                style: favHeadingStyles,
                              ),
                              const SizedBox(height: 7),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Hours: ',
                                    style: descTextBoldStyles,
                                  ),
                                  Expanded(
                                    child: Text(
                                      '10am - 5pm',
                                      style: descTextStyles,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 7),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Offer: ',
                                    style: descTextBoldStyles,
                                  ),
                                  Expanded(
                                    child: Text(
                                      'Bottomless coffee when ordering lunch',
                                      style: descTextStyles,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          )
                      ),

                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.bookmark_outline,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            InkWell( // item start
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
                child: Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          width: 1,
                          color: Colors.black38
                      ),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'The White Hart - 0.1 mile ',
                                style: favHeadingStyles,
                              ),
                              const SizedBox(height: 7),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Hours: ',
                                    style: descTextBoldStyles,
                                  ),
                                  Expanded(
                                    child: Text(
                                      '10am - 5pm',
                                      style: descTextStyles,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 7),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Offer: ',
                                    style: descTextBoldStyles,
                                  ),
                                  Expanded(
                                    child: Text(
                                      'Bottomless coffee when ordering lunch',
                                      style: descTextStyles,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          )
                      ),

                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.bookmark_outline,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

          ],
        )
    );
  }
}
