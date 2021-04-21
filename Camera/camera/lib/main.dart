


import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


void main() {
  runApp(MyApp());
 
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Kamera Uygulaması",
      debugShowCheckedModeBanner: false, //debug yazısını kaldır.
      theme: ThemeData(
        primarySwatch: Colors.indigo
      ),
      home: cameraApp(),

    );
  }
}

class cameraApp extends StatefulWidget {
 

  _cameraAppstate createState() => _cameraAppstate();

}


class _cameraAppstate extends State<cameraApp>{
  final ImagePicker _picker = ImagePicker();

  File imageFile;
   var picture;


  _openGallery(BuildContext context) async{

    picture=  await _picker.getImage(source: ImageSource.gallery);
    this.setState((){
      if (picture != null) {
        imageFile = File(picture.path);
      } else {
        print('No image selected.');
      }
    
     
    });
    Navigator.of(context).pop();
  }

  _openCamera(BuildContext context) async{
    
    picture =  await _picker.getImage(source: ImageSource.camera);
    this.setState((){
      if (picture != null) {
        imageFile = File(picture.path);
      } else {
        print('No image selected.');
      }
    
      
     
    });
    Navigator.of(context).pop();
  }

  Future<void> _showChoiseDialog(BuildContext context) {
    return showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        title: Text("Birini seçin!"),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              GestureDetector(
                child: Text("Galeri"),
                onTap: (){
                  _openGallery(context);
                },
              ),

              GestureDetector(
                child: Text("Kamera"),
                onTap: (){
                  _openCamera(context);
                },
              ),

            ],
          ),
        ),
      );
    });
  }


  Widget _decideImageView(){

    if(imageFile == null)
      {
        return Text(
            "Resim seçilmedi"
        );
      }
    else
      {
        return Image.file(imageFile,
        width: 400,
        height: 400,);
      }
  }


  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Anasayfa"),
      ),

      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              _decideImageView(),
              RaisedButton(
                color: Colors.pinkAccent,
                onPressed: (){
                  _showChoiseDialog(context);
                },
                child: Text("Resim seçin!"),
              )
            ],
          ),
        ),
      ),
    );
  }



}

