import 'package:flutter/material.dart';
import 'package:flutter_aplication_estacionamento/_core/app_colors.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.title});

  final String title;

  @override
  State<Home> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.tertiaryColor,
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          'Página Inicial',
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
