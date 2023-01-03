import 'dart:async';
import 'package:image_search/data/photo_api_repository.dart';
import 'package:image_search/model/photo.dart';

class HomeViewModel { 
  final PhotoApiRepository repository;

  final _photoStreamController = StreamController<List<Photo>>()..add([]); // 처음 실행 시 빈 리스트를 추가
  Stream<List<Photo>> get photoStream => _photoStreamController.stream;

  HomeViewModel(this.repository);

  // _photoStreamController에 데이터를 채울 매서드
  Future<void> fetch(String query) async {
    final result = await repository.fetch(query);
    _photoStreamController.add(result);
  }
}