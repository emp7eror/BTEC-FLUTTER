import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    // تعريف المتغير المتحكم بالفيديو
    _controller = VideoPlayerController.networkUrl(Uri.parse('https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'));

    _controller.addListener(() {
      setState(() {});
    });
    _controller.setLooping(true);
    _controller.initialize().then((_) => setState(() {}));
    _controller.play();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: Scaffold(
        appBar: AppBar(title: Text("This is appbar"), backgroundColor: Colors.amber),
        body:
            // اضافة ويدجت الفيديو
            _controller.value.isInitialized ? AspectRatio(aspectRatio: _controller.value.aspectRatio, child: VideoPlayer(_controller)) : Container(),
      ),
    );
  }
}

class HowToUseContainer extends StatelessWidget {
  const HowToUseContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(vertical:50),
      width: 500,
      height: 100,
      decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadiusGeometry.circular(20)),
      child: Center(child: Text('This text is in Container')),
    );
  }
}

class HowToUseNetworkImage extends StatelessWidget {
  const HowToUseNetworkImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      "https://media.tenor.com/NG7XXwtQwyYAAAAM/%D8%A7%D9%8E%D9%84%D8%A3%D9%8F%D8%B1%D9%92%D8%AF%D9%8F%D9%86%D9%90%D9%8A%D9%8E%D9%91%D8%A9-%C3%BCrd%C3%BCn.gif",
      width: 300,
    );
  }
}


class HowToUseAssetImage extends StatelessWidget {
  const HowToUseAssetImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "files/ramadan.jpg",
      width: 800,
    );
  }
}



