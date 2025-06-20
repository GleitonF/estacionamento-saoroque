import 'package:flutter/material.dart';
import 'package:flutter_aplication_estacionamento/_core/app_colors.dart';
import 'package:flutter_aplication_estacionamento/_core/custom_tile.dart';
import 'package:flutter_aplication_estacionamento/pages/home/Home.dart';
import 'package:flutter_aplication_estacionamento/pages/vagas/mapa.dart';
import 'package:flutter_aplication_estacionamento/pages/vagas/vagas.dart';
import 'package:flutter_aplication_estacionamento/pages/vagas/historico_estacionamento.dart';
import 'package:flutter_aplication_estacionamento/pages/saldo/historico_saldo.dart';
import 'package:flutter_aplication_estacionamento/pages/saldo/compra_credito.dart';
import 'package:flutter_aplication_estacionamento/pages/irregularidades/historico_irregularidades.dart';
import 'package:flutter_aplication_estacionamento/pages/contato/contato.dart';
import 'package:flutter_aplication_estacionamento/pages/login/login.dart';
import 'package:flutter_aplication_estacionamento/pages/dados_pessoais/dados_pessoais.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({
    super.key,
    required backgroundColor,
    required ListView child,
  });

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.primaryColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Column(
              children: [Image.asset('assets/images/logo_app.png', width: 190)],
            ),
          ),

          ListTile(
            leading: Icon(Icons.home_outlined, size: 30),
            title: Text('INÍCIO'),
            onTap: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => Home()),
                (route) => false,
              );
            },
          ),

          CustomExpansionTile(
            title: 'SALDO',
            icon: Icons.savings_outlined,
            children: [
              Divider(color: Colors.grey, thickness: 1),
              ListTile(
                title: Text('Comprar Créditos'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CompraCredito(),
                    ),
                  );
                },
              ),
              ListTile(
                title: Text('Consultar Histórico'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HistoricoSaldo(),
                    ),
                  );
                },
              ),
              Divider(color: Colors.grey, thickness: 1),
            ],
          ),

          CustomExpansionTile(
            icon: Icons.directions_car_filled_outlined,
            title: 'VAGAS',
            children: [
              Divider(color: Colors.grey, thickness: 1),
              ListTile(
                title: Text('Ativar estacionamento'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Vagas()),
                  );
                },
              ),
              ListTile(
                title: Text('Mapa de vagas'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Mapa()),
                  );
                },
              ),
              ListTile(
                title: Text('Histórico de ativações'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HistoricoEstacionamento(),
                    ),
                  );
                },
              ),
              Divider(color: Colors.grey, thickness: 1),
            ],
          ),

          ListTile(
            leading: Icon(Icons.book_outlined, size: 30),
            title: Text('IRREGULARIDADES'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HistoricoIrregularidades(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.location_pin, size: 30),
            title: Text('MAPA'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Mapa()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.person, size: 30),
            title: Text('DADOS PESSOAIS'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DadosPessoais()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.chat, size: 30),
            title: Text('CONTATO'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Contato()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app, size: 30),
            title: Text('SAIR'),
            onTap: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => const Login(title: 'teste'),
                ),
                (route) => false,
              );
            },
          ),
        ],
      ),
    );
  }
}
