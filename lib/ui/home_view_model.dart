import 'dart:async';
import 'package:image_search/data/api.dart';
import 'package:image_search/model/photo.dart';

class HomeViewModel {
  final PixabayApi api;

  final _photoStreamController = StreamController<List<Photo>>()..add([]); // 처음 실행 시 빈 리스트를 추가
  Stream<List<Photo>> get photoStream => _photoStreamController.stream;

  HomeViewModel(this.api);

  // _photoStreamController에 데이터를 채울 매서드
  Future<void> fetch(String query) async {
    final result = await api.fetch(query);
    _photoStreamController.add(result);
  }
}