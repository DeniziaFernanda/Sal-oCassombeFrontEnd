import 'dart:io';

import 'package:flutter/material.dart';
import 'package:teste_flutter/sevicos.dart';
import 'package:image_picker/image_picker.dart';

class Perfil extends StatefulWidget {
  @override
  _RegistroState createState() => _RegistroState();
}

class _RegistroState extends State<Perfil> {
  String imageFileSource = '';
  XFile? livroImage;
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                const Text(
                  'Perfil',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  style:  ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.white)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: imageFileSource.isEmpty
                        ? Image(
                            image: AssetImage("assets/image/foto_F1.jpg"),
                            width: 300,
                            height: 200,
                            fit: BoxFit.cover,
                          )
                        : Image.file(
                            File(imageFileSource),
                            fit: BoxFit.cover,
                            width: 300,
                            height: 200,
                          ),
                  ),
                  onPressed: () async {
                    final ImagePicker _picker = ImagePicker();
                    final XFile? image =
                        await _picker.pickImage(source: ImageSource.gallery);

                    if (image != null) {
                      setState(() {
                        livroImage = image;
                        imageFileSource = image.path;
                      });
                    }
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    hintText: 'Nome',
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.grey.shade200, width: .1),
                    ),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.cyan, width: 2.0)),
                    isDense: true,
                    contentPadding: const EdgeInsets.all(12),
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    hintText: 'Email',
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.grey.shade200, width: .1),
                    ),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.cyan, width: 2.0)),
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
                      borderSide:
                          BorderSide(color: Colors.grey.shade200, width: .1),
                    ),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.cyan, width: 2.0)),
                    isDense: true,
                    contentPadding: EdgeInsets.all(8),
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    hintText: 'Telefone',
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.grey.shade200, width: .1),
                    ),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.cyan, width: 2.0)),
                    isDense: true,
                    contentPadding: const EdgeInsets.all(12),
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Servicos()),
                            (Route<dynamic> route) => false);
                      },
                      child: const Text(
                        'Atualizar',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
