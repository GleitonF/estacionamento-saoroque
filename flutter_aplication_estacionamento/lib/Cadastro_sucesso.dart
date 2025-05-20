import 'package:flutter/material.dart';
import 'package:flutter_aplication_estacionamento/Home.dart';

class CadastroSucesso extends StatefulWidget {
  const CadastroSucesso({super.key, required this.title});

  

  final String title;

  @override
  State<CadastroSucesso> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<CadastroSucesso> {
 

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Color(0XFFEBDEF4),

      body: Padding(
        padding: const EdgeInsets.only(top: 200, left: 60, right: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Cadastro concluído com sucesso!', style: TextStyle(
                fontSize: 20
              )),
              SizedBox(height: 50),
              Icon(Icons.verified, color: Colors.green, size: 300),
              SizedBox(height: 100),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home(title: 'teste')),
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
            ],
          ),
        ),
      ),

      
    );
  }
}