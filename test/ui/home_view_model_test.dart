import 'package:flutter_test/flutter_test.dart';
import 'package:image_search/data/api.dart';
import 'package:image_search/ui/home_view_model.dart';

void main() {
  test('Stream이 잘 동작해야 한다.', () async {
    final viewModel = HomeViewModel(PixabayApi()); // 객체 생성

    await viewModel.fetch('apple');

    expect(viewModel.photoStream, emitsInOrder([
      
    ]));
  });
}
