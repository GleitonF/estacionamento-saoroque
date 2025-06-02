import 'package:flutter/material.dart';
import 'package:flutter_aplication_estacionamento/_core/app_colors.dart';
import 'package:flutter_aplication_estacionamento/pages/saldo.dart';
import 'package:flutter_aplication_estacionamento/widgets/drawer.dart';
import 'package:flutter_aplication_estacionamento/widgets/navbar_widget.dart';

class HistoricoEstacionamento extends StatefulWidget {
  const HistoricoEstacionamento({super.key});

  @override
  State<HistoricoEstacionamento> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HistoricoEstacionamento> {
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
          'Histórico',
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
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Data', style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                )),
                Text('Valor', style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                )),
                Text('Tempo', style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                )),
                Text('Total', style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                )),
              ],
            ),
            SizedBox(height: 30),
            Container(
              height: 63,
              width: 380,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: AppColors.secondaryColor,
                  width: 2.0
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('29/03/2025', style: TextStyle(
                    fontSize: 14
                  )),
                  Text('R\$2,00', style: TextStyle(
                    fontSize: 14
                  )),
                  Text('1:00:00', style: TextStyle(
                    fontSize: 14
                  )),
                  Text('R\$40,00', style: TextStyle(
                    fontSize: 14
                  )),
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
                border: Border.all(
                  color: AppColors.secondaryColor,
                  width: 2.0
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('29/04/2025', style: TextStyle(
                    fontSize: 14
                  )),
                  Text('R\$2,00', style: TextStyle(
                    fontSize: 14
                  )),
                  Text('1:00:00', style: TextStyle(
                    fontSize: 14
                  )),
                  Text('R\$38,00', style: TextStyle(
                    fontSize: 14
                  )),
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
                border: Border.all(
                  color: AppColors.secondaryColor,
                  width: 2.0
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('16/05/2025', style: TextStyle(
                    fontSize: 14
                  )),
                  Text('R\$6,00', style: TextStyle(
                    fontSize: 14
                  )),
                  Text('3:00:00', style: TextStyle(
                    fontSize: 14
                  )),
                  Text('R\$32,00', style: TextStyle(
                    fontSize: 14
                  )),
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
                border: Border.all(
                  color: AppColors.secondaryColor,
                  width: 2.0
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('29/06/2025', style: TextStyle(
                    fontSize: 14
                  )),
                  Text('R\$2,00', style: TextStyle(
                    fontSize: 14
                  )),
                  Text('1:00:00', style: TextStyle(
                    fontSize: 14
                  )),
                  Text('R\$20,00', style: TextStyle(
                    fontSize: 14
                  )),
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
                border: Border.all(
                  color: AppColors.secondaryColor,
                  width: 2.0
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('29/06/2025', style: TextStyle(
                    fontSize: 14
                  )),
                  Text('R\$2,00', style: TextStyle(
                    fontSize: 14
                  )),
                  Text('1:00:00', style: TextStyle(
                    fontSize: 14
                  )),
                  Text('R\$18,00', style: TextStyle(
                    fontSize: 14
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
