import 'package:flutter/material.dart';
import 'package:flutter_aplication_estacionamento/_core/app_colors.dart';
import 'package:flutter_aplication_estacionamento/widgets/drawer.dart';
import 'package:flutter_aplication_estacionamento/widgets/navbar_widget.dart';

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
            NavbarWidget(),
            SizedBox(height: 25),

            Container(
              height: 140,
              width: 380,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: AppColors.secondaryColor, width: 2.0),
              ),
              child: Row(
                children: [
                  Container(
                    width: 20,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(18),
                        bottomLeft: Radius.circular(18),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15.0,
                      vertical: 6,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Regularizado',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('Placa: EXZ-3345'),
                        Text('Data: 16/03/25'),
                        Text('Endereço: Rua Monteiro Lobato'),
                        Text('Descrição: Estacionar sem ticket'),
                        Text('Valor: R\$5,00'),
                        // Text(
                        //   '   Placa        : EXZ-3345\n   Data         : 16/03/25\n   Endereço : Rua Monteiro Lobato\n   Descricao: Estacionar sem ticket\n   Valor        : R\$ 5,00',
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 140,
              width: 380,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: AppColors.secondaryColor, width: 2.0),
              ),
              child: Row(
                children: [
                  Container(
                    width: 20,
                    height: 200,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(253, 195, 2, 1),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(18),
                        bottomLeft: Radius.circular(18),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15.0,
                      vertical: 6,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Pendente',
                              style: TextStyle(
                                fontSize: 16,
                                color: const Color.fromARGB(255, 253, 195, 2),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Text('Placa: KYX-2345'),
                        Text('Data: 22/03/25'),
                        Text('Endereço: Rua Projetada'),
                        Text('Descrição: Estacionar sem ticket'),
                        Text('Valor: R\$5,00'),
                        // Text(
                        //   '   Placa        : kyx-2345\n   Data         : 22/03/25\n   Endereço : Rua Projetada\n   Descricao: Estacionar sem ticket\n   Valor        : R\$ 5,00',
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 140,
              width: 380,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: AppColors.secondaryColor, width: 2.0),
              ),
              child: Row(
                children: [
                  Container(
                    width: 20,
                    height: 200,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 174, 20, 9),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(18),
                        bottomLeft: Radius.circular(18),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15.0,
                      vertical: 6,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Expirado',
                          style: TextStyle(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 174, 20, 9),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('Placa: MLX-3335'),
                        Text('Data: 15/04/25'),
                        Text('Endereço: Av. Voluntarios da Patria'),
                        Text('Descrição: Estacionar sem ticket'),
                        Text('Valor: R\$5,00'),
                        // Text(
                        //   '   Placa        : mlx-3335\n   Data         : 15/04/25\n   Endereço : Av Voluntarios da Patria\n   Descricao: Estacionar sem ticket\n   Valor        : R\$ 5,00',
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 120),
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
