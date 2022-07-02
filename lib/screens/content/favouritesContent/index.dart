import 'package:flutter/material.dart';

// google fonts
import 'package:google_fonts/google_fonts.dart';

// colors
import 'package:app/theme/colors.dart';

// qr code
import 'package:qr_flutter/qr_flutter.dart';

class FavouritesContent extends StatefulWidget {
  const FavouritesContent({Key? key}) : super(key: key);

  @override
  State<FavouritesContent> createState() => _FavouritesContentState();
}

class _FavouritesContentState extends State<FavouritesContent> {
  // styles
  final itemHeadingStyles = GoogleFonts.montserrat(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: appTextColorPrimary,
  );
  final descTextBoldStyles = GoogleFonts.montserrat(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
  final descTextStyles = GoogleFonts.montserrat(
    fontSize: 16,
  );
  final qrCodeStyles = GoogleFonts.montserrat(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
  final codeStyles = GoogleFonts.montserrat(
    fontSize: 25,
    fontWeight: FontWeight.w600,
    letterSpacing: 7
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourites'),
        titleTextStyle: GoogleFonts.montserrat(
            fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
        centerTitle: true,
        leading: null,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        children: [
          InkWell(
            // item start
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Container(
                padding: const EdgeInsets.only(bottom: 20),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1, color: Colors.black38),
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
                            style: itemHeadingStyles,
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
                          const SizedBox(height: 7),
                          InkWell(
                            onTap: () => showModalBottomSheet(
                              enableDrag: false,
                              isDismissible: false,
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (context) => qrCodeBottomSheet('testqr'),
                            ),
                            borderRadius: BorderRadius.circular(5),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 3, horizontal: 5),
                              child: Text(
                                'QR CODE',
                                style: itemHeadingStyles,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(
                        Icons.bookmark,
                        size: 30,
                        color: appPrimaryColor,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),

          InkWell(
            // item start
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Container(
                padding: const EdgeInsets.only(bottom: 20),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1, color: Colors.black38),
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
                            style: itemHeadingStyles,
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
                          const SizedBox(height: 7),
                          InkWell(
                            onTap: () => showModalBottomSheet(
                              enableDrag: false,
                              isDismissible: false,
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (context) => qrCodeBottomSheet('Data 2'),
                            ),
                            borderRadius: BorderRadius.circular(5),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 3, horizontal: 5),
                              child: Text(
                                'QR CODE',
                                style: itemHeadingStyles,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(
                        Icons.bookmark_outline,
                        size: 30,
                        color: appPrimaryColor,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),

          InkWell(
            // item start
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Container(
                padding: const EdgeInsets.only(bottom: 20),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1, color: Colors.black38),
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
                            style: itemHeadingStyles,
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
                          const SizedBox(height: 7),
                          InkWell(
                            onTap: () => showModalBottomSheet(
                              enableDrag: false,
                              isDismissible: false,
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (context) => codeBottomSheet('FREECODE'),
                            ),
                            borderRadius: BorderRadius.circular(5),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 3, horizontal: 5),
                              child: Text(
                                'CODE',
                                style: itemHeadingStyles,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(
                        Icons.bookmark,
                        size: 30,
                        color: appPrimaryColor,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),

          InkWell(
            // item start
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Container(
                padding: const EdgeInsets.only(bottom: 20),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1, color: Colors.black38),
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
                            style: itemHeadingStyles,
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
                          const SizedBox(height: 7),
                          InkWell(
                            onTap: () => showModalBottomSheet(
                              enableDrag: false,
                              isDismissible: false,
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (context) => codeBottomSheet('GETITNOW'),
                            ),
                            borderRadius: BorderRadius.circular(5),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 3, horizontal: 5),
                              child: Text(
                                'CODE',
                                style: itemHeadingStyles,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(
                        Icons.bookmark_outline,
                        size: 30,
                        color: appPrimaryColor,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }

  // qr modal
  Widget qrCodeBottomSheet(qrCode) => Container(
    padding: const EdgeInsets.only(top: 50),
    child: Container(
      color: Colors.white,
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(Icons.close, size: 30),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: QrImage(
                    data: qrCode,
                    size: 270,
                  ),
                ),
                const SizedBox(height: 15),

                Text(
                  'To get your offer, please ask the owner to scan the code',
                  textAlign: TextAlign.center,
                  style: qrCodeStyles,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );

  // code modal
  Widget codeBottomSheet(code) => Container(
    padding: const EdgeInsets.only(top: 50),
    child: Container(
      color: Colors.white,
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(Icons.close, size: 30),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: appPrimaryColor,
                  ),
                  width: 300,
                  child: Text(
                    code,
                    textAlign: TextAlign.center,
                    style: codeStyles,
                  ),
                ),
                const SizedBox(height: 15),

                Text(
                  'you can show this code to the owner, to get your offer',
                  textAlign: TextAlign.center,
                  style: qrCodeStyles,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
