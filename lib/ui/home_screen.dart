import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_search/data/api.dart';
import 'package:image_search/model/Photo.dart';
import 'package:image_search/ui/widget/photo_widget.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  final PixabayApi api;

  const HomeScreen({Key? key, required this.api}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final _controller = TextEditingController();

  List<Photo> _photos = [];

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          '이미지 검색 앱',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () async {
                      final photos = await widget.api.fetch(_controller.text);
                      setState(() {
                        _photos = photos;
                      });
                    },
                    icon: const Icon(Icons.search),
                  )),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(16.0),
              itemCount: _photos.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              itemBuilder: (context, index) {
                final photo = _photos[index];
                return PhotoWidget(
                  photo: photo,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
