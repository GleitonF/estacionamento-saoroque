import 'package:flutter/material.dart';
import 'package:flutter_aplication_estacionamento/_core/app_colors.dart';
import 'package:flutter_aplication_estacionamento/pages/saldo/compra_credito.dart';
import 'package:flutter_aplication_estacionamento/widgets/drawer.dart';
import 'package:flutter_aplication_estacionamento/widgets/navbar_widget.dart';

class Saldo extends StatefulWidget {
  const Saldo({super.key});

  @override
  State<Saldo> createState() => _SaldoState();
}

class _SaldoState extends State<Saldo> {
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
          'Saldo',
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
              padding: EdgeInsets.all(16),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                width: 340,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Text(
                      'Adicionar Créditos',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Divider(color: Colors.grey, thickness: 1),
                    SizedBox(height: 20),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.all(10),
                        backgroundColor: AppColors.secondaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const CompraCredito()));
                      },
                      child: Text(
                        'Adicionar Créditos',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.all(16),
              child: Container(
                width: 340,
                height: 156,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 16.0,
                        left: 16,
                        top: 10,
                        bottom: 3,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Saldo',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Crédito em conta',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Divider(color: Colors.grey, thickness: 1),
                    Padding(
                      padding: EdgeInsets.all(30),
                      child: Center(
                        child: Text(
                          'R\$ 20,00',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
