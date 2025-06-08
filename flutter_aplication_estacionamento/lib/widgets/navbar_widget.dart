import 'package:flutter/material.dart';
import 'package:flutter_aplication_estacionamento/_core/app_colors.dart';
import 'package:flutter_aplication_estacionamento/pages/home/Home.dart';
import 'package:flutter_aplication_estacionamento/pages/irregularidades/historico_irregularidades.dart';
import 'package:flutter_aplication_estacionamento/pages/saldo/saldo.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(color: AppColors.primaryColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            },
            child: Row(
              spacing: 5,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: AppColors.secondaryColor,
                  
                    child: Icon(
                      Icons.home_outlined,
                      color: AppColors.primaryColor,
                    ),
                  ),
                Text('Início'),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Saldo()),
              );
            },
            child: Row(
              spacing: 5,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: AppColors.secondaryColor,
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Saldo()),
                      );
                    },
                    icon: Icon(Icons.savings, color: AppColors.primaryColor),
                  ),
                ),
                Text('Saldo'),
              ],
            ),
          ),
          Row(
            spacing: 5,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: AppColors.secondaryColor,
                child: IconButton(
                  onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HistoricoIrregularidades()),
                      );
                  },
                  icon: Icon(
                  Icons.refresh_outlined,
                     color: AppColors.primaryColor,
                  ),
                ),
              ),
              Text('Irregula-\nridades'),
            ],
          ),
        ],
      ),
    );
  }
}
