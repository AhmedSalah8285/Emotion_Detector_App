import 'package:camera/camera.dart';
import 'package:emotion_detector2/splash_screen.dart';
import 'package:flutter/material.dart';
//import 'E_detetctor.dart';

List<CameraDescription>? cameras;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'emotin_detector',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const splash_screen(),
    );
  }
}
