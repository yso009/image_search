import 'package:flutter_test/flutter_test.dart';
import 'package:image_search/data/photo_api_repository.dart';
import 'package:image_search/data/pixabay_api.dart';
import 'package:image_search/model/photo.dart';
import 'package:image_search/ui/home_view_model.dart';

void main() {
  test('Stream이 잘 동작해야 한다.', () async {
    final viewModel = HomeViewModel(FakePhotoApiRepository());

    await viewModel.fetch('apple');
    await viewModel.fetch('iphone');

    expect(
      viewModel.photoStream,
      emitsInOrder([
        isA<List<Photo>>(),
        isA<List<Photo>>()]),
    );
  });
}

class FakePhotoApiRepository extends PhotoApiRepository {
  @override
  Future<List<Photo>> fetch(String query) async{
    Future.delayed(const Duration(microseconds: 500));

    return fakeJson.map((e) => Photo.fromJson(e)).toList();
  }
}

List<Map<String, dynamic>> fakeJson = [
  {
    "id": 2295434,
    "pageURL": "https://pixabay.com/photos/spring-bird-bird-tit-spring-blue-2295434/",
    "type": "photo",
    "tags": "spring bird, bird, tit",
    "previewURL": "https://cdn.pixabay.com/photo/2017/05/08/13/15/spring-bird-2295434_150.jpg",
    "previewWidth": 150,
    "previewHeight": 99,
    "webformatURL": "https://pixabay.com/get/gf5cef74ceb86ad08efbd536384e67be4dfbdb60384c95d7e89b233b746a81f966193909a7979edd010b05e6bb99d4745604d3d5434136fc000f8592cfb7967a8_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 426,
    "largeImageURL": "https://pixabay.com/get/g4620fa0dd48cb331b944590c285a2363be0a0e3825b4aaf969fbdd1866968e1d25ce1c738a2657259ef82d0ac425ef2901f753e7b6561d8ee05ada30cf1573a6_1280.jpg",
    "imageWidth": 5363,
    "imageHeight": 3575,
    "imageSize": 2938651,
    "views": 601771,
    "downloads": 343632,
    "collections": 2022,
    "likes": 1961,
    "comments": 245,
    "user_id": 334088,
    "user": "JillWellington",
    "userImageURL": "https://cdn.pixabay.com/user/2018/06/27/01-23-02-27_250x250.jpg"
  },
  {
    "id": 3063284,
    "pageURL": "https://pixabay.com/photos/rose-flower-petal-floral-noble-3063284/",
    "type": "photo",
    "tags": "rose, flower, petal",
    "previewURL": "https://cdn.pixabay.com/photo/2018/01/05/16/24/rose-3063284_150.jpg",
    "previewWidth": 150,
    "previewHeight": 99,
    "webformatURL": "https://pixabay.com/get/g0a43a8a3c22a490e2bb076dbbb6713a68f033a50113835d2f9099e5760f4eecafda8b351783a976b96a912cd205ebd8dad2c62dd359b278f24ff6b015cb1fd5f_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 426,
    "largeImageURL": "https://pixabay.com/get/g3c256b94dc6a0d2515a5aafa6f399b847bb2f90a20c6aff8b9d630250e28db4fa17b37c492365446c382577e7c885368a410d7a5f6bff1ec58f4f0737c27c913_1280.jpg",
    "imageWidth": 6000,
    "imageHeight": 4000,
    "imageSize": 3574625,
    "views": 1028400,
    "downloads": 663661,
    "collections": 1383,
    "likes": 1507,
    "comments": 329,
    "user_id": 1564471,
    "user": "anncapictures",
    "userImageURL": "https://cdn.pixabay.com/user/2015/11/27/06-58-54-609_250x250.jpg"
  }
];