import 'package:flutter/material.dart';
import 'package:toktik/domain/video_post.dart';
import 'package:toktik/models/local_video_model.dart';
import 'package:toktik/src/shared/data/local_video_post.dart';

class DiscoverProvider extends ChangeNotifier {
 static bool initialLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList();

    videos.addAll(newVideos);
    initialLoading = false;

    notifyListeners();

  }
}
