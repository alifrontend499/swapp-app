import 'package:flutter/material.dart';

// colors
import 'package:app/theme/colors.dart';

// toast
import 'package:fluttertoast/fluttertoast.dart';

// google fonts
import 'package:google_fonts/google_fonts.dart';

import 'package:carousel_slider/carousel_slider.dart';


class VendorViewScreen extends StatefulWidget {
  const VendorViewScreen({Key? key}) : super(key: key);

  @override
  State<VendorViewScreen> createState() => _VendorViewScreenState();
}

class _VendorViewScreenState extends State<VendorViewScreen> {

  final vendorNameStyles = GoogleFonts.montserrat(
    fontSize: 17,
    fontWeight: FontWeight.w500,
    color: appTextColorPrimary,
  );
  final vendorTimeStyles = GoogleFonts.montserrat(
    fontSize: 17,
  );
  final vendorDetailsStyles = GoogleFonts.montserrat(
    fontSize: 15,
    color: appTextColorPrimary,
  );
  final pageHeadingStyles = GoogleFonts.montserrat(
    fontSize: 17,
    fontWeight: FontWeight.w700,
  );

  // functions
  void showToast(msg) => Fluttertoast.showToast(
      msg: msg,
      fontSize: 15
  );

  // data
  List<String> sliderImages = [
    'https://jssors8.azureedge.net/demos/image-slider/img/faded-monaco-scenery-evening-dark-picjumbo-com-image.jpg',
    'https://wowslider.com/sliders/demo-51/data1/images/car.jpg',
    'https://jssors8.azureedge.net/demos/image-slider/img/px-fun-man-person-2361598-image.jpg',
    'https://jssors8.azureedge.net/demos/image-slider/img/px-beach-daylight-fun-1430675-image.jpg'
  ];

  Map<String, dynamic> vendorData = {
    'vendorImg': 'https://i.pinimg.com/originals/8b/16/7a/8b167af653c2399dd93b952a48740620.jpg',
    'vendorName': '69 Westow Hill, Norwood, London SE19 1TX',
    'timeFrom': '10am',
    'timeTo': '06pm',
    'vendorContactNumber': '020 876 11330',
    'vendorEmailAddress': 'info@telltale.co.uk',
    'isFav': false,
  };

  List<String> offers = [
    'Free WiFi',
    'Serve Alcohol',
    'Pet Friendly',
    'Serve Food',
    'Outdoor Seating'
  ];

  List<Map<String, dynamic>> checkedInUsers = [
    {
      'userImg': 'https://i.pinimg.com/originals/8b/16/7a/8b167af653c2399dd93b952a48740620.jpg',
      'userName': 'Chris Mitchell',
      'userDesg': 'Solicitor, Medical Industry',
    },
    {
      'userImg': 'https://i.pinimg.com/originals/8b/16/7a/8b167af653c2399dd93b952a48740620.jpg',
      'userName': 'Olivia',
      'userDesg': 'Designer',
    },
    {
      'userImg': 'https://i.pinimg.com/originals/8b/16/7a/8b167af653c2399dd93b952a48740620.jpg',
      'userName': 'Dave',
      'userDesg': 'Media',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,

      body: Column(
        children: [
          CarouselSlider.builder(
            options: CarouselOptions(
              height: 320,
              autoPlay: true,
              disableCenter: true,
              autoPlayAnimationDuration: const Duration(seconds: 1),
              viewportFraction: 1,
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
            ),
            itemCount: sliderImages.length,
            itemBuilder: (context, index, realIndex) {
              final urlImg = sliderImages[index];
              return buildImg(urlImg, index);
            },
          ),

          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // vendor details
                  Column(
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            child: Image.network(
                              vendorData['vendorImg'],
                              height: 55,
                              width: 55,
                              fit: BoxFit.cover,
                            ),
                            // borderRadius: BorderRadius.circular(65.0),
                          ),
                          const SizedBox(width: 20),

                          Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    vendorData['vendorName'],
                                    style: vendorNameStyles,
                                  ),
                                  const SizedBox(height: 7),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Hours: ',
                                        style: vendorTimeStyles,
                                      ),
                                      Expanded(
                                          child: Text(
                                            vendorData['timeFrom'] + ' - ' + vendorData['timeTo'],
                                            style: vendorTimeStyles,
                                          )
                                      ),
                                    ],
                                  ),
                                ],
                              )
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: IconButton(
                              splashColor: Colors.transparent,
                              onPressed: () {
                                showToast(
                                    (vendorData['isFav'] == true) ? 'Removed from favourites' : 'Added to favourites'
                                );

                                setState(() {
                                  vendorData['isFav'] = !vendorData['isFav'];
                                });
                              },
                              icon: Icon(
                                (vendorData['isFav'] == true) ? Icons.bookmark : Icons.bookmark_outline,
                                size: 30,
                                color: appPrimaryColor,
                              ),
                            ),
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                      ),
                      const SizedBox(height: 10),

                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row( // contact details
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.call,
                                  size: 20,
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  vendorData['vendorContactNumber'],
                                  style: vendorDetailsStyles,
                                ),
                              ],
                            ),
                            const SizedBox(width: 15),

                            Row(
                              children: [
                                const Icon(
                                  Icons.mail,
                                  size: 20,
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  vendorData['vendorEmailAddress'],
                                  style: vendorDetailsStyles,
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Divider(
                    thickness: 1,
                    color: Colors.black45,
                  ),
                  const SizedBox(height: 15),

                  // vendor info
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'INFO',
                        style: pageHeadingStyles,
                      ),
                      const SizedBox(height: 15),

                    ],
                  ),
                  const SizedBox(height: 10),
                  const Divider(
                    thickness: 1,
                    color: Colors.black45,
                  ),
                  const SizedBox(height: 15),

                  // checked in users
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'CHECKED-IN USERS',
                        style: pageHeadingStyles,
                      ),
                      const SizedBox(height: 15),

                      // ListView.builder(
                      //   itemCount: checkedInUsers.length,
                      //   itemBuilder: (context, index) {
                      //     final item = checkedInUsers[index];
                      //
                      //     return Row(
                      //       children: [
                      //         ClipRRect(
                      //           child: Image.network(
                      //             item['userImg'],
                      //             height: 40,
                      //             width: 40,
                      //             fit: BoxFit.cover,
                      //           ),
                      //           borderRadius: BorderRadius.circular(65.0),
                      //         ),
                      //
                      //         const Text('hello')
                      //       ],
                      //     );
                      //   },
                      // ),

                    ],
                  ),
                  const SizedBox(height: 10),
                  const Divider(
                    thickness: 1,
                    color: Colors.black45,
                  ),

                ],
              ),
            )
          ),
        ],
      ),
    );
  }

  Widget buildImg(String urlImg, int index) => Container(
    color: Colors.grey,
    child: Image.network(
      urlImg,
      fit: BoxFit.cover,
    ),
  );
}
