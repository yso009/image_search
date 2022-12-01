import 'package:flutter/material.dart';

class PhotoWidget extends StatelessWidget {
  const PhotoWidget({Key? key}) : super(key: key);

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
