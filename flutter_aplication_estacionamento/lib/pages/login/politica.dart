import 'package:flutter/material.dart';
import 'package:flutter_aplication_estacionamento/_core/app_colors.dart';


class Politica extends StatefulWidget {
  const Politica({super.key});

  @override
  State<Politica> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Politica> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 730,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                        'Políticas de Privacidade',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 30),
                      Text(
                        'Lorem ipsum dolor sit amet. Sed maiores ',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet. Sed maiores ',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet. Sed maiores ',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet. Sed maiores ',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet. Sed maiores ',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet. Sed maiores ',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet. Sed maiores ',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet. Sed maiores ',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet. Sed maiores ',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet. Sed maiores ',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet. Sed maiores ',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet. Sed maiores ',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet. Sed maiores ',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet. Sed maiores ',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet. Sed maiores ',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet. Sed maiores ',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet. Sed maiores ',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet. Sed maiores ',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet. Sed maiores ',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet. Sed maiores ',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet. Sed maiores ',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet. Sed maiores ',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 60),
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
                                'Voltar',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: AppColors.primaryColor,
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
            ),
          ],
        ),
      ),
    );
  }
}
