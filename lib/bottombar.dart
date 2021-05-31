import 'package:flutter/material.dart';
import 'package:rental_house/home_screen.dart';


class BottombarBar extends StatefulWidget {
  @override
  _BottombarBarState createState() => _BottombarBarState();
}

class _BottombarBarState extends State<BottombarBar> {
  int currentIndex = 2;

  List<Widget> currentPage = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentPage[currentIndex],
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 50,
        color: Colors.white,
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => setState(() => currentIndex = 0),
                child: Column(
                  children: [
                    Image(
                      image: AssetImage('asset/icons/Icon ionic-ios-heart-empty.png'),
                      color: currentIndex == 0 ? Colors.blue : Colors.black54,
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () => setState(() => currentIndex = 1),
                child: Column(
                  children: [
                    Image(
                      image: AssetImage('asset/icons/Icon feather-search.png'),
                      color: currentIndex == 1 ? Colors.blue : Colors.black54,
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () => setState(() => currentIndex = 2),
                child: Column(
                  children: [
                    Image(
                      image: AssetImage(
                        'asset/icons/address (1).png'
                      ),
                      color: currentIndex == 2 ? Colors.blue : Colors.black54,
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () => setState(() => currentIndex = 3),
                child: Column(
                  children: [
                    Image(
                      image: AssetImage(
                        'asset/icons/filter.png',
                      ),
                      color: currentIndex == 3 ? Colors.blue : Colors.black54,
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () => setState(() => currentIndex = 3),
                child: Column(
                  children: [
                    Image(
                      image: AssetImage(
                        'asset/icons/Icon metro-home.png',
                      ),
                      color: currentIndex == 3 ? Colors.blue : Colors.black54,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
