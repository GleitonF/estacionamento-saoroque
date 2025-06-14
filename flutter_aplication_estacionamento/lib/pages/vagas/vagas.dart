import 'package:flutter/material.dart';
import 'package:flutter_aplication_estacionamento/_core/app_colors.dart';

import 'package:flutter_aplication_estacionamento/widgets/drawer.dart';
import 'package:flutter_aplication_estacionamento/widgets/navbar_widget.dart';
import 'package:flutter_aplication_estacionamento/widgets/verified_modal.dart';

class Vagas extends StatefulWidget {
  const Vagas({super.key});

  @override
  State<Vagas> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Vagas> {

  ValueNotifier<bool> botao1 = ValueNotifier(false);
  ValueNotifier<bool> botao2 = ValueNotifier(false);
  ValueNotifier<bool> botao3 = ValueNotifier(false);

  ValueNotifier<bool> min1 = ValueNotifier(false);
  ValueNotifier<bool> min2 = ValueNotifier(false);
  ValueNotifier<bool> min3 = ValueNotifier(false);

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
          'Vagas',
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
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 420,
                decoration: BoxDecoration(color: AppColors.primaryColor),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Selecionar veículo',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Divider(color: Colors.grey, thickness: 1),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.all(10),
                              backgroundColor: AppColors.secondaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Text(
                                        'Cadastro de Veículo',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      content: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SizedBox(height: 10),
                                          Row(
                                            children: [
                                              Text('Insira a Placa do Veículo'),
                                            ],
                                          ),
                                          SizedBox(height: 10),
                                          TextFormField(
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                            ),
                                          ),
                                          SizedBox(height: 30),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              TextButton(
                                                style: TextButton.styleFrom(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 19,
                                                  ),
                                                  backgroundColor:
                                                      AppColors.primaryColor,
                                                  shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                      color:
                                                          AppColors
                                                              .secondaryColor,
                                                      width: 2,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          5,
                                                        ),
                                                  ),
                                                ),
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Text(
                                                  'Cancelar',
                                                  style: TextStyle(
                                                    color:
                                                        AppColors
                                                            .secondaryColor,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),

                                              TextButton(
                                                style: TextButton.styleFrom(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 15,
                                                  ),
                                                  backgroundColor:
                                                      AppColors.secondaryColor,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          5,
                                                        ),
                                                  ),
                                                ),
                                                onPressed: () {
                                                  showDialog(
                                                    context: context,
                                                    builder: (context) {
                                                      return VerifiedModal(
                                                        title:
                                                            'Veículo cadastrado com sucesso!',
                                                        navigation: () {
                                                          Navigator.pop(
                                                            context,
                                                          );
                                                        },
                                                        confirm: 'OK',
                                                      );
                                                    },
                                                  );
                                                },
                                                child: Text(
                                                  'Confirmar',
                                                  style: TextStyle(
                                                    color:
                                                        AppColors.primaryColor,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                            },
                            child: Text(
                              'Adicionar Veículo',
                              style: TextStyle(
                                color: AppColors.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Divider(color: Colors.grey, thickness: 1),
                    Padding(
                      padding: const EdgeInsets.only(top: 50, left: 30),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Selecione a duração:',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.secondaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Center(
                                        child: Text(
                                          'Selecione a duração',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      content: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          ValueListenableBuilder(
                                            valueListenable: botao1,
                                            builder: (BuildContext context, value, Widget? child) { 
                                              return TextButton(
                                              style: TextButton.styleFrom(
                                                backgroundColor: botao1.value ? AppColors.secondaryColor : AppColors.primaryColor,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                ),
                                              ),
                                              onPressed: () {
                                                setState(() {
                                                  botao1.value = !botao1.value ;
                                                  botao2.value  = false;
                                                  botao3.value  = false;
                                                });
                                              },
                                              child: Text(
                                                '1 Hora',
                                                style: TextStyle(
                                                  color: botao1.value  ? AppColors.primaryColor : Colors.black
                                                ),
                                              ),
                                            );
                                             },
                                          ),
                                          ValueListenableBuilder(
                                            valueListenable: botao2,
                                            builder: (BuildContext context, value, Widget? child) { 
                                              return TextButton(
                                              style: TextButton.styleFrom(
                                                backgroundColor: botao2.value ? AppColors.secondaryColor : AppColors.primaryColor,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                ),
                                              ),
                                              onPressed: () {
                                                 setState(() {
                                                  botao2.value = !botao2.value;
                                                  botao1.value = false;
                                                  botao3.value = false;
                                                });
                                              },
                                              child: Text(
                                                '2 Horas',
                                                style: TextStyle(
                                                   color: botao2.value ? AppColors.primaryColor : Colors.black
                                                ),
                                              ),
                                            );
                                             },
                                          ),
                                          ValueListenableBuilder(
                                            valueListenable: botao3,
                                            builder: (BuildContext context, value, Widget? child) { 
                                                return TextButton(
                                                style: TextButton.styleFrom(
                                                  backgroundColor: botao3.value ? AppColors.secondaryColor : AppColors.primaryColor,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(5),
                                                  ),
                                                ),
                                                onPressed: () {
                                                  setState(() {
                                                    botao3.value = !botao3.value;
                                                    botao2.value = false;
                                                    botao1.value = false;
                                                  });
                                                },
                                                child: Text(
                                                  '3 Horas',
                                                  style: TextStyle(
                                                    color: botao3.value ? AppColors.primaryColor : Colors.black
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                      actions: [
                                        Center(
                                          child: TextButton(
                                            style: TextButton.styleFrom(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 90,
                                              ),
                                              backgroundColor:
                                                  AppColors.secondaryColor,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                            ),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text(
                                              'Confirmar',
                                              style: TextStyle(
                                                color: AppColors.primaryColor,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '1 Hora',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: AppColors.primaryColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Icon(
                                    Icons.expand_more,
                                    color: AppColors.primaryColor,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.only(top: 50, left: 30),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Emitir alerta faltando:',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.secondaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Center(
                                        child: Text(
                                          'Ativar alarme faltando:',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      content: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          ValueListenableBuilder(
                                            valueListenable: min1,
                                            builder: (BuildContext context, value, Widget? child) { 
                                                return TextButton(
                                                style: TextButton.styleFrom(
                                                  backgroundColor: min1.value ? AppColors.secondaryColor : AppColors.primaryColor,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(5),
                                                  ),
                                                ),
                                                onPressed: () {
                                                  setState(() {
                                                    min1.value = !min1.value;
                                                    min2.value = false;
                                                    min3.value = false;
                                                  });
                                                },
                                                child: Text(
                                                  '15 min.',
                                                  style: TextStyle(
                                                    color: min1.value ? AppColors.primaryColor : Colors.black,
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                          ValueListenableBuilder(
                                            valueListenable: min2,
                                            builder: (BuildContext context, value, Widget? child) { 
                                              return TextButton(
                                                style: TextButton.styleFrom(
                                                  backgroundColor: min2.value ? AppColors.secondaryColor : AppColors.primaryColor,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(5),
                                                  ),
                                                ),
                                                onPressed: () {
                                                  setState(() {
                                                    min2.value = !min2.value;
                                                    min1.value = false;
                                                    min3.value = false;
                                                  });
                                                },
                                                child: Text(
                                                  '10 min.',
                                                  style: TextStyle(
                                                    color: min2.value ? AppColors.primaryColor : Colors.black
                                                  ),
                                                ),
                                              );
                                             },
                                            
                                          ),
                                          ValueListenableBuilder(
                                            valueListenable: min3,
                                            builder: (BuildContext context, value, Widget? child) { 
                                              return TextButton(
                                                style: TextButton.styleFrom(
                                                  backgroundColor: min3.value ? AppColors.secondaryColor : AppColors.primaryColor,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(5),
                                                  ),
                                                ),
                                                onPressed: () {
                                                  setState(() {
                                                    min3.value = !min2.value;
                                                    min2.value = false;
                                                    min1.value = false;
                                                  });
                                                },
                                                child: Text(
                                                  '5 min.',
                                                  style: TextStyle(
                                                    color: min3.value ? AppColors.primaryColor : Colors.black
                                                  ),
                                                ),
                                              );
                                             },
                                            
                                          ),
                                        ],
                                      ),
                                      actions: [
                                        Center(
                                          child: TextButton(
                                            style: TextButton.styleFrom(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 90,
                                              ),
                                              backgroundColor:
                                                  AppColors.secondaryColor,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                            ),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text(
                                              'Confirmar',
                                              style: TextStyle(
                                                color: AppColors.primaryColor,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '5 min.',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: AppColors.primaryColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Icon(
                                    Icons.expand_more,
                                    color: AppColors.primaryColor,
                                  ),
                                ],
                              ),
                            ),
                            // Container(
                            //   height: 42,
                            //   width: 90,
                            //   decoration: BoxDecoration(
                            //     color: AppColors.secondaryColor,
                            //     borderRadius: BorderRadius.circular(8),
                            //   ),
                            //   child: Row(
                            //     mainAxisAlignment: MainAxisAlignment.center,
                            //     children: [
                            //       Text(
                            //         '5 Min.',
                            //         style: TextStyle(
                            //           fontSize: 16,
                            //           color: AppColors.primaryColor,
                            //           fontWeight: FontWeight.bold,
                            //         ),
                            //       ),
                            //       Icon(
                            //         Icons.expand_more,
                            //         color: AppColors.primaryColor,
                            //       ),
                            //     ],
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      backgroundColor: AppColors.secondaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    onPressed: () {
                      showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text(
                              'Confirmar estacionamento',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('Placa do Veículo'),
                                Container(
                                  width: 150,
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: AppColors.primaryColor,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'ERT-3C90',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text('1 Hora - Alerta - 5 Min.'),
                                SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextButton(
                                      style: TextButton.styleFrom(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 20,
                                        ),
                                        backgroundColor: AppColors.primaryColor,
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            color: AppColors.secondaryColor,
                                            width: 2,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            5,
                                          ),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        'Cancelar',
                                        style: TextStyle(
                                          color: AppColors.secondaryColor,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      style: TextButton.styleFrom(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 20,
                                        ),
                                        backgroundColor:
                                            AppColors.secondaryColor,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            5,
                                          ),
                                        ),
                                      ),
                                      onPressed: () {
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            return VerifiedModal(
                                              title:
                                                  'Estacionamento ativado com sucesso!',
                                              navigation: () {
                                                Navigator.pop(context);
                                              },
                                              confirm: 'OK',
                                            );
                                          },
                                        );
                                      },
                                      child: Text(
                                        'Confirmar',
                                        style: TextStyle(
                                          color: AppColors.primaryColor,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Text(
                      'Confirmar',
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 150),
            Text(
              'Cada hora de estacionamento equivale a um pagamento de R\$ 2,00,',
              style: TextStyle(
                fontSize: 13,
                decoration: TextDecoration.underline,
              ),
            ),
            Text(
              'sendo 3 (três) horas o limite por ativação de vaga.',
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
