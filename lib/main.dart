import 'package:flutter/material.dart';
import 'package:teste_flutter/my_app.dart';

void main() {
  runApp(
     MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.cyan,
          fontFamily: 'Poppins',
        ),
        home: const Splash()),
  );
}
