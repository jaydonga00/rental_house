import 'package:flutter/material.dart';

class CommonWidget {
  static Widget topMentor({
    String image,
  }) =>
      CircleAvatar(
        backgroundColor: Colors.white,
        child: Image.asset('$image'),
        maxRadius: 29,
      );

}