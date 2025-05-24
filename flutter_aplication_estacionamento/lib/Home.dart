import 'package:flutter/material.dart';
import 'package:flutter_aplication_estacionamento/_core/app_colors.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.title});

  final String title;

  @override
  State<Home> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.tertiaryColor,
      drawer: Drawer(
        backgroundColor: AppColors.primaryColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              DrawerHeader(child: Image.asset('assets/images/logo_app.png')),
              SizedBox(height: 10),
              Row(
                spacing: 5,
                children: [
                  Icon(Icons.home_outlined, size: 30),
                  Text(
                    'INÍCIO',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    spacing: 5,
                    children: [
                      Icon(Icons.money_off_rounded, size: 30),
                      Text(
                        'SALDO',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Icon(Icons.keyboard_arrow_down_rounded),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    spacing: 5,
                    children: [
                      Icon(Icons.no_crash_outlined, size: 30),
                      Text(
                        'VAGAS',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Icon(Icons.keyboard_arrow_down_rounded),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    spacing: 5,
                    children: [
                      Icon(Icons.book_outlined, size: 30),
                      Text(
                        'IRREGULARIDADES',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Icon(Icons.keyboard_arrow_down_rounded),
                ],
              ),
              SizedBox(height: 20),
              Row(
                spacing: 5,
                children: [
                  Icon(Icons.location_on_outlined, size: 30),
                  Text(
                    'MAPA',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                spacing: 5,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black, width: 2),
                    ),
                    child: Icon(Icons.person_2_outlined, size: 30),
                  ),
                  Text(
                    'DADOS PESSOAIS',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                spacing: 5,
                children: [
                  Icon(Icons.chat_outlined, size: 30),
                  Text(
                    'CONTATO',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                spacing: 5,
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black, width: 2),
                    ),
                    child: Text(
                      'X',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Text(
                    'SAIR',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          'Página Inicial2',
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
                              Icons.money_off_rounded,
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
                              Icons.keyboard_return_rounded,
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
              SizedBox(height: 50),
              // primeiro container
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(color: AppColors.primaryColor),
                height: 305,
                width: 396,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Avisos',
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 5),
                    Text(
                      '_______________________________________',
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                    // linha atençao
                    SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.warning_amber_rounded,
                          size: 80,
                          color: Colors.yellow,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Atenção',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                'Você possui irregularidades no pagamento \n do ticket',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 3),
                    Text(
                      '_______________________________________',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    //linha sistema em manutenção
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.warning_amber_rounded,
                          size: 80,
                          color: Colors.yellow,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sistema em manutenção',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                'No momento aplicativo E-facil São \n Roque está com algumas \n funcionalidades limitadas. ',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    // linha saldo
                  ],
                ),
              ),
              SizedBox(height: 50),
              // segundo container
              Container(
                width: 410,
                height: 160,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 180),
                            child: Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text('Saldo', style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                  ),),
                                  
                                ],
                              ),
                            ),
                          ),
                         
                          Text('Seu saldo atual de créditos para uso.'),
                          SizedBox(height: 30),
                          Row(
                            children: [
                              SizedBox(width: 60),
                              Container(
                                  height: 30,
                                  width: 180,
                                  decoration: BoxDecoration(
                                    color: Color(0xcc6B088C),
                                    borderRadius: BorderRadius.circular(9)
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      
                                      Text('Adicionar Créditos', style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                      )),
                                    ],
                                  ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(width: 30),
                      VerticalDivider(),
                      SizedBox(width: 10), 
                      CircleAvatar(radius:45,backgroundColor: Color(0xcc6B088C),),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
    );
  }
}
