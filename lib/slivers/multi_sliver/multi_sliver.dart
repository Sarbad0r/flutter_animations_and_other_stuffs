import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

class SliverSection extends MultiSliver {
  SliverSection(
      {Key? key,
      required String title,
      Color headerColor = Colors.white,
      Color titleColor = Colors.black,
      required List<Widget> items})
      //what ever you put in your children parameter would stick after each other
      : super(key: key, pushPinnedChildren: false, children: items);
}
