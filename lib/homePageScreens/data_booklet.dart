import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class DataBooklet extends StatefulWidget {
  @override
  _DataBooklet createState() => _DataBooklet();
}

class _DataBooklet extends State<DataBooklet> {
  bool _isloading = false, _isinit = true;
  PDFDocument document;

  @override
  void initState() {
    super.initState();
    loadFromAssets();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Booklet'),
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

  loadFromAssets() async {
    setState(() {
      _isinit = false;
      _isloading = true;
    });
    document = await PDFDocument.fromAsset('assets/Chem_Data_Booklet.pdf');
    setState(() {
      _isloading = false;
    });
  }
}
