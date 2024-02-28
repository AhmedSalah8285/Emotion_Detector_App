import 'package:flutter/material.dart';
import 'E_detetctor.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const emotion_detector();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Emotion detector App",
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Icon(
              Icons.face,
              size: 100,
              color: Colors.blue,
            ),
            SizedBox(
              height: 20,
            ),
            CircularProgressIndicator(
              color: Colors.blue,
              backgroundColor: Colors.grey,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "by: Ahmed Salah",
              style: TextStyle(color: Colors.blue, fontSize: 13),
            ),
          ],
        ),
      ),
    );
  }
}
