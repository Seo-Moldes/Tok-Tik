import 'package:flutter/material.dart';
import 'package:toktik/domain/video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    notifyListeners();
  }
}
