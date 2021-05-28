import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset('asset/icons/manu_icon.png',
                                height: 11),
                            SizedBox(width: 20),
                            Text(
                              'Company Name',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Hello ! Edward Evan',
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(height: 7),
                        Text(
                          'Find Best House, Apartment,\nHostel and Room',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                          overflow: TextOverflow.clip,
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                    Icon(Icons.notifications_none, size: 30),
                    Container(
                      alignment: Alignment.topCenter,
                      height: 140,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Color(0xff00CBFF),
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      child: Column(
                        children: [
                          CircleAvatar(
                            child: Image.asset('asset/images/Mask Group 1.png'),
                            maxRadius: 29,
                          ),
                          Text(
                            '2 Days Left',
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                width: double.infinity,
                height: 130,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 10,
                      blurRadius: 10,
                      offset: Offset(0, -0),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 35,
                            height: 35,
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
                            child: Icon(
                              Icons.location_on,
                              color: Colors.grey,
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Row(
                        children: [
                          // Container(
                          //   decoration: BoxDecoration(
                          //     shape: BoxShape.circle,
                          //     color: Colors.blue,
                          //     boxShadow: [
                          //       BoxShadow(
                          //         color: Colors.grey,
                          //         spreadRadius: 1.1,
                          //         blurRadius: 5,
                          //         offset: Offset(4, 4),
                          //       ),
                          //     ],
                          //   ),
                          //   width: 20,
                          //   height: 20,
                          // )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
