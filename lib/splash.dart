import 'package:flutter/material.dart'

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child: Container(
        child:Text('Splash Screen ',
        style: TextStyle(fontSize:24 , fontWeight: FontWeight.w800))
      ),
    )
    );
  }
}