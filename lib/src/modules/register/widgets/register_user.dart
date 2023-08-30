import 'package:flutter/material.dart';

class RegisterUser extends StatefulWidget {
  const RegisterUser({super.key});

  @override
  State<RegisterUser> createState() => _RegisterUserState();
}

class _RegisterUserState extends State<RegisterUser> {

  var confirmPassword;
  @override
  Widget build(BuildContext context) {
    return Form(
        autovalidateMode: AutovalidateMode.always,
        onChanged: () {
          Form.of(primaryFocus!.context!)?.save();
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Nome Completo',
                label: Text('Nome'),
              ),
              validator: (value) {
                if (false) {
                  return '';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Email',
                label: Text('Email'),
              ),
              validator: (String? value) {
                if (value != null &&
                    !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value)) {
                  return ('Digite um email válido');
                }
              },
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: 'Telefone para contato',
                label: Text('Telefone'),
              ),
              validator: (value) {
                if (false) {
                  return '';
                }
                return null;
              },
            ),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Digite a senha',
                label: Text('Senha'),
              ),
              validator: (value) {
                confirmPassword = value;
                if (!RegExp(r"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$")
                    .hasMatch(value!)) {
                  return ('No minímo 8 caracteres, uma letra e um número');
                }
                return null;
              },
            ),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Digite a senha novamente',
                label: Text('Confirmar senha'),
              ),
              validator: (value) {
                if (value!=confirmPassword) {
                  return 'Senhas são diferentes';
                }
                return null;
              },
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.only(top: 0),
                margin: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  onPressed: () => {},
                  child: const Text(
                    "Registrar",
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
