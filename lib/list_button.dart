import 'package:flutter/material.dart';
import 'pdf_screen.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

import 'dart:io';

class ListButton extends StatefulWidget {
  ListButton(this.notice);
  final String notice;

  @override
  _ListButtonState createState() => _ListButtonState();
}

class _ListButtonState extends State<ListButton> {
  //makes asset accessible by pdfviewer
  Future getAssetFile(String filename) async {
    final ByteData data = await DefaultAssetBundle.of(context).load(filename);
    final bytes = data.buffer.asUint8List();

    final dir = await getTemporaryDirectory();
    final DocumentPath = '${dir.path}/$filename';

    final file = await File(DocumentPath).create(recursive: true);
    file.writeAsBytesSync(bytes);
    return DocumentPath;
  }

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        getAssetFile('assets/file.pdf').then((path) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PdfScreen(path)),
          );
        });
      },
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: Column(
          children: <Widget>[
            Card(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Center(
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          widget.notice,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                            fontFamily: "El Messiri",
                          ),
                        ),
                      ),
                    ),
                    Icon(Icons.chevron_right, color: Colors.white, size: 20)
                  ]),
              elevation: 2,
              color: Color(0x8040003F),
            ),
            Divider(
              height: 20,
              thickness: 1.5,
            )
          ],
        ),
      ),
    );
  }
}
