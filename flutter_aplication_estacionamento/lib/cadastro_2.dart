import 'package:flutter/material.dart';
import 'package:flutter_aplication_estacionamento/cadastro_3.dart';

class Cadastro2 extends StatefulWidget {
  const Cadastro2({super.key, required this.title});

  

  final String title;

  @override
  State<Cadastro2> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Cadastro2> {
  final TextEditingController _senhaController = TextEditingController();
  bool _obscureText = true;

  void _toggleVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
 

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
                value: 0.6,
                minHeight: 10,
                backgroundColor: Colors.purple[100],
                valueColor: AlwaysStoppedAnimation<Color>(Color(0xcc6B088C)),
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
                  controller: _senhaController,
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    labelText: 'Confirme a senha:',
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