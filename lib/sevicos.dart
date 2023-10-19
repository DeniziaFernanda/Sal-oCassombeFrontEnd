import 'package:flutter/material.dart';
import 'package:teste_flutter/colaboradores.dart';
import 'package:teste_flutter/perfil.dart';

class Servicos extends StatelessWidget {
  const Servicos({super.key});

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
                        Navigator.push(context,  MaterialPageRoute(
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
                  'Serviços',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Servicos()),
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
                              'assets/image/cort1.jpg',
                            ),
                          ),
                          Text("Corte de Cabelo"),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Servicos()),
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
                            'assets/image/lava1.jpg',
                          ),
                        ),
                        Text("Massagem"),
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
                                builder: (context) => const Servicos()),
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
                              'assets/image/pinta1.jpg',
                            ),
                          ),
                          Text("Pintar o Cabelo"),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Servicos()),
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
                            'assets/image/pedicure.png',
                          ),
                        ),
                        Text("Pedicure"),
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
                                builder: (context) => const Servicos()),
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
                              'assets/image/cabe1.png',
                            ),
                          ),
                          Text("Lavagem do Cabelo"),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Servicos()),
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
                            'assets/image/tra2.png',
                          ),
                        ),
                        Text("Trança"),
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
                                builder: (context) => const Colaboradores()));
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
