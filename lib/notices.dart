import 'package:flutter/material.dart';
import 'list_button.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'constants.dart';

import 'dart:io';

List<Widget> noticewidget = [];

class Notices extends StatefulWidget {
  @override
  _NoticesState createState() => _NoticesState();
}

class _NoticesState extends State<Notices> {
  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 40; i++) {
      noticewidget.add(ListButton('Notice ${i + 1}'));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF410064),
        title: kappbartext,
      ),
      backgroundColor: Color(0xFF956FD6),
      body: ListView(
        children: noticewidget,
      ),
    );
  }
}
