import 'dart:math';

import 'package:flutter/material.dart';

class CommonWidget {
  static Widget topMentor({
    String image,
  }) =>
      Stack(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
              image: DecorationImage(
                image: AssetImage('$image'),
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
          // Positioned(
          //   top: 60,
          //   height: 40,
          //   child: Transform(
          //     // alignment: Alignment.bottomRight,
          //     transform: Matrix4.skewY(0.1)..rotateZ(-pi / 3.7),
          //     child: Container(
          //       // margin: EdgeInsets.only(right: 15),
          //       height: 40,
          //       width: 45,
          //       // padding: const EdgeInsets.all(8.0),
          //       decoration: BoxDecoration(
          //         color: Colors.black,
          //         borderRadius: BorderRadius.circular(10),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      );

  static Widget uploadedHouse({
    String image,
    String name,
    String rating,
    String price,
    String availableBad,
    String cycale,
  }) =>
      Padding(
        padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
        child: Container(
          alignment: Alignment.topCenter,
          height: 250,
          width: 160,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 6,
                blurRadius: 10,
                offset: Offset(0, -0),
              ),
            ],
          ),
          child: Column(
            children: [
              Container(
                height: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('$image'),
                    alignment: Alignment.topCenter,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '$name',
                      style: TextStyle(fontSize: 16),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.pinkAccent,size: 18,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.pinkAccent,size: 18,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.pinkAccent,size: 18,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.pinkAccent,size: 18,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.pinkAccent,size: 18,
                              ),
                            ],
                          ),
                        ),
                        Text('$rating'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$ $price',
                          style: TextStyle(fontSize: 12),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                size: 15,
                              ),
                              Text(
                                'United States',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                    Divider(
                      thickness: 0.5,
                      color: Colors.black,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Container(
                                width: 30,
                                height: 25,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      spreadRadius: 5,
                                      blurRadius: 5,
                                      offset: Offset(1, 3),
                                    ),
                                  ],
                                ),
                                child: Image(
                                  image: AssetImage(
                                      'asset/images/Icon ionic-ios-bed.png'),
                                ),
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                '$availableBad',
                                style: TextStyle(color: Colors.pinkAccent),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 30,
                          height: 25,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 5,
                                blurRadius: 5,
                                offset: Offset(1, 3),
                              ),
                            ],
                          ),
                          child: Image(
                            image: AssetImage(
                              'asset/images/drop-1.png',
                            ),
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                width: 30,
                                height: 25,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      spreadRadius: 5,
                                      blurRadius: 5,
                                      offset: Offset(1, 3),
                                    ),
                                  ],
                                ),
                                child: Image(
                                  image: AssetImage(
                                    'asset/images/Icon material-directions-bike.png',
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                '$cycale',
                                style: TextStyle(
                                  color: Colors.yellow,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
