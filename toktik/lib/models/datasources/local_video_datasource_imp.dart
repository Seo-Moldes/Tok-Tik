import 'package:toktik/domain/datasource/video_posts_datasource.dart';
import 'package:toktik/domain/video_post.dart';
import 'package:toktik/models/local_video_model.dart';
import 'package:toktik/src/shared/data/local_video_post.dart';

class LocalVideoDatasource implements VideoPostDatasource {
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {
    
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList();
        
        return newVideos;
  }

}