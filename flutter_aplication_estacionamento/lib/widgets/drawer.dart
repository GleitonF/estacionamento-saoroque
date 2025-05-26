import 'package:flutter/material.dart';
import 'package:flutter_aplication_estacionamento/_core/app_colors.dart';
import 'package:flutter_aplication_estacionamento/_core/custom_tile.dart';
import 'package:flutter_aplication_estacionamento/pages/Home.dart';
import 'package:flutter_aplication_estacionamento/pages/mapa.dart';
import 'package:flutter_aplication_estacionamento/pages/vagas.dart';
import 'package:flutter_aplication_estacionamento/pages/historico_estacionamento.dart';
import 'package:flutter_aplication_estacionamento/pages/historico_saldo.dart';


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
              ListTile(title: Text('Comprar Créditos'), onTap: () {}),
              ListTile(title: Text('Consultar Histórico'), onTap: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HistoricoSaldo()));
              }),
              Divider(color: Colors.grey, thickness: 1),
            ],
          ),

          CustomExpansionTile(
            icon: Icons.directions_car_filled_outlined,
            title: 'VAGAS',
            children: [
              Divider(color: Colors.grey, thickness: 1),
              ListTile(title: Text('Ativar estacionamento'), onTap: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Vagas()));
              }),
              ListTile(title: Text('Mapa de vagas'), onTap: () {}),
              ListTile(title: Text('Histórico de ativações'), onTap: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HistoricoEstacionamento()));
              }),
              Divider(color: Colors.grey, thickness: 1),
            ],
          ),

          CustomExpansionTile(
            icon: Icons.book_outlined,
            title: 'IRREGULARIDADES',
            children: [
              Divider(color: Colors.grey, thickness: 1),
              ListTile(title: Text('Pendentes'), onTap: () {}),
              ListTile(title: Text('Histórico'), onTap: () {}),
              Divider(color: Colors.grey, thickness: 1),
            ],
          ),

          ListTile(
            leading: Icon(Icons.location_pin, size: 30),
            title: Text('MAPA'),
            onTap: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => Mapa()),
                (route) => false,
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.person, size: 30),
            title: Text('DADOS PESSOAIS'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.chat, size: 30),
            title: Text('CONTATO'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app, size: 30),
            title: Text('SAIR'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
