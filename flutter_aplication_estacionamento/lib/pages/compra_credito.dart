import 'package:flutter/material.dart';
import 'package:flutter_aplication_estacionamento/_core/app_colors.dart';
import 'package:flutter_aplication_estacionamento/widgets/drawer.dart';

class CompraCredito extends StatefulWidget {
  const CompraCredito({super.key});

  @override
  State<CompraCredito> createState() => _MyHomePageState();
}
//Variável dizendo se está clicado os valores da compra

class _MyHomePageState extends State<CompraCredito> {

  bool isSelected2 = false; 
  bool isSelected4 = false; 
  bool isSelected8 = false; 
  bool isSelected20 = false; 
  bool isSelected50 = false; 
  bool isSelected100 = false; 
  bool isSelected200 = false; 
  bool isSelected300 = false; 

  bool cartaoCredito = false;
  bool pix = false;
  bool boleto = false;
  bool cartaoDebito = false;
  bool googlePlay = false;
  

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
                            Icons.savings,
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ),
                      Text('Saldo'),
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
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 670,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('R\$ 2,00 = 1 hora'),
                      Text('R\$ 4,00 = 2 hora'),
                      Text('R\$ 6,00 = 3 hora'),
                      SizedBox(height: 10),
                      Text('Selecione o valor da compra:', style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      )),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isSelected2 = !isSelected2;
                              });
                            },
                            child: Container(
                              height: 42,
                              decoration: BoxDecoration(
                                color: isSelected2 ? AppColors.secondaryColor : Colors.transparent,
                                border: Border.all(color: AppColors.secondaryColor, width: 2.0),
                                borderRadius: BorderRadius.circular(9),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  children: [
                                    Text(
                                      'R\$ 2,00',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: isSelected2 ? Colors.white : Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isSelected4 = !isSelected4;
                              });
                            },
                            child: Container(
                              height: 42,
                              decoration: BoxDecoration(
                                color: isSelected4 ? AppColors.secondaryColor : Colors.transparent,
                                border: Border.all(color: AppColors.secondaryColor, width: 2.0),
                                borderRadius: BorderRadius.circular(9),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  children: [
                                    Text(
                                      'R\$ 4,00',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: isSelected4 ? Colors.white : Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isSelected8 = !isSelected8;
                              });
                            },
                            child: Container(
                              height: 42,
                              decoration: BoxDecoration(
                                color: isSelected8 ? AppColors.secondaryColor : Colors.transparent,
                                border: Border.all(color: AppColors.secondaryColor, width: 2.0),
                                borderRadius: BorderRadius.circular(9),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  children: [
                                    Text(
                                      'R\$ 8,00',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: isSelected8 ? Colors.white : Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isSelected20 = !isSelected20;
                              });
                            },
                            child: Container(
                              height: 42,
                              decoration: BoxDecoration(
                                color: isSelected20 ? AppColors.secondaryColor : Colors.transparent,
                                border: Border.all(color: AppColors.secondaryColor, width: 2.0),
                                borderRadius: BorderRadius.circular(9),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  children: [
                                    Text(
                                      'R\$ 20,00',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: isSelected20 ? Colors.white : Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isSelected50 = !isSelected50;
                              });
                            },
                            child: Container(
                              height: 42,
                              decoration: BoxDecoration(
                                color: isSelected50 ? AppColors.secondaryColor : Colors.transparent,
                                border: Border.all(color: AppColors.secondaryColor, width: 2.0),
                                borderRadius: BorderRadius.circular(9),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  children: [
                                    Text(
                                      'R\$ 50,00',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: isSelected50 ? Colors.white : Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isSelected100 = !isSelected100;
                              });
                            },
                            child: Container(
                              height: 42,
                              decoration: BoxDecoration(
                                color: isSelected100 ? AppColors.secondaryColor : Colors.transparent,
                                border: Border.all(color: AppColors.secondaryColor, width: 2.0),
                                borderRadius: BorderRadius.circular(9),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  children: [
                                    Text(
                                      'R\$ 100,00',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: isSelected100 ? Colors.white : Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isSelected200 = !isSelected200;
                              });
                            },
                            child: Container(
                              height: 42,
                              decoration: BoxDecoration(
                                color: isSelected200 ? AppColors.secondaryColor : Colors.transparent,
                                border: Border.all(color: AppColors.secondaryColor, width: 2.0),
                                borderRadius: BorderRadius.circular(9),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  children: [
                                    Text(
                                      'R\$ 200,00',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: isSelected200 ? Colors.white : Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isSelected300 = !isSelected300;
                              });
                            },
                            child: Container(
                              height: 42,
                              decoration: BoxDecoration(
                                color: isSelected300 ? AppColors.secondaryColor : Colors.transparent,
                                border: Border.all(color: AppColors.secondaryColor, width: 2.0),
                                borderRadius: BorderRadius.circular(9),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  children: [
                                    Text(
                                      'R\$ 300,00',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: isSelected300 ? Colors.white : Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text('Outro valor:', style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      )),
                      SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text('Selecione a forma de pagamento:', style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      )),
                      SizedBox(height: 20),
                        Row(
                          children: [
                            Checkbox(
                              value: cartaoCredito,
                              onChanged: (bool? value) {
                                setState(() {
                                  cartaoCredito = value ?? false;
                                });
                              },
                              activeColor: Color(0xcc6B088C),
                            ),
                            Expanded(
                              child: Text(
                                'Cartão de crédito',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              value: pix,
                              onChanged: (bool? value) {
                                setState(() {
                                  pix = value ?? false;
                                });
                              },
                              activeColor: Color(0xcc6B088C),
                            ),
                            Expanded(
                              child: Text(
                                'Pix',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              value: boleto,
                              onChanged: (bool? value) {
                                setState(() {
                                  boleto = value ?? false;
                                });
                              },
                              activeColor: Color(0xcc6B088C),
                            ),
                            Expanded(
                              child: Text(
                                'Boleto',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              value: cartaoDebito,
                              onChanged: (bool? value) {
                                setState(() {
                                  cartaoDebito = value ?? false;
                                });
                              },
                              activeColor: Color(0xcc6B088C),
                            ),
                            Expanded(
                              child: Text(
                                'Cartão de débito',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              value: googlePlay,
                              onChanged: (bool? value) {
                                setState(() {
                                  googlePlay = value ?? false;
                                });
                              },
                              activeColor: Color(0xcc6B088C),
                            ),
                            Expanded(
                              child: Text(
                                'Google Play',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
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
                  Text('Comprar', style: TextStyle(
                    fontSize: 16,
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.bold
                  )),
                ],
              ),
            )
          ],
          
        ),
      ),
    );
  }
}
