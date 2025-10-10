

import 'package:flutter/material.dart';

class FastScreen extends StatefulWidget {
  const FastScreen({super.key});

  @override
  State<FastScreen> createState() => _FastScreenState();
}

class _FastScreenState extends State<FastScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Fast Screen"),
      ),
    );
  }
}
