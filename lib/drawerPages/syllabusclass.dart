import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class SyllabusScreen extends StatefulWidget {
  SyllabusScreen({this.appbarTitle, this.documentName});
  String appbarTitle;
  String documentName;
  @override
  _SyllabusScreenState createState() => _SyllabusScreenState();
}

class _SyllabusScreenState extends State<SyllabusScreen> {
  bool _isloading = false, _isinit = true;
  PDFDocument document;
  String appbarTitle;

  @override
  void initState() {
    super.initState();
    appbarTitle = widget.appbarTitle;
    loadFromAssets(widget.documentName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appbarTitle),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: _isinit
                  ? Text('Press to open pdf file')
                  : _isloading
                      ? Center(
                          child: CircularProgressIndicator(),
                        )
                      : PDFViewer(
                          document: document,
                        ),
            ),
          ),
        ],
      ),
    );
  }

  loadFromAssets(String documentName) async {
    setState(() {
      _isinit = false;
      _isloading = true;
    });
    document = await PDFDocument.fromAsset(documentName);
    setState(() {
      _isloading = false;
    });
  }
}
