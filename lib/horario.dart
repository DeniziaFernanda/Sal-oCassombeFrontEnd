import 'package:flutter/material.dart';
import 'package:teste_flutter/finalizar.dart';
import 'package:teste_flutter/perfil.dart';

class Horario extends StatefulWidget {
  const Horario({super.key});

  @override
  State<Horario> createState() => _MyHorario();
}

class _MyHorario extends State<Horario> {
  List<bool> isHover = [false, false, false, false, false, false, false, false];

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
                      'Horario',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 400,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    isHover.replaceRange(0, isHover.length, isHover.map((e) => false));
                                    isHover[0] = true;
                                  });
                                },
                                child: Container(
                                  width: 100,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: isHover[0] == false
                                        ? Colors.grey.shade300
                                        : Colors.cyan,
                                    border: Border.all(
                                      width: 5,
                                      color: isHover[0] == false
                                          ? Colors.grey.shade300
                                          : Colors.cyan,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(child: Text("08 : 00")),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    isHover.replaceRange(0, isHover.length, isHover.map((e) => false));
                                    isHover[1] = true;
                                  });
                                },
                                child: Container(
                                  width: 100,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: isHover[1] == false
                                        ? Colors.grey.shade300
                                        : Colors.cyan,
                                    border: Border.all(
                                      width: 5,
                                      color: isHover[1] == false
                                          ? Colors.grey.shade300
                                          : Colors.cyan,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(child: Text("10 : 00")),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    isHover.replaceRange(0, isHover.length, isHover.map((e) => false));
                                    isHover[2] = true;
                                  });
                                },
                                child: Container(
                                  width: 100,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: isHover[2] == false ? Colors.grey.shade300 : Colors.cyan,
                                    border: Border.all(
                                        width: 5, color: isHover[2] == false ? Colors.grey.shade300 : Colors.cyan,),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(child: Text("12 : 00")),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    isHover.replaceRange(0, isHover.length, isHover.map((e) => false));
                                    isHover[3] = true;
                                  });
                                },
                                child: Container(
                                  width: 100,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: isHover[3] == false ? Colors.grey.shade300 : Colors.cyan,
                                    border: Border.all(
                                        width: 5, color: isHover[3] == false ? Colors.grey.shade300 : Colors.cyan,),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(child: Text("14 : 00")),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    isHover.replaceRange(0, isHover.length, isHover.map((e) => false));
                                    isHover[4] = true;
                                  });
                                },
                                child: Container(
                                  width: 100,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: isHover[4] == false ? Colors.grey.shade300 : Colors.cyan,
                                    border: Border.all(
                                        width: 5, color: isHover[4] == false ? Colors.grey.shade300 : Colors.cyan,),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(child: Text("16 : 00")),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    isHover.replaceRange(0, isHover.length, isHover.map((e) => false));
                                    isHover[5] = true;
                                  });
                                },
                                child: Container(
                                  width: 100,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: isHover[5] == false ? Colors.grey.shade300 : Colors.cyan,
                                    border: Border.all(
                                        width: 5, color: isHover[5] == false ? Colors.grey.shade300 : Colors.cyan,),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(child: Text("18 : 00")),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    isHover.replaceRange(0, isHover.length, isHover.map((e) => false));
                                    isHover[6] = true;
                                  });
                                },
                                child: Container(
                                  width: 100,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: isHover[6] == false ? Colors.grey.shade300 : Colors.cyan,
                                    border: Border.all(
                                        width: 5, color: isHover[6] == false ? Colors.grey.shade300 : Colors.cyan,),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(child: Text("19 : 00")),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    isHover.replaceRange(0, isHover.length, isHover.map((e) => false));
                                    isHover[7] = true;
                                  });
                                },
                                child: Container(
                                  width: 100,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: isHover[7] == false ? Colors.grey.shade300 : Colors.cyan,
                                    border: Border.all(
                                        width: 5, color: isHover[7] == false ? Colors.grey.shade300 : Colors.cyan,),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(child: Text("20 : 00")),
                                ),
                              ),
                            ],
                          ),
                        ],
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
                                    builder: (context) => Finalizar()),
                                (Route<dynamic> route) => false);
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
