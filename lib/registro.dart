import 'package:flutter/material.dart';
import 'package:teste_flutter/sevicos.dart';

class Registro extends StatefulWidget {
  @override
  _RegistroState createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            width: 300,
            height: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                const Text('Registro', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
                 TextFormField(
                  decoration:  InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    hintText: 'Nome',
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
                 TextFormField(
                  decoration:  InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    hintText: 'Telefone',
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
                Container(
                  width: double.maxFinite,
                  height: 50,
                  child: ElevatedButton(onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Servicos()),
                        (Route<dynamic> route) => false); 
                  },
                  child: const Text('Registrar -se', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}