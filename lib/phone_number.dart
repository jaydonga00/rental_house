import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:rental_house/verify_phone_number.dart';

class PhoneNumber extends StatefulWidget {
  @override
  _PhoneNumberState createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/images/Mask Group 4.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome Back !',
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      'Renofi House',
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                Image(
                  image: AssetImage('asset/images/Mask Group 5.png'),
                ),
                Image(
                  image: AssetImage('asset/images/Mask Group 6.png'),
                ),
                Image(
                  image: AssetImage('asset/images/Mask Group 7.png'),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Phone Number',
                    style: TextStyle(color: Colors.black45),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(3, 3),
                    color: Colors.black12,
                    blurRadius: 15,
                    spreadRadius: 3,
                  ),
                ],
              ),

              child:  TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Phone Number",
                  prefix:  CountryPickerDropdown(
                    
                    initialValue: 'in',
                    itemBuilder: _buildDropdownItem,
                    onValuePicked: (Country country) {
                      print("${country.name}");
                    },
                  ),
                ),
                onChanged: (value){
                  // this.phoneNo=value;
                },

              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Skip',
                  style: TextStyle(fontSize: 17),
                ),
                FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Verification(),
                      ),
                    );
                  },
                  child: const Icon(Icons.arrow_forward),
                  backgroundColor: Color(0xffFFAAAA),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
  Widget _buildDropdownItem(Country country) => Container(
    child: Row(
      children: <Widget>[
        CountryPickerUtils.getDefaultFlagImage(country),

        Text("+${country.phoneCode}(${country.isoCode})",style: TextStyle(fontSize: 15),),
      ],
    ),
  );
}
