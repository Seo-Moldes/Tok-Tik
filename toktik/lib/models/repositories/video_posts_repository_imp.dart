import 'package:toktik/domain/datasource/video_posts_datasource.dart';
import 'package:toktik/domain/repositories/video_posts_repository.dart';
import 'package:toktik/domain/video_post.dart';

class VideoPostsRepositoryImp implements VideoPostRepository {
  final VideoPostDatasource videosDatasource;
  VideoPostsRepositoryImp({required this.videosDatasource});

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {

    return videosDatasource.getTrendingVideosByPage(page);
  }
}
