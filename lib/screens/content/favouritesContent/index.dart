import 'package:flutter/material.dart';

// google fonts
import 'package:google_fonts/google_fonts.dart';

// colors
import 'package:app/theme/colors.dart';

// qr code
import 'package:qr_flutter/qr_flutter.dart';

// toast
import 'package:fluttertoast/fluttertoast.dart';

// route
import 'package:app/theme/routing/routing_constants.dart';

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

  void showToast(msg) => Fluttertoast.showToast(
    msg: msg,
    fontSize: 15
  );

  // data
  List<Map<String, dynamic>> favourites = [
    {
      'title': 'The White Hart - 0.1 mile',
      'timeFrom': '10am',
      'timeTo': '5pm',
      'offer': 'Bottomless coffee when ordering lunch',
      'offerType': 'qr',
      'offerCode': 'testqrcode',
      'isFav': true,
    },
    {
      'title': 'The new lagoon - 0.2 mile',
      'timeFrom': '9am',
      'timeTo': '4pm',
      'offer': 'Free food one time',
      'offerType': 'code',
      'offerCode': 'GETITNOW',
      'isFav': true,
    }
  ];

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
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        itemCount: favourites.length,
        itemBuilder: (context, index) {
          final item = favourites[index];

          return InkWell( // item start
            splashColor: Colors.transparent,
            borderRadius: BorderRadius.circular(5),
            onTap: () => Navigator.pushNamed(context, vendorViewScreenRoute),
            child: Container(
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Container(
                padding: const EdgeInsets.only(bottom: 10),
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
                            item['title'],
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
                                  item['timeFrom'] + ' - ' + item['timeTo'],
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
                                  item['offer'],
                                  style: descTextStyles,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 7),
                          if (item['offerType'] == 'qr') ...[
                            InkWell(
                              splashColor: Colors.transparent,
                              onTap: () => showModalBottomSheet(
                                // enableDrag: false,
                                // isDismissible: false,
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                context: context,
                                builder: (context) => qrCodeBottomSheet(item['offerCode']),
                              ),
                              borderRadius: BorderRadius.circular(5),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                                child: Text(
                                  'QR CODE',
                                  style: itemHeadingStyles,
                                ),
                              ),
                            ),
                          ] else ...[
                            InkWell(
                              splashColor: Colors.transparent,
                              onTap: () => showModalBottomSheet(
                                // enableDrag: false,
                                // isDismissible: false,
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                context: context,
                                builder: (context) => codeBottomSheet(item['offerCode']),
                              ),
                              borderRadius: BorderRadius.circular(5),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                                child: Text(
                                  'CODE',
                                  style: itemHeadingStyles,
                                ),
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: IconButton(
                        splashColor: Colors.transparent,
                        onPressed: () {
                          showToast(
                            (item['isFav'] == true) ? 'Removed from favourites' : 'Added to favourites'
                          );

                          setState(() {
                            item['isFav'] = !item['isFav'];
                          });
                        },
                        icon: Icon(
                          (item['isFav'] == true) ? Icons.bookmark : Icons.bookmark_outline,
                          size: 30,
                          color: appPrimaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  // qr modal
  Widget qrCodeBottomSheet(qrCode) => Container(
    padding: const EdgeInsets.only(top: 50),
    child: Container(
      padding: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
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
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
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
