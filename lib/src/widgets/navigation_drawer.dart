import 'package:flutter/material.dart';
import 'package:loja_cec/src/pages/elenco_page/elenco_page.dart';
import 'package:loja_cec/src/pages/home/home_page.dart';
import 'package:loja_cec/src/pages/ingressos/ingressos_page.dart';
import 'package:loja_cec/src/pages/loja/loja_page.dart';

import '../pages/login/login_page.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = const EdgeInsets.fromLTRB(25, 25, 25, 1);

  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final urlImage = 'assets/socio.png';
    return Drawer(
      child: Material(
        color: Color.fromARGB(255, 0, 92, 167),
        child: ListView(children: <Widget>[
          buildHeader(
            urlImage: urlImage,
          ),
          Container(
            padding: padding,
            child: Column(
              children: const [
                SizedBox(height: 12),
              ],
            ),
          ),
          buildMenuItem(
              text: 'Home',
              icon: Icons.home,
              onClicked: () => selectedItem(context, 0)),
          SizedBox(height: 16),
          buildMenuItem(
              text: 'Elenco',
              icon: Icons.engineering_outlined,
              onClicked: () => selectedItem(context, 1)),
          const SizedBox(height: 16),
          buildMenuItem(
              text: 'Ingressos',
              icon: Icons.card_membership_sharp,
              onClicked: () => selectedItem(context, 2)),
          const SizedBox(height: 16),
          buildMenuItem(
              text: 'Loja',
              icon: Icons.storefront_outlined,
              onClicked: () => selectedItem(context, 2)),
          const SizedBox(height: 300),
          const SizedBox(height: 24),
          const Divider(color: Colors.white70),
          SizedBox(
            height: 200,
          ),
          buildMenuItem(
              text: 'Sair',
              icon: Icons.exit_to_app,
              onClicked: () async {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              }),
        ]),
      ),
    );
  }

  Widget buildHeader({
    required String urlImage,
  }) =>
      InkWell(
        child: Center(
          child: Container(
            padding: padding
                .add(const EdgeInsets.only(top: 20, left: 10, right: 10)),
            child: Row(
              children: [
                Image.asset(
                  urlImage,
                  height: 75,
                )
              ],
            ),
          ),
        ),
      );

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(
        text,
        style: TextStyle(color: color, fontSize: 20),
      ),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  // Future<bool> sair() async {
  //   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  //   await sharedPreferences.clear();
  //   return true;
  // }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => HomePage(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const ElencoPage(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const IngressosPage(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const LojaPege(),
        ));
    }
  }
}
