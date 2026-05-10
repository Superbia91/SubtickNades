import 'package:cs2/nade.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class NadeDetailScreen extends StatefulWidget {
  final Nade nade;
  const NadeDetailScreen({super.key, required this.nade});

  @override
  State<NadeDetailScreen> createState() => _NadeDetailScreenState();
}

class _NadeDetailScreenState extends State<NadeDetailScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();


    _controller = VideoPlayerController.asset(widget.nade.videoUrl);


    _controller.initialize().then((_) {
    
      setState(() {});
      _controller.play();
      _controller.setLooping(true); 
    });
  }

  @override
  void dispose() {
    _controller.dispose(); 
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, 
      appBar: AppBar(
        title: Text(widget.nade.title), 
      ),
      body: Center(
       
        child: _controller.value.isInitialized
           
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
          
            : const CircularProgressIndicator(), 
      ),
    );
  }
}