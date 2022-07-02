import 'package:flutter/material.dart';
import 'package:app/screens/content/messagesContent/messagesView/rightMenu/modal/menu_item.dart';


class MenuItems {
  static const List<MenuItem> allMenuItems = [
    itemBlock,
    itemReport
  ];

  static const itemBlock = MenuItem(
    text: 'Block',
    icon: Icons.block,
  );

  static const itemReport = MenuItem(
    text: 'Report',
    icon: Icons.thumb_down_off_alt_outlined,
  );
}