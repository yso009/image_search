import 'package:flutter/material.dart';
import 'package:image_search/model/Photo.dart';

class PhotoWidget extends StatelessWidget {
  final Photo photo;

  const PhotoWidget({Key? key, required this.photo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage('https://hips.hearstapps.com/hmg-prod/images/wednesday-jenna-ortega-2-1654540590.jpg?crop=1.00xw:0.978xh;0,0'),
          )
      ),
    );
  }
}
