import 'package:flutter/material.dart';
import 'package:teste_flutter/perfil.dart';
import 'package:teste_flutter/sevicos.dart';

class Finalizar extends StatelessWidget {
  const Finalizar({super.key});

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
                  'Finalizar',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 400,
                  child: Image.asset('assets/image/cadeir 4.png'),
                ),
                Container(
                  width: double.maxFinite,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,  MaterialPageRoute(
                                builder: (context) => const Servicos()));
                      },
                      child: const Text(
                        'Cadastrar Agendamento',
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
