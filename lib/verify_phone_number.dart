import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class Verification extends StatefulWidget {
  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  Duration start;
  bool reset = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/images/Image 20.png'),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('asset/images/Bg.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Verify Phone No',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'An 6-digit code has beensent to \nMobile number (change)',
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontSize: 13,
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
                Container(
                  height: 47,
                  child: OTPTextField(
                    keyboardType: TextInputType.number,
                    width: MediaQuery.of(context).size.width,
                    length: 6,
                    textFieldAlignment: MainAxisAlignment.spaceEvenly,
                    fieldWidth: 40,
                    fieldStyle: FieldStyle.box,
                    style: TextStyle(

                      color: Colors.black54,
                      fontWeight: FontWeight.w600,
                    ),
                    obscureText: true,
                    onChanged: null,
                    onCompleted: null,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Expired in '),
                    TweenAnimationBuilder<Duration>(
                      duration: reset?Duration(minutes: 10):Duration(minutes: 10),
                      tween: Tween(
                          begin: reset?Duration(minutes: 10):Duration(minutes: 10),
                          end: Duration.zero),
                      onEnd: () {
                        print('Timer ended');
                      },
                      builder:
                          (BuildContext context, Duration value, Widget child) {
                        final minutes = value.inMinutes;
                        final seconds = value.inSeconds % 60;
                        return Text(
                          '$minutes:$seconds',
                          textAlign: TextAlign.center,
                        );
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Don't receive the code?",
                    ),
                    SizedBox(width: 5),
                    TextButton(
                      onPressed: (){
                        setState(() {
                          reset != reset;

                        });
                      },
                      child: Text(
                        'Resend',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
