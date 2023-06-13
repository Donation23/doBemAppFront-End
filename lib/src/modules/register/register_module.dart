import 'package:flutter_modular/flutter_modular.dart';
import '../login/presenter/login_screen.dart';
import 'package:do_bem_front/src/modules/register/register_bloc.dart';
import 'package:do_bem_front/src/modules/register/register_screen.dart';

class RegisterModule extends Module {
  @override
  List<Bind> get binds => [
    Bind<RegisterBloc>((i) => RegisterBloc()),
  ];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) => RegisterScreen()),
  ];
}
