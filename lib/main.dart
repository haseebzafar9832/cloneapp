import 'package:appcloner/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Trox-pi',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   primaryColor: Colors.deepPurple,
      //   scaffoldBackgroundColor: const Color(0xff1e1e1e),
      //   useMaterial3: true,
      //   appBarTheme: const AppBarTheme(color: Color(0xff323232)),
      // ),
      initialRoute: '/dashboard',
      getPages: appRoutes(),
    );
  }
}
