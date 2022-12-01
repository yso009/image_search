import 'dart:convert';
import 'package:image_search/model/Photo.dart';
import 'package:http/http.dart' as http;

class PixabayApi {
  final baseUrl = 'https://pixabay.com/api/';
  final key = '31661655-a1566eb9ae408478812dcb42b';

  Future<List<Photo>> fetch(String query) async {
    final response = await http.get(Uri.parse(
        "$baseUrl?key=$key&q=$query&image_type=photo&pretty=true"));

    Map<String, dynamic> jsonResponse = jsonDecode(response.body);
    Iterable hits = jsonResponse['hits'];
    return hits.map((e) => Photo.fromJson(e)).toList();
  }
}

