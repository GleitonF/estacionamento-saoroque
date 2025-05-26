import 'package:flutter/material.dart';
import 'package:flutter_aplication_estacionamento/_core/app_colors.dart';
import 'package:flutter_aplication_estacionamento/pages/Home.dart';
import 'package:flutter_aplication_estacionamento/pages/Login.dart';
import 'package:flutter_aplication_estacionamento/pages/cadastro_3.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: AppColors.backgroundColor),
      home: const Login(title: 'Flutter Demo Home Page'),
    );
  }
}
