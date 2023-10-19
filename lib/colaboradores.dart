import 'package:flutter/material.dart';
import 'package:teste_flutter/horario.dart';
import 'package:teste_flutter/perfil.dart';

class Colaboradores extends StatelessWidget {
  const Colaboradores({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            toolbarHeight: 80,
            backgroundColor: Colors.white,
            elevation: 0.0,
            title: Align(
                alignment: Alignment.centerRight,
                child: CircleAvatar(
                    radius: 40, backgroundColor: Colors.white,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Perfil()));
                      },child: Image.asset('assets/image/foto_F1.jpg')),)),
          ),
          body: Center(
            child: Container(
              color: Colors.white,
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                const Text(
                  'Colaboradores',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Colaboradores()),
                            (Route<dynamic> route) => false);
                      },
                      child: Column(
                        children: [
                          Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 5, color: Colors.grey.shade100),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.asset(
                              'assets/image/foto_F2.jpg',
                            ),
                          ),
                          Text("Marta Arcanjo"),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Colaboradores()),
                            (Route<dynamic> route) => false);
                      },
                      child: Column(
                      children: [
                        Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 5, color: Colors.grey.shade100),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Image.asset(
                            'assets/image/foto_M1.jpg',
                          ),
                        ),
                        Text("Antonio Francisco"),
                      ],
                    ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Colaboradores()),
                            (Route<dynamic> route) => false);
                      },
                      child: Column(
                        children: [
                          Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 5, color: Colors.grey.shade100),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.asset(
                              'assets/image/foto_F3.jpg',
                            ),
                          ),
                          Text("Rossana Luiz"),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Colaboradores()),
                            (Route<dynamic> route) => false);
                      },
                      child: Column(
                      children: [
                        Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 5, color: Colors.grey.shade100),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Image.asset(
                            'assets/image/foto_M2.jpg',
                          ),
                        ),
                        Text("Francisco Micael"),
                      ],
                    ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Colaboradores()),
                            (Route<dynamic> route) => false);
                      },
                      child: Column(
                        children: [
                          Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 5, color: Colors.grey.shade100),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.asset(
                              'assets/image/foto_M3.jpg',
                            ),
                          ),
                          Text("Oliel Marcos"),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Colaboradores()),
                            (Route<dynamic> route) => false);
                      },
                      child: Column(
                      children: [
                        Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 5, color: Colors.grey.shade100),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Image.asset(
                            'assets/image/foto_F2.jpg',
                          ),
                        ),
                        Text("Eliane Carlos"),
                      ],
                    ),
                    ),
                  ],
                ),
                Container(
                  width: double.maxFinite,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,  MaterialPageRoute(
                                builder: (context) => const Horario()));
                      },
                      child: const Text(
                        'Proximo',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )),
                )
              ]),
            ),
          )),
    );
  }
}

