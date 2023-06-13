import 'package:flutter_modular/flutter_modular.dart';
import 'login_screen.dart';

class LoginModule extends Module{
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes =>[
    ChildRoute('/', child: (context, args) => Login()),
  ];
}