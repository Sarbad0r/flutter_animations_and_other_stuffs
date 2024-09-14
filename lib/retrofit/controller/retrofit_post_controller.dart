import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:flutter_animations_2/retrofit/dio_settings/dio_settings.dart';
import 'package:flutter_animations_2/retrofit/model/retrofit_post.dart';
import 'package:flutter_animations_2/retrofit/service/retrofit_post_api_service.dart';

class RetrofitPostController extends ChangeNotifier {
  final List<RetrofitPost> _retrofitPost = [];

  UnmodifiableListView<RetrofitPost> get retrofitPost => UnmodifiableListView(_retrofitPost);

  late RetrofitPostApiService _retrofitPostApiService;

  Future<void> postApiSettings() async {
    await DioSettings().initDio();
    _retrofitPostApiService = RetrofitPostApiService(DioSettings().dio);
  }

  void refresh() async {
    _retrofitPost.clear();
    _retrofitPost.addAll(await _retrofitPostApiService.getPosts());
    notifyListeners();
  }
}
