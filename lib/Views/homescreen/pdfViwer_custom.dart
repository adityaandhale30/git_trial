import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfviewerCustom extends StatefulWidget {
  const PdfviewerCustom({super.key});

  @override
  State<PdfviewerCustom> createState() => _PdfviewerCustomState();
}

class _PdfviewerCustomState extends State<PdfviewerCustom> {
  final PdfViewerController _pdfViewerController = PdfViewerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PDF Viewer'),
        actions: [
          IconButton(
            icon: const Icon(Icons.zoom_in),
            onPressed: () {
              _pdfViewerController.zoomLevel += 0.5; // Zoom in
            },
          ),
          IconButton(
            icon: const Icon(Icons.zoom_out),
            onPressed: () {
              _pdfViewerController.zoomLevel -= 0.5; // Zoom out
            },
          ),
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              _pdfViewerController.zoomLevel = 1.0; // Reset zoom
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: SfPdfViewer.asset(
            "assets/Aditya_Mobile_Application_Developer_intern_.pdf",
            controller: _pdfViewerController,
            pageSpacing: 10,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
