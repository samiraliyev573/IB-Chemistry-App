import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class InternalAssesment extends StatefulWidget {
  @override
  _InternalAssessment createState() => _InternalAssessment();
}

class _InternalAssessment extends State<InternalAssesment> {
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
        title: Text('Internal Assesment'),
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
    document =
        await PDFDocument.fromAsset('assets/Chemistry_IA_Samir_Aliyev.pdf');
    setState(() {
      _isloading = false;
    });
  }
}
