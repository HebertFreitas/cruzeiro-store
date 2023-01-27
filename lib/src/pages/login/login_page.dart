import 'package:flutter/material.dart';
import 'package:loja_cec/src/pages/home/home_page.dart';
import 'package:loja_cec/src/pages/login/widgets/button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _fomrKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 239, 244),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150.0), // here the desired height
        child: Container(
          color: Color.fromARGB(255, 0, 92, 167),
          padding: const EdgeInsets.only(top: 10),
          height: 300,
          child: Image.asset(
            'assets/socio.png',
          ),
        ),
      ),
      body: Form(
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 200),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: SizedBox(
                    width: 200,
                    child: Center(
                      child: Container(
                        child: Image.asset(
                          'assets/logo.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Padding(
                  padding: EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 0, bottom: 0),
                  //padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        labelText: 'Email',
                        hintText: 'Digite seu email'),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Padding(
                  padding: EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 0, bottom: 0),
                  // padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        labelText: 'Senha',
                        hintText: 'Digite sua senha'),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const SizedBox(
                  height: 50,
                  width: 380,
                  child: ButtonLogin(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
