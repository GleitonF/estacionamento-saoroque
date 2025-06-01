import 'package:flutter/material.dart';
import 'package:flutter_aplication_estacionamento/pages/Home.dart';
import 'package:flutter_aplication_estacionamento/_core/app_colors.dart';
import 'package:lottie/lottie.dart';

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
      backgroundColor: Color(0XFFEBDEF4),

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
                valueColor: AlwaysStoppedAnimation<Color>(Color(0xcc6B088C)),
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
                      activeColor: Color(0xcc6B088C),
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
                        return AlertDialog(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Erro ao cadastrar usuário!'),
                            ],
                          ),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Lottie.asset('assets/lotties/error.json'),
                              Text(
                                'Você precisa aceitar os termos para continuar!',
                              ),
                            ],
                          ),
                          actions: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextButton(
                                  style: TextButton.styleFrom(
                                    backgroundColor: AppColors.secondaryColor,
                                    padding: EdgeInsets.symmetric(horizontal: 80),
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    'Tente Novamente',
                                    style: TextStyle(
                                      color: AppColors.primaryColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        );
                      } else {
                        return AlertDialog(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('Cadastro realizado com'),
                              Text('sucesso!'),
                            ],
                          ),
                          content: Lottie.asset('assets/lotties/verified.json'),
                          actions: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextButton(
                                  style: TextButton.styleFrom(
                                    backgroundColor: AppColors.secondaryColor,
                                    padding: EdgeInsets.symmetric(horizontal: 80),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Home(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'Ir para a tela inicial',
                                    style: TextStyle(
                                      color: AppColors.primaryColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
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
              SizedBox(height: 50),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 42,
                  width: 280,
                  decoration: BoxDecoration(
                    color: Color(0xcc6B088C),
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
