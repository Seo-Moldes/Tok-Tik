import 'package:flutter/material.dart';
import 'package:toktik/domain/video_post.dart';
import 'package:toktik/src/widgets/video_buttons.dart';

class VideosCrollableView extends StatelessWidget {
  final List<VideoPost> videos;

  const VideosCrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final VideoPost videoPost = videos[index];

        return Stack(
          children: [
            Positioned(
                bottom: 40, right: 20, child: VideoButtons(video: videoPost)),
          ],
        );
      },
    );
  }
}
