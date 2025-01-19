import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfviewerCustom extends StatefulWidget {
  const PdfviewerCustom({super.key});

  @override
  State<PdfviewerCustom> createState() => _PdfviewerCustomState();
}

class _PdfviewerCustomState extends State<PdfviewerCustom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 20),
        color: Colors.white,
        child: SfPdfViewer.asset(
          "assets/freecompress-Assignment 3.pdf",
          pageSpacing: 10,
        ),
      ),
    );
  }
}
