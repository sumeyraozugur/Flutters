import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffD7E0FF),
        appBar: AppBar(
          centerTitle: true,// App bardaki başlık center olsun.
          backgroundColor:Colors.blueGrey,
          title: Text("Mutlu Bayramlar"),
        ),
        body: Center(
          child: Image.asset('images/mutlu_bayramlar.jpg')
    ),
        ),
  ),
    
  );}
