import 'package:flutter/material.dart';
import 'package:flutter_aplication_estacionamento/_core/app_colors.dart';
import 'package:flutter_aplication_estacionamento/pages/cadastro/cadastro_3.dart';

class Cadastro2 extends StatefulWidget {
  const Cadastro2({super.key, required this.title});

  

  final String title;

  @override
  State<Cadastro2> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Cadastro2> {
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
      backgroundColor: AppColors.backgroundColor,

      body: Padding(
         padding: const EdgeInsets.only(top: 80, left: 30, right: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Cadastro de novo usuário', style: TextStyle(
                fontSize: 16
              )),
              SizedBox(height: 30),
              LinearProgressIndicator(
                value: 0.6,
                minHeight: 10,
                backgroundColor: Colors.purple[100],
                valueColor: AlwaysStoppedAnimation<Color>(AppColors.secondaryColor),
                borderRadius: BorderRadius.circular(10),
              ),
              SizedBox(height: 10),
              Text('Passo 2 de 3', style: TextStyle(
                fontSize: 16
              )),
              SizedBox(height: 50),
                TextField(
                  controller: _senhaController,
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                      ),
                      onPressed: _toggleVisibility,
                    ),
                  ),
                ),
              SizedBox(height: 100),
                TextField(
                  controller: _senhaController2,
                  obscureText: _obscureText2,
                  decoration: InputDecoration(
                    labelText: 'Confirme a senha:',
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
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Cadastro3(title: 'teste')),
                  );
                },
                child: Container(
                  height: 42,
                  width: 280,
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    borderRadius: BorderRadius.circular(9)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Próximo', style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      )),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                 child: Container(
                    height: 42,
                    width: 280,
                    decoration: BoxDecoration(
                      color: AppColors.secondaryColor,
                      borderRadius: BorderRadius.circular(9)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Cancelar', style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        )),
                      ],
                    ),
                  ),
              ),
            ],
          ),
        ),
      ),



     
    );
  }
}