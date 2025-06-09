import 'package:flutter/material.dart';
import 'package:flutter_aplication_estacionamento/_core/app_colors.dart';
import 'package:flutter_aplication_estacionamento/pages/home/Home.dart';
import 'package:flutter_aplication_estacionamento/widgets/drawer.dart';
import 'package:flutter_aplication_estacionamento/widgets/error_modal.dart';
import 'package:flutter_aplication_estacionamento/widgets/navbar_widget.dart';
import 'package:flutter_aplication_estacionamento/widgets/verified_modal.dart';

class CompraCredito extends StatefulWidget {
  const CompraCredito({super.key});

  @override
  State<CompraCredito> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<CompraCredito> {
  int? selectedValue;
  String? formaPagamentoSelecionada; // <-- Nova variável de controle

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
          'Compra de Créditos',
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
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(color: AppColors.primaryColor),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('R\$ 2,00 = 1 hora'),
                      Text('R\$ 4,00 = 2 horas'),
                      Text('R\$ 6,00 = 3 horas'),
                      SizedBox(height: 10),
                      Center(
                        child: Text(
                          'Selecione o valor da compra:',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      SizedBox(height: 20),

                      Center(
                        child: Wrap(
                          spacing: 12,
                          runSpacing: 12,
                          alignment: WrapAlignment.center,
                          children:
                              [2, 4, 6, 8, 10, 20, 50, 100, 200].map((valor) {
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedValue = valor;
                                    });
                                  },
                                  child: SizedBox(
                                    width: 100, // largura fixa para todos
                                    height: 45,
                                    child: Container(
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color:
                                            selectedValue == valor
                                                ? AppColors.secondaryColor
                                                : Colors.transparent,
                                        border: Border.all(
                                          color: AppColors.secondaryColor,
                                          width: 2.0,
                                        ),
                                        borderRadius: BorderRadius.circular(9),
                                      ),
                                      child: Text(
                                        'R\$ ${valor.toStringAsFixed(2).replaceAll('.', ',')}',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color:
                                              selectedValue == valor
                                                  ? Colors.white
                                                  : Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }).toList(),
                        ),
                      ),

                      SizedBox(height: 20),
                      Text(
                        'Outro valor:',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: Text(
                          'Selecione a forma de pagamento:',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),

                      RadioListTile<String>(
                        title: Text('Cartão de crédito'),
                        value: 'cartaoCredito',
                        groupValue: formaPagamentoSelecionada,
                        activeColor: AppColors.secondaryColor,
                        onChanged: (value) {
                          setState(() {
                            formaPagamentoSelecionada = value;
                          });
                        },
                      ),
                      RadioListTile<String>(
                        title: Text('Pix'),
                        value: 'pix',
                        groupValue: formaPagamentoSelecionada,
                        activeColor: AppColors.secondaryColor,
                        onChanged: (value) {
                          setState(() {
                            formaPagamentoSelecionada = value;
                          });
                        },
                      ),
                      RadioListTile<String>(
                        title: Text('Boleto'),
                        value: 'boleto',
                        groupValue: formaPagamentoSelecionada,
                        activeColor: AppColors.secondaryColor,
                        onChanged: (value) {
                          setState(() {
                            formaPagamentoSelecionada = value;
                          });
                        },
                      ),
                      RadioListTile<String>(
                        title: Text('Cartão de débito'),
                        value: 'cartaoDebito',
                        groupValue: formaPagamentoSelecionada,
                        activeColor: AppColors.secondaryColor,
                        onChanged: (value) {
                          setState(() {
                            formaPagamentoSelecionada = value;
                          });
                        },
                      ),
                      RadioListTile<String>(
                        title: Text('Google Play'),
                        value: 'googlePlay',
                        groupValue: formaPagamentoSelecionada,
                        activeColor: AppColors.secondaryColor,
                        onChanged: (value) {
                          setState(() {
                            formaPagamentoSelecionada = value;
                          });
                        },
                      ),

                      SizedBox(height: 20),
                      Center(
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: AppColors.secondaryColor,
                            padding: EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 15,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {
                            if (formaPagamentoSelecionada == null) {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return ErrorModal(
                                    title: 'Erro ao realizar o pagamento',
                                    subtitle:
                                        'Selecione uma forma de pagamento',
                                  );
                                },
                              );
                            } else {
                              showDialog(
                                barrierDismissible: false,
                                context: context,
                                builder: (BuildContext context) {
                                  return VerifiedModal(
                                    title: 'Compra realizada com sucesso!',
                                    navigation: () {
                                      Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Home(),
                                        ),
                                        (route) => false,
                                      );
                                    },
                                    confirm: 'Voltar',
                                  );
                                },
                              );
                            }
                          },
                          child: Text(
                            'Comprar',
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 20),
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
