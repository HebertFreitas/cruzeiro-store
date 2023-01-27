import 'package:flutter/material.dart';
import 'package:scroll_loop_auto_scroll/scroll_loop_auto_scroll.dart';

class ElencoPage extends StatefulWidget {
  const ElencoPage({super.key});

  @override
  State<ElencoPage> createState() => _ElencoPageState();
}

class _ElencoPageState extends State<ElencoPage> {
  final List<Map<String, Object>> _elencoItems = [
    {
      'image': 'assets/RAFAEL_CABRAL.png',
      'title': 'Rafael Cabral',
      'position': 'Goleiro'
    },
    {'image': 'assets/DENIVYS.png', 'title': 'Denivys', 'position': 'Goleiro'},
    // {
    //   'image': 'assets/gabriel_mesquita.png',
    //   'title': 'Gabriel Mesquita',
    //   'position': 'Goleiro'
    // },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/escudo.png',
          height: 50,
        ),
        backgroundColor: Color.fromARGB(255, 0, 92, 167),
      ),
      body: Stack(
        children: [
          const SizedBox(
            height: 60,
          ),
          Container(
            color: const Color.fromARGB(255, 255, 255, 255),
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 27, 64, 166)),
                  child: const Center(
                    child: Text(
                      'Elenco Masculino',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255)),
                  child: const Center(
                    child: Text(
                      'Conheça o nosso elenco masculino de futebol',
                      style: TextStyle(
                          color: Color.fromARGB(221, 20, 19, 19),
                          fontSize: 20,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                Column(
                  children: _elencoItems
                      .asMap()
                      .map(
                        (index, item) => MapEntry(
                          index,
                          SizedBox(
                            height: 300,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                const SizedBox(
                                  width: 16,
                                ),
                                Container(
                                  width: 200,
                                  color: Colors.purple[600],
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: 200,
                                        color: Colors.white,
                                        child: Center(
                                          child: Image.asset(
                                            item['image'] as String,
                                            width: 300,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 220),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 100,
                                              width: 200,
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              //margin: EdgeInsets.only(top: 0),
                                              decoration: const BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 22, 35, 85)),
                                              child: Text(
                                                item['title'] as String,
                                                style: const TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 270),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              color: Colors.white,
                                              height: 100,
                                              width: 200,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 250, right: 45),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              width: 110,
                                              height: 40,
                                              padding: const EdgeInsets.only(
                                                  top: 10),
                                              //margin: EdgeInsets.only(top: 0),
                                              decoration: const BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topRight:
                                                              Radius.circular(
                                                                  17),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  17)),
                                                  color: Color.fromARGB(
                                                      255, 90, 113, 205)),
                                              child: Text(
                                                item['position'] as String,
                                                style: const TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                      .values
                      .toList(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
