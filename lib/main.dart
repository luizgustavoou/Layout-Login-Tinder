import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

const MaterialColor white = const MaterialColor(
  0xFFFFFFFF,
  const <int, Color>{
    50: const Color(0xFFFFFFFF),
    100: const Color(0xFFFFFFFF),
    200: const Color(0xFFFFFFFF),
    300: const Color(0xFFFFFFFF),
    400: const Color(0xFFFFFFFF),
    500: const Color(0xFFFFFFFF),
    600: const Color(0xFFFFFFFF),
    700: const Color(0xFFFFFFFF),
    800: const Color(0xFFFFFFFF),
    900: const Color(0xFFFFFFFF),
  },
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: white,
          scaffoldBackgroundColor: Colors.red.shade400,
          textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.white))),
      home: Scaffold(
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png',
                width: 220, color: Colors.white),
            SizedBox(height: 30),
            Text(
              'Location Changer',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Text(
              'Plugin app for Tinder',
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.red.shade400,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(23)),
                    padding: EdgeInsets.only(
                        left: 20, right: 20, top: 12, bottom: 12)),
                onPressed: () {
                  print('Login with facebook!');
                },
                child: Text(
                  'Login with Facebook',
                  style: TextStyle(fontSize: 15),
                ))
          ],
        )),
      ),
    );
  }
}
