import 'package:flutter/material.dart';
import 'package:flutter_aplication_estacionamento/_core/app_colors.dart';
import 'package:flutter_aplication_estacionamento/widgets/drawer.dart';
import 'package:flutter_aplication_estacionamento/widgets/navbar_widget.dart';

class AtualizarCadastro extends StatefulWidget {
  const AtualizarCadastro({super.key});

  @override
  State<AtualizarCadastro> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<AtualizarCadastro> {
  final TextEditingController _senhaController = TextEditingController();
  final TextEditingController _senhaController2 = TextEditingController();
  bool _obscureText = true;
  bool _obscureText2 = true;

  void _toggleVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  void _toggleVisibility2() {
    setState(() {
      _obscureText2 = !_obscureText;
    });
  }




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
          'Cadastro',
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
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 800,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Atualizar cadastro', style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54
                          )),
                        ],
                      ),
                      SizedBox(height: 60),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Nome completo',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 50),
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 50),
                      TextField(
                        controller: _senhaController,
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          labelText: 'Senha Atual',
                          border: OutlineInputBorder(),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscureText ? Icons.visibility_off : Icons.visibility,
                            ),
                            onPressed: _toggleVisibility,
                          ),
                        ),
                      ),
                      SizedBox(height: 50),
                      TextField(
                        controller: _senhaController2,
                        obscureText: _obscureText2,
                        decoration: InputDecoration(
                          labelText: 'Nova senha',
                          border: OutlineInputBorder(),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscureText2 ? Icons.visibility_off : Icons.visibility,
                            ),
                            onPressed: _toggleVisibility2,
                          ),
                        ),
                      ),
                      SizedBox(height: 50),
                      TextField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          labelText: 'Número de telefone (com DDD)',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 60),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 40,
                            width: 141,
                            decoration: BoxDecoration(
                              color: AppColors.secondaryColor,
                              borderRadius: BorderRadius.circular(9)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Limpar', style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.primaryColor,
                                  fontWeight: FontWeight.bold
                                )),
                              ],
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 141,
                            decoration: BoxDecoration(
                              color: AppColors.secondaryColor,
                              borderRadius: BorderRadius.circular(9)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Confirmar', style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.primaryColor,
                                  fontWeight: FontWeight.bold
                                )),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 309,
                width: 340,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text('Cartões', style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold
                      )),
                      SizedBox(height: 20,),
                      Container(
                        height: 62,
                        width: 280,
                        decoration: BoxDecoration(
                          color: AppColors.secondaryColor,
                          borderRadius: BorderRadius.circular(9)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Cartão 1', style: TextStyle(
                                    fontSize: 15,
                                    color: AppColors.primaryColor
                                  )),
                                  Text('******** 5999', style: TextStyle(
                                    fontSize: 15,
                                    color: AppColors.primaryColor
                                  )),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.edit_note, color: AppColors.primaryColor, size: 40),
                                  Icon(Icons.delete, color: AppColors.primaryColor, size: 40),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 35),
                      Container(
                        height: 62,
                        width: 280,
                        decoration: BoxDecoration(
                          color: AppColors.secondaryColor,
                          borderRadius: BorderRadius.circular(9)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Cartão 1', style: TextStyle(
                                    fontSize: 15,
                                    color: AppColors.primaryColor
                                  )),
                                  Text('******** 5999', style: TextStyle(
                                    fontSize: 15,
                                    color: AppColors.primaryColor
                                  )),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.edit_note, color: AppColors.primaryColor, size: 40),
                                  Icon(Icons.delete, color: AppColors.primaryColor, size: 40),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
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
                            Text('Novo cartão', style: TextStyle(
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
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 309,
                width: 340,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text('Veículos', style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold
                      )),
                      SizedBox(height: 20,),
                      Container(
                        height: 62,
                        width: 280,
                        decoration: BoxDecoration(
                          color: AppColors.secondaryColor,
                          borderRadius: BorderRadius.circular(9)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Chevrolet Onix', style: TextStyle(
                                    fontSize: 15,
                                    color: AppColors.primaryColor
                                  )),
                                  Text('ETF-4D60', style: TextStyle(
                                    fontSize: 15,
                                    color: AppColors.primaryColor
                                  )),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.edit_note, color: AppColors.primaryColor, size: 40),
                                  Icon(Icons.delete, color: AppColors.primaryColor, size: 40),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 35),
                      Container(
                        height: 62,
                        width: 280,
                        decoration: BoxDecoration(
                          color: AppColors.secondaryColor,
                          borderRadius: BorderRadius.circular(9)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Renault Sandero', style: TextStyle(
                                    fontSize: 15,
                                    color: AppColors.primaryColor
                                  )),
                                  Text('FSM-1C13', style: TextStyle(
                                    fontSize: 15,
                                    color: AppColors.primaryColor
                                  )),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.edit_note, color: AppColors.primaryColor, size: 40),
                                  Icon(Icons.delete, color: AppColors.primaryColor, size: 40),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
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
                            Text('Novo veículo', style: TextStyle(
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
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 309,
                width: 340,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text('Telefone', style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold
                      )),
                      SizedBox(height: 20,),
                      Container(
                        height: 62,
                        width: 280,
                        decoration: BoxDecoration(
                          color: AppColors.secondaryColor,
                          borderRadius: BorderRadius.circular(9)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('(11) 99953-2469', style: TextStyle(
                                    fontSize: 15,
                                    color: AppColors.primaryColor
                                  )),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.edit_note, color: AppColors.primaryColor, size: 40),
                                  Icon(Icons.delete, color: AppColors.primaryColor, size: 40),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 35),
                      Container(
                        height: 62,
                        width: 280,
                        decoration: BoxDecoration(
                          color: AppColors.secondaryColor,
                          borderRadius: BorderRadius.circular(9)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('(11) 4784-8532', style: TextStyle(
                                    fontSize: 15,
                                    color: AppColors.primaryColor
                                  )),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.edit_note, color: AppColors.primaryColor, size: 40),
                                  Icon(Icons.delete, color: AppColors.primaryColor, size: 40),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
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
                            Text('Novo telefone', style: TextStyle(
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
