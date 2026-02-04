import 'dart:io';

import 'package:flutter/material.dart';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

import 'pages/splash_screen.dart';

void main() async {
  //SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

  WidgetsFlutterBinding.ensureInitialized();

  // Use appDirectory to access the file system

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'bassmaNoteApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
