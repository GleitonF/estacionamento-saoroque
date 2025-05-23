import 'package:flutter/material.dart';
import 'package:flutter_aplication_estacionamento/Home.dart';
import 'package:flutter_aplication_estacionamento/cadastro_1.dart';

class Login extends StatefulWidget {
  const Login({super.key, required this.title});

  

  final String title;

  @override
  State<Login> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Login> {
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
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: 
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/logo_app.png'),
                      ]
                    ),
                  ),
                  SizedBox(height: 40),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Digite o CPF ou E-mail',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 35),
              
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
                  SizedBox(height: 35),
                  Text('Recuperar a senha', style: TextStyle(
                    fontSize: 16,
                  )),
                  SizedBox(height: 15),
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
                  SizedBox(height: 35),
                  Container(
                    width: 280,
                    height: 42,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(9)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Icon(Icons.alarm, color: Color(0xcc6B088C)), //não consegui baixar a imagem do Google, vejam se vocês conseguem pegar do figma
                          SizedBox(width: 15),
                          Text('Inscrever-se com Google', style: TextStyle(
                            fontSize: 14,
                          )),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Container(
                    width: 280,
                    height: 42,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(9)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Image.asset('assets/images/facebook.png'),
                          SizedBox(width: 10),
                          Text('Inscrever-se com Facebook', style: TextStyle(
                            fontSize: 14,
                          )),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Container(
                    width: 280,
                    height: 42,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(9)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Image.asset('assets/images/apple.png'),
                          SizedBox(width: 15),
                          Text('Inscrever-se com Apple', style: TextStyle(
                            fontSize: 14,
                          )),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
        
                  ElevatedButton(
                    onPressed: (){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Cadastro1(title: 'teste')));
                    },
                    child: Text('Cadastre-se', style: TextStyle(
                      fontSize: 16,
                      
                    )),
                  ),
                  SizedBox(height: 30),
        
                  Text('Políticas de privacidade', style: TextStyle(
                    fontSize: 16,
                    decoration: TextDecoration.underline
                  )),
                ],
              ),
          
        ),
      ),
    );
  }
}