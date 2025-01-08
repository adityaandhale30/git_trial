import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:git_trial/Views/splash_screen.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

// Trail merge

// class VideoPlayScreen extends StatefulWidget {
//   const VideoPlayScreen({super.key});

//   @override
//   State<VideoPlayScreen> createState() => _VideoPlayScreenState();
// }

// class _VideoPlayScreenState extends State<VideoPlayScreen> {
//   late final VideoPlayerController _controller;
//   late final Future<void> _initializeVideoFuture;

//   @override
//   void initState() {
//     super.initState();
//     // Initialize video player controller and the Future
//     _controller = VideoPlayerController.asset('assets/intro.mp4');
//     _initializeVideoFuture = _controller.initialize();
//     log('Video Player initialized');
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     log('Video Player disposed');
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Video Player1'),
//         backgroundColor: Colors.blueGrey,
//       ),
//       body: Center(
//         child: FutureBuilder<void>(
//           future: _initializeVideoFuture,
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.done) {
//               // Video is ready; display the video player
//               return AspectRatio(
//                 aspectRatio: _controller.value.aspectRatio,
//                 child: VideoPlayer(_controller),
//               );
//             } else if (snapshot.hasError) {
//               // Show an error message if initialization fails
//               return Text(
//                 'Error loading video: ${snapshot.error}',
//                 style: const TextStyle(color: Colors.red),
//               );
//             } else {
//               // Show a loading spinner while the video initializes
//               return const CircularProgressIndicator();
//             }
//           },
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _togglePlayback,
//         backgroundColor: Colors.blueGrey,
//         child: Icon(
//           _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
//         ),
//       ),
//     );
//   }

//   void _togglePlayback() {
//     if (_controller.value.isPlaying) {
//       _controller.pause();
//       log('Video paused');
//     } else {
//       _controller.play();
//       log('Video playing');
//     }
//     // Efficient state update for floating action button
//     setState(() {});
//   }
// }
