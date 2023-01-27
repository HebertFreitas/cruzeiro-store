import 'package:flutter/material.dart';

class ElencoComponent extends StatefulWidget {
  const ElencoComponent({super.key});

  @override
  State<ElencoComponent> createState() => _ElencoComponentState();
}

class _ElencoComponentState extends State<ElencoComponent> {
  final List<Map<String, Object>> _elencoItems = [
    {
      'image': 'assets/RAFAEL_CABRAL.png',
      'title': 'Rafael Cabral',
      'position': 'Goleiro'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 3,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 25.0),
        child: Column(
          children: _elencoItems
              .asMap()
              .map(
                (index, item) => MapEntry(
                  index,
                  Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          //  const  ScrollLoopAutoScroll(
                          //     child: const Text(''),
                          //     scrollDirection: Axis.horizontal,
                          //     duration: Duration(seconds: 2),
                          //   ),
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
                                  padding: const EdgeInsets.only(top: 220),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 100,
                                        width: 200,
                                        padding: const EdgeInsets.only(top: 2),
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
                                  padding: const EdgeInsets.only(top: 270),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        width: 110,
                                        height: 40,
                                        padding: const EdgeInsets.only(top: 10),
                                        //margin: EdgeInsets.only(top: 0),
                                        decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(17),
                                                bottomLeft:
                                                    Radius.circular(17)),
                                            color: Color.fromARGB(
                                                255, 90, 113, 205)),
                                        child: Text(
                                          item['position'] as String,
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
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
                      )),
                ),
              )
              .values
              .toList(),
        ),
      ),
    );
  }
}
