import 'package:flutter/material.dart';
import 'package:rental_house/login_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Company ',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 33,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Name',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 33,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Text(
                    'Find best home at your place',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Image(
                    image: AssetImage('asset/images/Layer_2.png'),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Container(
                    width: double.infinity,
                    child: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  GestureDetector(
                    onTap: () {
                      // if(_form.currentState.validate())
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    },
                    child: Container(
                      child: Center(
                          child: Text(
                        'Next',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      )),
                      height: 45,
                      width: 140,
                      decoration: BoxDecoration(
                        border: Border.all(
                          style: BorderStyle.solid,
                          width: 1.7,
                          color: Colors.black45,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
