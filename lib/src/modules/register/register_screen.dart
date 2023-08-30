import 'package:do_bem_front/src/modules/register/register_bloc.dart';
import 'package:do_bem_front/src/modules/register/widgets/register_ong.dart';
import 'package:do_bem_front/src/modules/register/widgets/register_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RegisterScreen extends StatefulWidget {
  @override
  RegisterScreenState createState() => RegisterScreenState();
}

// ignore: deprecated_member_use
class RegisterScreenState extends ModularState<RegisterScreen, RegisterBloc> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _password_confirm = TextEditingController();
  bool _isUser = true;

  @override
  Widget build(BuildContext context) {


    //Retorna o input do usuário se
    Widget ChangeInputs(_isUser) {
      if (_isUser == true) {
        return const RegisterUser();
      } else {
        return const RegisterOng();
      }
    }

    return Scaffold(
        backgroundColor: const Color.fromRGBO(255, 202, 10, 1),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 80),
            height: MediaQuery.of(context).size.height * 1.1,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(25),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)),
                color: Colors.white),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Center(
                          child: TextButton(
                        onPressed: () => {controller.toLoginScreen()},
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: const BoxDecoration(
                            border: Border(
                          bottom: BorderSide(
                              color: Color.fromRGBO(255, 202, 10, 1), width: 2),
                        )),
                        child: Center(
                            child: TextButton(
                          onPressed: () => {},
                          child: const Text(
                            "Registre-se",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                      ),
                    ),
                  ],
                ),
                const Padding(
                    padding: EdgeInsets.only(top: 25),
                    child: Text(
                      "Você é",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w300),
                    )),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(children: [
                        const Text(
                          "Doador",
                          style: TextStyle(fontSize: 18),
                        ),
                        IconButton(
                          icon: Image.asset("assets/images/userImage.png"),
                          iconSize: 120,
                          onPressed: () {
                            setState(() {
                                _isUser = true;
                            });
                          },
                        ),
                      ]),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          const Text(
                            "Ong",
                            style: TextStyle(fontSize: 18),
                          ),
                          IconButton(
                            icon: Image.asset(
                                "assets/images/registerImages/OngProfile.png"),
                            iconSize: 120,
                            onPressed: () {
                              setState(() {
                                _isUser = false;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                
                //inputs
                ChangeInputs(_isUser),
                // Container(
                //   padding: const EdgeInsets.only(top: 0),
                //   margin: const EdgeInsets.only(top: 20),
                //   child: ElevatedButton(
                //     onPressed: () => {},
                //     child: const Text(
                //       "Registrar",
                //     ),
                //   ),
                // )
              ],
            ),
          ),
        ));
  }
}
