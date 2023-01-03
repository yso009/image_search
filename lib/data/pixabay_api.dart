import 'dart:convert';
import 'package:image_search/data/photo_api_repository.dart';
import 'package:image_search/model/photo.dart';
import 'package:http/http.dart' as http;

class PixabayApi implements PhotoApiRepository {
  @override
  Future<List<Photo>> fetch(String query) async {
    String q = query;
    final baseUrl = 'https://pixabay.com/api/';
    final key = '31661655-a1566eb9ae408478812dcb42b';

    var response = await http.get(Uri.parse('$baseUrl?key=$key&q=$q&image_type=photo&pretty=true'));

    Map<String, dynamic> jsonResponse = jsonDecode(response.body);
    Iterable hits = jsonResponse['hits'];

    return hits.map((e) => Photo.fromJson(e)).toList();
  }
}
