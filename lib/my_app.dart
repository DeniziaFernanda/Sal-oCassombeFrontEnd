import 'package:flutter/material.dart';
import 'package:teste_flutter/login.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatehome();
  }

  _navigatehome() async {
    await Future.delayed(Duration(milliseconds: 2150), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => Login()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Center(
        child: Container(
          height: 300,
          width: 180,
          child: Column(
            children: <Widget> [
              Image.asset('assets/image/cadeir 3.png'),
              SizedBox(
                width: 10,
              ),
              Text('Salão Cassombe', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
            ],
          )
          
        ),
      ),
    );
  }
}
