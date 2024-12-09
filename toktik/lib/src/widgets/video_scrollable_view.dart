import 'package:flutter/material.dart';
import 'package:toktik/domain/video_post.dart';

class VideosCrollableView extends StatelessWidget {
  final List<VideoPost> videos;

  const VideosCrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
    children: [

      Container(
        color: Colors.red,
      ),
       Container(
        color: const Color.fromARGB(255, 8, 214, 94),
      ),
       Container(
        color: const Color.fromARGB(255, 54, 57, 244),
      ),

    ],  
    );
  }
}
