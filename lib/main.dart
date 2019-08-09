import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;


const request = "https://api.hgbrasil.com/finance?format=json&key=8318514e";

void main () {
  runApp(MaterialApp(
    title: "Conversor",
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("\$ Conversor \$"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Container(),
    );
  }
}


Future<Map> getData() async {
  http.Response response = await http.get(request);
  return json.decode(response.body);
}