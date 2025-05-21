import 'package:flutter/material.dart';
import 'package:flutter_aplication_estacionamento/cadastro_2.dart';

class Cadastro1 extends StatefulWidget {
  const Cadastro1({super.key, required this.title});

  

  final String title;

  @override
  State<Cadastro1> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Cadastro1> {
   final TextEditingController dataController = TextEditingController();
 

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Color(0XFFEBDEF4),

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
                value: 0.3,
                minHeight: 10,
                backgroundColor: Colors.purple[100],
                valueColor: AlwaysStoppedAnimation<Color>(Color(0xcc6B088C)),
                borderRadius: BorderRadius.circular(10),
              ),
              SizedBox(height: 10),
              Text('Passo 1 de 3', style: TextStyle(
                fontSize: 16
              )),
              SizedBox(height: 50),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Nome completo',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 50),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 50),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Número de telefone (com DDD)',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 50),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Informe o seu CPF',
                  border: OutlineInputBorder(),
                ),
              ), 
              SizedBox(height: 50),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Insira a sua data de nascimento',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 50),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Cadastro2(title: 'teste')),
                  );
                },
                child: Container(
                  height: 42,
                  width: 280,
                  decoration: BoxDecoration(
                    color: Color(0xcc6B088C),
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
                    color: Color(0xcc6B088C),
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