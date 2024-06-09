import 'package:custom_alarm/alarm.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Clarm!",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              alignment: Alignment.center,
              child: const Text(
                "Welcome to Clarm!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  letterSpacing: 2
                )
              )
            ),
            Container(
              alignment: Alignment.center,
              child: const AlarmWidget()
            )
          ]
        ),
      )
    );
  }
}
