import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const ktextfielddecor = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32)),
  ),
  focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(32)),
      borderSide: BorderSide(width: 2, color: Color(0xFF7400AD))),
  enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(32)),
      borderSide: BorderSide(width: 1, color: Color(0xFF7400AD))),
);
const kappbartext = Text(
  'Notices',
  style: TextStyle(color: Color(0xFFE0B0FF), fontSize: 20),
);
