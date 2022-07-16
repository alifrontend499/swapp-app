import 'package:flutter/material.dart';

// colors
import 'package:app/theme/colors.dart';

// content screens
import 'package:app/screens/content/messagesContent/index.dart';
import 'package:app/screens/content/favouritesContent/index.dart';
import 'package:app/screens/content/mapContent/index.dart';
import 'package:app/screens/content/spotsContent/index.dart';

class ContentMainScreen extends StatefulWidget {
  const ContentMainScreen({Key? key}) : super(key: key);

  @override
  State<ContentMainScreen> createState() => _ContentMainScreenState();
}

class _ContentMainScreenState extends State<ContentMainScreen> {
  int currentIndex = 0;
  final screens= [
    const MapContent(),
    const MessagesContent(),
    const FavouritesContent(),
    const SpotsContent(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // IconButton(
      //   icon: const Icon(Icons.menu),
      //   color: Colors.black,
      //   onPressed: () { },
      // )
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        unselectedItemColor: Colors.black,
        selectedItemColor: appPrimaryColor,
        items: const [
          BottomNavigationBarItem(
              label: "Map",
              icon: Icon(Icons.map_outlined)
          ),

          BottomNavigationBarItem(
            label: "Messages",
            icon: Icon(Icons.chat_bubble_outline),
          ),

          BottomNavigationBarItem(
            label: "Favourites",
            icon: Icon(Icons.bookmark_outline)
          ),

          BottomNavigationBarItem(
              label: "SWAPP Spots",
              icon: Icon(Icons.computer)
          ),
        ],
      ),
    );

  }
}
