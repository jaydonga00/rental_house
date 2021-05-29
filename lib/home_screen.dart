import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rental_house/common_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
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
                              child:
                                  Image.asset('asset/images/Mask Group 1.png'),
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
                  height: 150,
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
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText:
                                        'Search Location (Ex : United States etc)',
                                    hintStyle: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                    border: InputBorder.none,
                                  ),
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.grey,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.blue,
                              ),
                              width: 100,
                              height: 30,
                              child: Padding(
                                padding: const EdgeInsets.all(7),
                                child: Text(
                                  'Sulphur 1.5 Km ',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black45),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              width: 100,
                              height: 30,
                              child: Padding(
                                padding: const EdgeInsets.all(7),
                                child: Text(
                                  'Liberty 1.2 Km ',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black45,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black45),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              width: 100,
                              height: 30,
                              child: Padding(
                                padding: const EdgeInsets.all(6),
                                child: Text(
                                  'Dummy 1 Km ',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black45,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 65,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 10,
                            blurRadius: 10,
                            offset: Offset(0, -0),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image(
                            image: AssetImage('asset/images/house (1).png'),
                          ),
                          Text(
                            'Rent Home',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 65,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 10,
                            blurRadius: 10,
                            offset: Offset(0, -0),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image(
                            image: AssetImage('asset/images/buyhouse.png'),
                          ),
                          Text(
                            'Buy Home',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 65,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 10,
                            blurRadius: 10,
                            offset: Offset(0, -0),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image(
                            image: AssetImage('asset/images/sold.png'),
                          ),
                          Text(
                            'Sold Home',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Top Owners at your Place',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CommonWidget.topMentor(image: 'asset/images/Image 4.png'),
                    CommonWidget.topMentor(image: 'asset/images/Image 3.png'),
                    CommonWidget.topMentor(image: 'asset/images/Image 7.png'),
                    CommonWidget.topMentor(image: 'asset/images/Image 8.png'),
                    CommonWidget.topMentor(image: 'asset/images/Image 9.png'),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Recently Uploaded House',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CommonWidget.uploadedHouse(
                        image: 'asset/images/Image 10.png',
                        name: 'name1',
                        rating: '4.5',
                        price: '560',
                        availableBad: '2',
                        cycale: '2',
                      ),
                      CommonWidget.uploadedHouse(
                        image: 'asset/images/Image 10.png',
                        name: 'name1',
                        rating: '4.5',
                        price: '560',
                        availableBad: '2',
                        cycale: '2',
                      ),
                      CommonWidget.uploadedHouse(
                        image: 'asset/images/Image 10.png',
                        name: 'name1',
                        rating: '4.5',
                        price: '560',
                        availableBad: '2',
                        cycale: '2',
                      ),
                      CommonWidget.uploadedHouse(
                        image: 'asset/images/Image 10.png',
                        name: 'name1',
                        rating: '4.5',
                        price: '560',
                        availableBad: '2',
                        cycale: '2',
                      ),
                      CommonWidget.uploadedHouse(
                        image: 'asset/images/Image 10.png',
                        name: 'name1',
                        rating: '4.5',
                        price: '560',
                        availableBad: '2',
                        cycale: '2',
                      ),
                      CommonWidget.uploadedHouse(
                        image: 'asset/images/Image 10.png',
                        name: 'name1',
                        rating: '4.5',
                        price: '560',
                        availableBad: '2',
                        cycale: '2',
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
