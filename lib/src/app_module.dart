import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';

import 'modules/login/presenter/login_bloc.dart';
import 'modules/login/presenter/login_module.dart';
import 'modules/splashscreen/presenter/splash_screen.dart';
import 'modules/splashscreen/presenter/splash_screen_bloc.dart';

class AppModule extends Module{
  @override
  List<Bind> get binds => [
    Bind<Dio>((i)=>Dio()),
    //Bind<Auth>((i)=>Auth()),
    /*Bind<User>((i)=>User(
      id: 0,
      name: "Nome de teste",
      image: "https://pbs.twimg.com/profile_images/1480660529840492546/nTVLSngG_400x400.jpg",
      email: "tirarDepois@ufrn.edu.br"
    )),*/

    Bind<SplashScreenBloc>((i) => SplashScreenBloc()),
    Bind<LoginBloc>((i) => LoginBloc()),
    //Bind<RegisterBloc>((i) => RegisterBloc()),

  ];

  @override
  List<ModularRoute> get routes =>[
    ChildRoute('/', child: (context, args) => const SplashScreen()),
    ModuleRoute(
        '/login',
        module: LoginModule(),
        transition: TransitionType.fadeIn
    ),

  ];

}