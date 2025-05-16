import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key, required this.title});

  

  final String title;

  @override
  State<Login> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Login> {
 

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Color(0XFFEBDEF4),

      body: Column(
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
          Text('Digite o CPF, CNPJ ou E-maiil', style: TextStyle(
            fontSize: 16,
          )),
          SizedBox(height: 10),
          Container(
            height: 42,
            width: 340,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30)
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 5),
              child: Row(
                children: [
                  Text('|', style: TextStyle(
                    fontSize: 30
                  )),
                ],
              ),
            ),
          ),
          SizedBox(height: 25),

          Text('Digite a senha', style: TextStyle(
            fontSize: 16,
          )),
          SizedBox(height: 10),
          Container(
            height: 42,
            width: 340,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30)
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 5),
              child: Row(
                children: [
                  Text('|', style: TextStyle(
                    fontSize: 30
                  )),
                ],
              ),
            ),
          ),
          SizedBox(height: 25),
          Text('Recuperar a senha', style: TextStyle(
            fontSize: 16,
          )),
          SizedBox(height: 15),
          Container(
            width: 280,
            height: 42,
            decoration: BoxDecoration(
              color: Color(0xcc6B088C),
              borderRadius: BorderRadius.circular(9)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Login', style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
                )),
              ],
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
                  Icon(Icons.alarm, color: Color(0xcc6B088C)),
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
          InkWell(
            onTap: (){
              showDialog(context: context, 
                builder: (BuildContext context){
                  return AlertDialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                      side: BorderSide(
                        color: Color(0xFF6B088C), // Cor da borda
                        width: 2, // Espessura da borda
                      ),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Cadastro de novo usuário', style: TextStyle(
                          fontSize: 16
                        )),
                      ],
                    ),
                    content:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Nome completo', style: TextStyle(
                          fontSize: 16
                        )),
                        SizedBox(height: 10),
                        Container(
                          height: 42,
                          width: 280,
                          decoration: BoxDecoration(
                            color: Color(0XFFEBDEF4),
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, bottom: 5),
                            child: Row(
                              children: [
                                Text('|', style: TextStyle(
                                  fontSize: 30
                                )),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 70),
                        Text('E-mail', style: TextStyle(
                          fontSize: 16
                        )),
                        SizedBox(height: 10),
                        Container(
                          height: 42,
                          width: 280,
                          decoration: BoxDecoration(
                            color: Color(0XFFEBDEF4),
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, bottom: 5),
                            child: Row(
                              children: [
                                Text('|', style: TextStyle(
                                  fontSize: 30
                                )),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 70),
                        Text('Número de Telefone (Com DDD)', style: TextStyle(
                          fontSize: 16
                        )),
                        SizedBox(height: 10),
                        Container(
                          height: 42,
                          width: 280,
                          decoration: BoxDecoration(
                            color: Color(0XFFEBDEF4),
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, bottom: 5),
                            child: Row(
                              children: [
                                Text('|', style: TextStyle(
                                  fontSize: 30
                                )),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 150),
                        Column(
                          children: [
                            Container(
                              width: 280,
                              height: 42,
                              decoration: BoxDecoration(
                                color: Color(0xcc6B088C),
                                borderRadius: BorderRadius.circular(9)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Próximo', style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white
                                  )),
                                ],
                              ),
                            ),
                            SizedBox(height: 60),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pop(); 
                              },
                              child: Container(
                                width: 280,
                                height: 42,
                                decoration: BoxDecoration(
                                  color: Color(0xcc6B088C),
                                  borderRadius: BorderRadius.circular(9),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Cancelar',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    
                  );
                }
               
              );
            },
              child:  Text('Cadastre-se', style: TextStyle(
                fontSize: 16,
                decoration: TextDecoration.underline
              )), 
          ),
          SizedBox(height: 30),
          Text('Políticas de privacidade', style: TextStyle(
            fontSize: 16,
            decoration: TextDecoration.underline
          )),
        ],
      ),

    );
  }
}