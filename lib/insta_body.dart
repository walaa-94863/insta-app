// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'insta_list.dart';

class InstaBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        //Expanded(flex:1, child: InstaStories()),
        Flexible(child: InstaList())
      ],
    );
  }
}
