import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'login_bloc.dart';

class Login extends StatefulWidget {
  @override
  LoginState createState() => LoginState();
}

class LoginState extends ModularState<Login, LoginBloc> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  bool _validate = true;
  //Auth auth = Modular.get<Auth>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(255, 202, 10, 1),
        body: SingleChildScrollView(
            child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo.png", height: 300),
            Container(
              height: MediaQuery.of(context).size.height / 1.5,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(25),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                  color: Colors.white),
              child: Column(
                children: [
                  //================Login e registro===================//
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: const BoxDecoration(
                              border: Border(
                            bottom: BorderSide(
                                color: Color.fromRGBO(255, 202, 10, 1),
                                width: 2),
                          )),
                          child: Center(
                              child: TextButton(
                            onPressed: () => {},
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                        ),
                      ),
                      Expanded(
                        child: Center(
                            child: TextButton(
                          onPressed: () => {controller.toRegisterScreen()},
                          child: const Text(
                            "Registre-se",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                      ),
                    ],
                  ),

                  //======================Login input===================//
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(padding: EdgeInsets.only(top: 30)),
                      const Text(
                        "Email",
                      ),
                      TextField(
                        onChanged: (value) => {},
                        controller: _email,
                        decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey), // Cor da borda
                          ),
                          prefixIcon: Icon(Icons.email),
                          hintText: 'email@examplo.com',
                          //errorText: !_validate ? "Formato inválido" : null
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(top: 25)),
                      const Text("Senha"),
                      TextField(
                        onChanged: (value) => {},
                        controller: _password,
                        decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey), // Cor da borda
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Esqueceu a senha?',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 31, 114, 240)),
                            ),
                          ),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(top: 25)),
                      Center(
                        child: ElevatedButton(
                          onPressed: () => {},
                          child: const Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        )));
  }
}
