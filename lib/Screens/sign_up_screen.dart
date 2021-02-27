import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';

const kTextFieldDecoration = InputDecoration(
  hintStyle: TextStyle(fontSize: 20.0, color: Colors.white),
  contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
  filled: true,
  fillColor: Colors.white30,
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(30)),
    borderSide: BorderSide.none,
  ),
);

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen>
    with TickerProviderStateMixin {
  final _auth = FirebaseAuth.instance;
  double _opacity = 0.0;
  double _opacity2 = 0.0;
  AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 4),
    );
    controller.repeat();
    Future.delayed(Duration(milliseconds: 350), () {
      _opacity2 = 1;
    });
    Future.delayed(Duration(milliseconds: 250), () {
      _opacity = 1;
    });
  }

  Future<void> signUp() async {
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(
            email: userName.text, password: pass.text)
        .then((kullanici) {
      FirebaseFirestore.instance
          .collection("Users")
          .doc(userName.text)
          .set({"E-Mail": userName.text, "Password": pass.text});
    });
  }

  String email;
  String password;
  TextEditingController userName = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/lightoflogin3.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 260,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 180),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: AnimatedBuilder(
                              animation: controller,
                              child: Container(
                                width: 50,
                                child: Image.asset("assets/images/x.png"),
                              ),
                              builder: (BuildContext context, Widget _widget) {
                                return Transform.rotate(
                                  angle: controller.value * 6.3,
                                  child: _widget,
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 15),
                        child: TextFormField(
                          controller: userName,
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(color: Colors.white, fontSize: 23),
                          decoration: kTextFieldDecoration.copyWith(
                            hintText: 'Username',
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 15),
                        child: TextFormField(
                          controller: pass,
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          style: TextStyle(color: Colors.white, fontSize: 23),
                          decoration: kTextFieldDecoration.copyWith(
                            hintText: 'Password',
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      RaisedButton(
                        onPressed: () {
                          signUp();
                        },
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 55, vertical: 15),
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                                fontSize: 23, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
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
