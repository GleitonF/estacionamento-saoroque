import 'package:flutter/material.dart';
import 'package:flutter_aplication_estacionamento/_core/app_colors.dart';
import 'package:flutter_aplication_estacionamento/pages/home/Home.dart';
import 'package:flutter_aplication_estacionamento/widgets/error_modal.dart';
import 'package:flutter_aplication_estacionamento/widgets/verified_modal.dart';

class Cadastro3 extends StatefulWidget {
  const Cadastro3({super.key, required this.title});

  final String title;

  @override
  State<Cadastro3> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Cadastro3> {
  bool _termosAceitos = false; //caixa de checkbox

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,

      body: Padding(
        padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Text('Cadastro de novo usuário', style: TextStyle(fontSize: 16)),
              SizedBox(height: 30),
              LinearProgressIndicator(
                value: 1,
                minHeight: 10,
                backgroundColor: Colors.purple[100],
                valueColor: AlwaysStoppedAnimation<Color>(
                  AppColors.secondaryColor,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              SizedBox(height: 10),
              Text('Passo 3 de 3', style: TextStyle(fontSize: 16)),
              SizedBox(height: 50),
              Text(
                'Termos de uso',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 50),
              Text(
                'Lorem ipsum dolor sit amet. Sed maiores ',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Lorem ipsum dolor sit amet. Sed maiores ',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Lorem ipsum dolor sit amet. Sed maiores ',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Lorem ipsum dolor sit amet. Sed maiores ',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Lorem ipsum dolor sit amet. Sed maiores ',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Lorem ipsum dolor sit amet. Sed maiores ',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Lorem ipsum dolor sit amet. Sed maiores ',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Lorem ipsum dolor sit amet. Sed maiores ',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Lorem ipsum dolor sit amet. Sed maiores ',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Lorem ipsum dolor sit amet. Sed maiores ',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Lorem ipsum dolor sit amet. Sed maiores ',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Lorem ipsum dolor sit amet. Sed maiores ',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 50),
              Padding(
                //Este padding é a caixa de checkbox
                padding: const EdgeInsets.only(left: 25),
                child: Row(
                  children: [
                    Checkbox(
                      value: _termosAceitos,
                      onChanged: (bool? value) {
                        setState(() {
                          _termosAceitos = value ?? false;
                        });
                      },
                      activeColor: AppColors.secondaryColor,
                    ),
                    Expanded(
                      child: Text(
                        'Li e concordo com os termos.',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      if (_termosAceitos == false) {
                        return ErrorModal(
                          title: 'Erro ao cadastrar usuário',
                          subtitle:
                              'Você precisa aceitar os termos de uso para continuar',
                        );
                      } else {
                        return VerifiedModal(
                          title: 'Usuário cadastrado com sucesso',
                          navigation: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Home()),
                            );
                          },
                          confirm: 'Começar',
                        );
                      }
                    },
                  );
                },
                child: Container(
                  height: 42,
                  width: 280,
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    borderRadius: BorderRadius.circular(9),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Finalizar',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 42,
                  width: 280,
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    borderRadius: BorderRadius.circular(9),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Cancelar',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
