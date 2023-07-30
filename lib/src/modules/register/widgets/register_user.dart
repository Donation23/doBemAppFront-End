import 'package:flutter/material.dart';

class RegisterUser extends StatefulWidget {
  const RegisterUser({super.key});

  @override
  State<RegisterUser> createState() => _RegisterUserState();
}

class _RegisterUserState extends State<RegisterUser> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Padding(padding: EdgeInsets.only(top: 20)),
        Text("Nome"),
        TextField(),
        Padding(padding: EdgeInsets.only(top: 10)),
        Text("Email"),
        TextField(),
        Padding(padding: EdgeInsets.only(top: 10)),
        Text("Telefone"),
        TextField(),
        Padding(padding: EdgeInsets.only(top: 10)),
        Text("Senha"),
        TextField(),
        Padding(padding: EdgeInsets.only(top: 10)),
        Text("Confirmar senha"),
        TextField(),
      ],
    );
  }
}
