import 'package:flutter/material.dart';
import 'package:flutter_camera/camera_screen.dart';
import 'package:flutter_camera/camera_viewer.dart';
import 'package:flutter_camera/global_bindings.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      initialBinding: GlobalBindings(),
      debugShowCheckedModeBanner: false,
      title: "Camera Application",
      home: const CameraScreen(),
    );

    return MaterialApp(
      title: 'Camera',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CameraViewer(),
    );
  }
}
