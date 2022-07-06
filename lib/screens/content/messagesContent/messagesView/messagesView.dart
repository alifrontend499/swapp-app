import 'dart:io';
import 'package:app/screens/content/messagesContent/messagesView/rightMenu/data/menu_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// google fonts
import 'package:google_fonts/google_fonts.dart';

// colors
import 'package:app/theme/colors.dart';

// image picker
import 'package:image_picker/image_picker.dart';

// menu items
import 'package:app/screens/content/messagesContent/messagesView/rightMenu/modal/menu_item.dart';

// routes
import 'package:app/theme/routing/routing_constants.dart';

class MessagesViewScreen extends StatefulWidget {
  const MessagesViewScreen({Key? key}) : super(key: key);

  @override
  State<MessagesViewScreen> createState() => _MessagesViewScreenState();
}

class _MessagesViewScreenState extends State<MessagesViewScreen> {
  // styles
  final userNameStyles =
      GoogleFonts.montserrat(fontSize: 17, fontWeight: FontWeight.w600);
  final chatUserNameStyles = GoogleFonts.montserrat(
    fontSize: 15,
    fontWeight: FontWeight.w600,
  );
  final chatMessageStyles =
      GoogleFonts.montserrat(fontSize: 15, fontWeight: FontWeight.w500);
  final chatTimeStyles =
      GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.w600);

  File? image;
  Future imgPickerFromCamera() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;

      final imageTemp = File(image.path);
      setState(() {
        this.image = imageTemp;
      });
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Messages'),
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
        actions: [
          PopupMenuButton<MenuItem>(
            icon: const Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
            itemBuilder: (context) => [
              ...MenuItems.allMenuItems.map(buildItem).toList()
            ],
            onSelected: (item) => onSelected(context, item),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      // user details section
                      padding: const EdgeInsets.only(
                          bottom: 15, left: 15, right: 15),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: 1, color: Colors.black38),
                        ),
                      ),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () => Navigator.pushNamed(context, userProfileScreenRoute),
                            borderRadius: BorderRadius.circular(5),
                            splashColor: Colors.transparent,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                              child: Column(
                                children: [
                                  ClipRRect(
                                    child: Image.network(
                                      'https://static.remove.bg/remove-bg-web/ea4eaf12fdb825d09a927ec03bfcfc723af95931/assets/start-1abfb4fe2980eabfbbaaa4365a0692539f7cd2725f324f904565a9a744f8e214.jpg',
                                      height: 60,
                                      width: 60,
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(65.0),
                                  ),
                                  const SizedBox(height: 15),
                                  Text('Chris MitchellChris',
                                      style: userNameStyles,
                                      textAlign: TextAlign.center),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      // all chat section
                      child: ListView(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, top: 15, bottom: 10),
                        children: [
                          Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: Card(
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20),
                                    ),
                                  ),
                                  color: appPrimaryColor,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 7, horizontal: 15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Text(
                                          'Hey Chris, my name is Ted, Im heading to the Tell Tale now. Are you available for a cofee??',
                                          style: chatMessageStyles,
                                        ),
                                        // const SizedBox(height: 5),
                                        // Text(
                                        //   '10:55',
                                        //   style: chatTimeStyles,
                                        //   textAlign: TextAlign.end,
                                        // ),
                                      ],
                                    ),
                                  ),
                                ),
                              )),
                          const SizedBox(height: 5),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 25),
                                child: Card(
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      bottomRight: Radius.circular(20),
                                      bottomLeft: Radius.circular(20),
                                    ),
                                  ),
                                  color: appGreyDarkBGColor,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 7, horizontal: 15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        // Text(
                                        //   'You',
                                        //   style: chatUserNameStyles,
                                        // ),
                                        // const SizedBox(height: 5),
                                        Text(
                                          'Hey Ted, yeah sure come and join me for a coffee.',
                                          style: chatMessageStyles,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )),
                          const SizedBox(height: 5),
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: Card(
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20),
                                    ),
                                ),
                                color: appPrimaryColor,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 7, horizontal: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // Text(
                                      //   'You',
                                      //   style: chatUserNameStyles,
                                      // ),
                                      // const SizedBox(height: 5),
                                      Text(
                                        'Hey Chris, my name is Ted, Im heading to the Tell Tale now. Are you available for a cofee??',
                                        style: chatMessageStyles,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 25),
                              child: Card(
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                  ),
                                ),
                                color: appGreyDarkBGColor,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 7, horizontal: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // Text(
                                      //   'You',
                                      //   style: chatUserNameStyles,
                                      // ),
                                      // const SizedBox(height: 5),
                                      Text(
                                        'Hey Ted, yeah sure come and join me for a coffee.',
                                        style: chatMessageStyles,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: Card(
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                ),
                                color: appPrimaryColor,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 7, horizontal: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // Text(
                                      //   'You',
                                      //   style: chatUserNameStyles,
                                      // ),
                                      // const SizedBox(height: 5),
                                      Text(
                                        'Hey Chris, my name is Ted, Im heading to the Tell Tale now. Are you available for a cofee??',
                                        style: chatMessageStyles,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 25),
                              child: Card(
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                  ),
                                ),
                                color: appGreyDarkBGColor,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 7, horizontal: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // Text(
                                      //   'You',
                                      //   style: chatUserNameStyles,
                                      // ),
                                      // const SizedBox(height: 5),
                                      Text(
                                        'Hey Ted, yeah sure come and join me for a coffee.',
                                        style: chatMessageStyles,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: Card(
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                ),
                                color: appPrimaryColor,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 7, horizontal: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // Text(
                                      //   'You',
                                      //   style: chatUserNameStyles,
                                      // ),
                                      // const SizedBox(height: 5),
                                      Text(
                                        'Hey Chris, my name is Ted, Im heading to the Tell Tale now. Are you available for a cofee??',
                                        style: chatMessageStyles,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 25),
                              child: Card(
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                  ),
                                ),
                                color: appGreyDarkBGColor,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 7, horizontal: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // Text(
                                      //   'You',
                                      //   style: chatUserNameStyles,
                                      // ),
                                      // const SizedBox(height: 5),
                                      Text(
                                        'Hey Ted, yeah sure come and join me for a coffee.',
                                        style: chatMessageStyles,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 25),
                                child: Card(
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      bottomRight: Radius.circular(20),
                                      bottomLeft: Radius.circular(20),
                                    ),
                                  ),
                                  color: appGreyDarkBGColor,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 7, horizontal: 15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        // Text(
                                        //   'You',
                                        //   style: chatUserNameStyles,
                                        // ),
                                        // const SizedBox(height: 5),
                                        Text(
                                          'Hey Ted, yeah sure come and join me for a coffee.',
                                          style: chatMessageStyles,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )),
                          const SizedBox(height: 5),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // user details section
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 1, color: Colors.black38),
                  ),
                ),
                child: Row(
                  // bottom details section
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.message_outlined)),
                    Expanded(
                      // message input
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: 'Enter your email',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: const BorderSide(
                                    color: Colors.red, width: 2.0)),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 0, horizontal: 15),
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () => imgPickerFromCamera(),
                        icon: const Icon(Icons.camera_alt_outlined)),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.mic_outlined)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  
  PopupMenuItem<MenuItem> buildItem(MenuItem item) => PopupMenuItem<MenuItem>(
    value: item,
    child: Row(
      children: [
        Icon(
          item.icon,
          color: Colors.black,
          size: 20,
        ),
        const SizedBox(width: 12),
        Text(item.text),
      ],
    )
  );

  onSelected(BuildContext context, MenuItem item) {
    switch(item) {
      case MenuItems.itemReport:
        print('report pressed');
        break;

      case MenuItems.itemBlock:
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Are you sure you want to block Chris'),
            actions: [
              TextButton(
                onPressed: () {},
                child: const Text('Confirm')
              ),
            ],
          ),
        );
        break;
    }
  }
}
