import 'dart:async';

import 'package:image_search/data/api.dart';
import 'package:image_search/model/Photo.dart';

class HomeViewModel {
  final PixabayApi api;

  final _photoStreamController = StreamController<List<Photo>>()..add([]);
  Stream<List<Photo>> get photoStream => _photoStreamController.stream;

  HomeViewModel(this.api);

  Future<void> fetch(String query) async{
    final result = await api.fetch(query);
    _photoStreamController.add(result);
  }

}