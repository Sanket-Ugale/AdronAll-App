import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("SETTINGS"),), body: Center(child: Text("Settings"),),);
  }
}