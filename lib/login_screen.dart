import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

String email, password;

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF410064),
        title: Center(
          child: Text(
            'SLCM Notices',
            style: TextStyle(color: Color(0xFFE0B0FF), fontSize: 20),
          ),
        ),
      ),
      backgroundColor: Color(0xFF9E67B8),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TyperAnimatedTextKit(
                  isRepeatingAnimation: true,
                  speed: Duration(milliseconds: 500),
                  text: ['Welcome'],
                  textStyle: TextStyle(
                    fontSize: 45.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Berkshire Swash",
                  ),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: SizedBox(
                    height: 40,
                    width: 30,
                    child: Divider(
                      thickness: 2,
                      color: Color(0x80410064),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: ktextfielddecor.copyWith(
                      hintText: 'Enter your email',
                      hintStyle: TextStyle(
                          color: Colors.white70, fontStyle: FontStyle.italic)),
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {
                    email = value;
                  },
                ),
                SizedBox(height: 8),
                TextField(
                  obscureText: true,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    password = value;
                  },
                  decoration: ktextfielddecor.copyWith(
                      hintText: 'Enter your password',
                      hintStyle: TextStyle(
                          color: Colors.white70, fontStyle: FontStyle.italic)),
                ),
                SizedBox(height: 12),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: RaisedButton(
                    child: Text(
                      'Log In',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'El Messiri'),
                    ),
                    textColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    elevation: 5,
                    color: Color(0xFF410064),
                    onPressed: () {
                      Navigator.pushNamed(context, '/1');
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
