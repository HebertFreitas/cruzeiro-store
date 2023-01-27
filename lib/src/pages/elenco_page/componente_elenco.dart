import 'package:flutter/material.dart';

class ElencoComponent extends StatefulWidget {
  final String title;
  final String position;
  final String image;
  const ElencoComponent(
      {super.key,
      required this.title,
      required this.position,
      required this.image});

  @override
  State<ElencoComponent> createState() => _ElencoComponentState();
}

class _ElencoComponentState extends State<ElencoComponent> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 25.0),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Container(
              width: 200,
              color: Colors.purple[600],
              child: Stack(
                children: [
                  Container(
                    width: 200,
                    color: Colors.white,
                    child: Center(
                      child: Image.asset(
                        widget.image,
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
                              color: Color.fromARGB(255, 22, 35, 85)),
                          child: Text(
                            widget.title,
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
                    padding: const EdgeInsets.only(top: 250, right: 45),
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
                                  bottomLeft: Radius.circular(17)),
                              color: Color.fromARGB(255, 90, 113, 205)),
                          child: Text(
                            widget.position,
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
          ),
        ]),
      ),
    );
  }
}
