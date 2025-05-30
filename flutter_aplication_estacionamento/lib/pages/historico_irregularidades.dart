import 'package:flutter/material.dart';
import 'package:flutter_aplication_estacionamento/_core/app_colors.dart';
import 'package:flutter_aplication_estacionamento/pages/saldo.dart';
import 'package:flutter_aplication_estacionamento/widgets/drawer.dart';

class HistoricoIrregularidades extends StatefulWidget {
  const HistoricoIrregularidades({super.key});

  @override
  State<HistoricoIrregularidades> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HistoricoIrregularidades> {
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
          'Histórico de Irregularidades',
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
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Data', style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                )),
                Text('Rua', style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                )),
                Text('Descrição', style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                )),
                Text('Valor', style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                )),
              ],
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
                  Text('16/03/25', style: TextStyle(
                    fontSize: 11
                  )),
                  Text('XV de Novembro', style: TextStyle(
                    fontSize: 11
                  )),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Utilização de vaga', style: TextStyle(
                        fontSize: 11
                      )),
                      Text('sem ticket ativo', style: TextStyle(
                        fontSize: 11
                      )),
                    ],
                  ),
                  Text('R\$ 5,00', style: TextStyle(
                    fontSize: 11
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
                  Text('12/05/25', style: TextStyle(
                    fontSize: 11
                  )),
                  Text('Padre Marçal', style: TextStyle(
                    fontSize: 11
                  )),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Utilização de vaga', style: TextStyle(
                        fontSize: 11
                      )),
                      Text('sem ticket ativo', style: TextStyle(
                        fontSize: 11
                      )),
                    ],
                  ),
                  Text('R\$ 5,00', style: TextStyle(
                    fontSize: 11
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
                  Text('10/03/25', style: TextStyle(
                    fontSize: 11
                  )),
                  Text('Av. Bandeirantes', style: TextStyle(
                    fontSize: 11
                  )),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Utilização de vaga', style: TextStyle(
                        fontSize: 11
                      )),
                      Text('sem ticket ativo', style: TextStyle(
                        fontSize: 11
                      )),
                    ],
                  ),
                  Text('R\$ 5,00', style: TextStyle(
                    fontSize: 11
                  )),
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
