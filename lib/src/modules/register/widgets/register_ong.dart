import 'package:flutter/material.dart';

class RegisterOng extends StatefulWidget {
  const RegisterOng({super.key});

  @override
  State<RegisterOng> createState() => _RegisterOngState();
}

class _RegisterOngState extends State<RegisterOng> {
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
                hintText: 'Nome da Instituição',
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
              decoration: const InputDecoration(
                hintText: '0. 000. 000/0001-00',
                label: Text('CNPJ'),
              ),
              validator: (value) {
                if (false) {
                  return '';
                }
                return null;
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
