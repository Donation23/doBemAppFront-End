import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'src/app.dart';
import 'src/app_module.dart';

void main() async{
  //await dotenv.load(fileName: ".env");
  runApp(ModularApp(module: AppModule(), child: App(),));
}


