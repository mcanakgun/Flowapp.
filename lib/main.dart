import 'package:firebase_core/firebase_core.dart';
import 'package:flow/Screens/map_screen_main.dart';
import 'package:flow/Screens/map_gym_screen.dart';
import 'package:flow/Screens/map_home_screen.dart';
import 'package:flow/Screens/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'Screens/login_screen.dart';
import 'Screens/welcome_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Onboarding Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        "/": (context) => WelcomeScreen(),
        "/Login": (context) => LoginScreen(),
        "/SignUp": (context) => SignUpScreen(),
        "/MapMain": (context) => MapScreenMain(),
        "/MapHome": (context) => MapHomeScreen(),
        "/MapGym": (context) => MapGymScreen()
      },
      initialRoute: "/",
    );
  }
}
