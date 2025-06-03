import 'package:flutter/material.dart';
import 'package:flutter_aplication_estacionamento/_core/app_colors.dart';
import 'package:flutter_aplication_estacionamento/widgets/drawer.dart';
import 'package:flutter_aplication_estacionamento/widgets/navbar_widget.dart';

class IrregularidadesPendentes extends StatefulWidget {
  const IrregularidadesPendentes({super.key});

  @override
  State<IrregularidadesPendentes> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<IrregularidadesPendentes> {
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
          'Irregularidades',
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
            NavbarWidget(),
            SizedBox(height: 50),
            Text(
              'Irregularidades Pendentes:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Container(
              height: 63,
              width: 380,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: AppColors.secondaryColor, width: 2.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('16/03/25', style: TextStyle(fontSize: 14)),
                  Text('R. XV de Novembro', style: TextStyle(fontSize: 14)),
                  Text('R\$ 5,00', style: TextStyle(fontSize: 14)),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 63,
              width: 380,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: AppColors.secondaryColor, width: 2.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('29/04/25', style: TextStyle(fontSize: 14)),
                  Text('Av. Bandeirantes', style: TextStyle(fontSize: 14)),
                  Text('R\$ 5,00', style: TextStyle(fontSize: 14)),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 63,
              width: 380,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: AppColors.secondaryColor, width: 2.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('29/04/25', style: TextStyle(fontSize: 14)),
                  Text('Av. Bandeirantes', style: TextStyle(fontSize: 14)),
                  Text('R\$ 5,00', style: TextStyle(fontSize: 14)),
                ],
              ),
            ),
            SizedBox(height: 380),
            Text(
              'Para efetuar o pagamento das irregularidades, consulte o site',
              style: TextStyle(
                fontSize: 13,
                decoration: TextDecoration.underline,
              ),
            ),
            Text(
              'https://www.estacionamentofacil.com.br/efacil/?actusuario/',
              style: TextStyle(
                fontSize: 13,
                decoration: TextDecoration.underline,
              ),
            ),
            Text(
              'regularizaV2 ou vá até um posto de atendimento mais próximo.',
              style: TextStyle(
                fontSize: 13,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
