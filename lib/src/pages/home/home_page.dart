import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../widgets/navigation_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Image.asset(
            'assets/socio.png',
            height: 46,
          ),
          backgroundColor: Color.fromARGB(255, 0, 92, 167),
        ),
        body: Stack(
          children: [
            SizedBox(
              height: 60,
            ),
            Container(
              color: Color.fromARGB(255, 58, 62, 91),
              child: Column(
                children: [
                  Container(
                    height: 100,
                    decoration:
                        BoxDecoration(color: Color.fromARGB(255, 90, 94, 136)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
