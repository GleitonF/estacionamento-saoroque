import 'package:flutter/material.dart';
import 'package:flutter_aplication_estacionamento/_core/app_colors.dart';
import 'package:flutter_aplication_estacionamento/pages/Home.dart';
import 'package:lottie/lottie.dart';

class VerifiedModal extends StatefulWidget {
  const VerifiedModal({super.key, required this.title});
  final String title;

  @override
  State<VerifiedModal> createState() => _VerifiedModalState();
}

class _VerifiedModalState extends State<VerifiedModal> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        widget.title,
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      content: Lottie.asset('assets/lotties/verified.json'),
      actions: [
        TextButton(
          style: TextButton.styleFrom(
            backgroundColor: AppColors.secondaryColor,
            padding: EdgeInsets.symmetric(horizontal: 80),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          },
          child: Text(
            'Ir para a tela inicial',
            style: TextStyle(
              color: AppColors.primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
