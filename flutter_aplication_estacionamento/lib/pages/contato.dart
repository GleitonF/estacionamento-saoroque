import 'package:flutter/material.dart';
import 'package:flutter_aplication_estacionamento/_core/app_colors.dart';
import 'package:flutter_aplication_estacionamento/pages/saldo.dart';
import 'package:flutter_aplication_estacionamento/widgets/drawer.dart';
import 'package:lottie/lottie.dart';

class Contato extends StatefulWidget {
  const Contato({super.key});

  @override
  State<Contato> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Contato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(
        backgroundColor: AppColors.primaryColor,
        child: ListView(),
      ),
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          'Contato',
          style: TextStyle(
            color: AppColors.secondaryColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: AppColors.secondaryColor),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(color: AppColors.primaryColor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    spacing: 5,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: AppColors.secondaryColor,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.home_outlined,
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ),
                      Text('Início'),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Saldo()),
                      );
                    },
                    child: Row(
                      spacing: 5,
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: AppColors.secondaryColor,
                          child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Saldo(),
                                ),
                              );
                            },
                            icon: Icon(
                              Icons.savings,
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ),
                        Text('Saldo'),
                      ],
                    ),
                  ),
                  Row(
                    spacing: 5,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: AppColors.secondaryColor,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.refresh_outlined,
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ),
                      Text('Historico'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 700,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text('Contato', style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      )),
                      SizedBox(height: 30),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Nome completo',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 40),
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 40),
                      TextField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          labelText: 'Número de telefone (com DDD)',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 40),
                       TextField(
                        decoration: InputDecoration(
                          labelText: 'Assunto',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 40),
                       TextField(
                        maxLines: 5,
                        decoration: InputDecoration(
                          labelText: 'Mensagem',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 22),
                      Container(
                        height: 42,
                        width: 150,
                        decoration: BoxDecoration(
                          color: AppColors.secondaryColor,
                          borderRadius: BorderRadius.circular(9)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Enviar', style: TextStyle(
                              color: AppColors.primaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                            )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
