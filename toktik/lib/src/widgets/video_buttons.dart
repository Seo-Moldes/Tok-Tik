import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:toktik/domain/video_post.dart';
import 'package:toktik/src/config/human_formats.dart';

class VideoButtons extends StatelessWidget {
  final VideoPost video;

  const VideoButtons({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomIconButton(value: video.likes, icondata: Icons.favorite, color: Colors.red),
        const SizedBox(height: 20),
        CustomIconButton(value: video.views, icondata: Icons.remove_red_eye_outlined, color: Colors.white),
        const SizedBox(height: 20),
        BounceInDown(child: const CustomIconButton(value: 0, icondata: Icons.play_circle_fill_outlined, color: Colors.white)),
      ],
    );
  }
}

class CustomIconButton extends StatelessWidget {
  final int value;
  final IconData icondata;
  final Color color;
  const CustomIconButton(
      {super.key,
      required this.value,
      required this.icondata,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              size: 30,
              icondata,
              color: color,
            )),
        Text(HumanFormats.humanReadNumbers(value.toDouble()))
      ],
    );
  }
}
