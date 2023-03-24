import 'package:flutter/material.dart';
import 'prueba.dart';

class Options extends StatelessWidget {
  const Options({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Opciones')),
      body: SizedBox(
          width: double.infinity,
          child: Container(
            padding: const EdgeInsets.all(50.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Card(
                    color: const Color(0xFF2F58CD),
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Practice()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: SizedBox(
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: const [
                                    Icon(
                                      Icons.health_and_safety_outlined,
                                      size: 30,
                                      color: Color(0xFFFEFBE9),
                                    )
                                  ],
                                ),
                                Column(
                                  children: const [
                                    Text(
                                      'IMC',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(0xFFFEFBE9)),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        )),
                  ),
                  Card(
                    color: const Color(0xFF537FE7),
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Practice()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: SizedBox(
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: const [
                                    Icon(
                                      Icons.health_and_safety_outlined,
                                      size: 30,
                                      color: Color(0xFFFEFBE9),
                                    )
                                  ],
                                ),
                                Column(
                                  children: const [
                                    Text(
                                      'IMC',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(0xFFFEFBE9)),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        )),
                  ),
                  Card(
                    color: const Color(0xFF97DEFF),
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Practice()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: SizedBox(
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: const [
                                    Icon(
                                      Icons.health_and_safety_outlined,
                                      size: 30,
                                    )
                                  ],
                                ),
                                Column(
                                  children: const [
                                    Text(
                                      'IMC',
                                      style: TextStyle(fontSize: 20),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        )),
                  ),
                  Card(
                    color: const Color(0xFFDEFCF9),
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Practice()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: SizedBox(
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: const [
                                    Icon(
                                      Icons.health_and_safety_outlined,
                                      size: 30,
                                    )
                                  ],
                                ),
                                Column(
                                  children: const [
                                    Text(
                                      'IMC',
                                      style: TextStyle(fontSize: 20),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        )),
                  ),
                ]),
          )),
    );
  }
}
