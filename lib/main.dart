import 'package:bases_web/locator.dart';
import 'package:flutter/material.dart';

import 'package:bases_web/routes/routes.dart';
import 'package:bases_web/ui/layouts/layouts.dart';
import 'package:bases_web/ui/services/services.dart';

void main() {
  setupLocator();
  Routes.configureRoutes();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bases App',
      initialRoute: '/',
      onGenerateRoute: Routes.fluroRouter.generator,
      navigatorKey: locator<NavigatorService>().navigatorKey,
      builder: (BuildContext context, Widget? view) {
        return MainLayout(
          child: view ?? const SizedBox(),
        );
      },
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.white
      ),
    );
  }
}