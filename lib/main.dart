import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'pages/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AdronAll',
      theme: ThemeData(
        useMaterial3: true,
        iconTheme: const IconThemeData(color: Colors.black),
        primarySwatch: Colors.grey,
      ),
      home: const Home()
    );
  }
}