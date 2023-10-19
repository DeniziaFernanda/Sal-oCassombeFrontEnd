import 'package:flutter/material.dart';
import 'package:teste_flutter/sevicos.dart';
import 'package:teste_flutter/registro.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  String email = 'deusine16@gmail.com';
  String password = '123456';
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(top: 200),
                width: 300,
                height: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    const Text('Login', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
                    TextFormField(
                      controller: _emailController,
                      decoration:  InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.shade100,
                        hintText: 'Email',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.grey.shade200, width: .1),
                        ),
                        focusedBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.cyan, width: 2.0)),
                        isDense: true,
                        contentPadding: const EdgeInsets.all(12),
                      ),
                    ),
                    TextFormField(
                      controller: _passwordController,
                      validator: (String? value) {
                        if (value == null && value!.trim().isEmpty) {
                          return 'Password is required';
                        }
                        return null;
                      },
                      obscureText: !showPassword,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                showPassword = !showPassword;
                              });
                            },
                            icon: const Icon(Icons.visibility)),
                        filled: true,
                        fillColor: Colors.grey.shade200,
                        hintText: 'Password',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.grey.shade200, width: .1),
                        ),
                        focusedBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.cyan, width: 2.0)),
                        isDense: true,
                        contentPadding: EdgeInsets.all(8),
                      ),
                    ),
                    Container(
                      width: double.maxFinite,
                      height: 50,
                      child: ElevatedButton(onPressed: () {
                        if ((_emailController.text.trim() == email) && (_passwordController.text.trim() == password)) {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Servicos()),
                            (Route<dynamic> route) => false); 
                        }
                      },
                      child: const Text('Entrar', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),)),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: TextButton(
                  onPressed: () {
                  Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Registro()),
                              (Route<dynamic> route) => false); 
                          },
                          
                child: Text('Criar conta', style: TextStyle(color: Colors.cyan),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}