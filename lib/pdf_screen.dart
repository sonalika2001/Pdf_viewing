import 'package:flutter/material.dart';

import 'package:notices_slcm/constants.dart';

import 'package:flutter_full_pdf_viewer/flutter_full_pdf_viewer.dart';

class PdfScreen extends StatefulWidget {
  final String path;

  PdfScreen(this.path);

  @override
  _PdfScreenState createState() => _PdfScreenState();
}

class _PdfScreenState extends State<PdfScreen> {
  @override
  Widget build(BuildContext context) {
    return PDFViewerScaffold(
        appBar: AppBar(
          title: kappbartext,
          backgroundColor: Color(0xFF410064),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Icon(
                Icons.share,
                size: 30,
              ),
            )
          ],
        ),
        path: widget.path);
  }
}
