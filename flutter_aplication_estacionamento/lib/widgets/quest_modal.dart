import 'package:flutter/material.dart';
import 'package:flutter_aplication_estacionamento/_core/app_colors.dart';
import 'package:lottie/lottie.dart';

class QuestModal extends StatefulWidget {
  const QuestModal({super.key, required this.text, required this.navigation});

  final String text;
  final VoidCallback navigation;

  @override
  State<QuestModal> createState() => _QuestModalState();
}

class _QuestModalState extends State<QuestModal> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'ATENÇÃO',
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Lottie.asset('assets/lotties/alert.json'),
          Text(widget.text),
        ],
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                padding: EdgeInsets.symmetric(horizontal: 30),
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: AppColors.secondaryColor, width: 2),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
                widget.navigation();
              },
              child: Text(
                'Cancelar',
                style: TextStyle(
                  color: AppColors.secondaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: AppColors.secondaryColor,
                padding: EdgeInsets.symmetric(horizontal: 30),
              ),
              onPressed: () {
                Navigator.pop(context);
                widget.navigation();
              },
              child: Text(
                'Confirmar',
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
