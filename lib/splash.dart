

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:new_journy/home.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
      MaterialPageRoute(builder: (context) => home(),));
     });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
            
          child: Image.asset('assets/images/whatsapp.jpg')
          ),
              ),
        
    );
    
  }
}