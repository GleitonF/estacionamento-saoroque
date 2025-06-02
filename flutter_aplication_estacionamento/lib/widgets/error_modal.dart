import 'package:flutter/material.dart';
import 'package:flutter_aplication_estacionamento/_core/app_colors.dart'
    show AppColors;
import 'package:lottie/lottie.dart';

class ErrorModal extends StatefulWidget {
  const ErrorModal({super.key, required this.title, required this.subtitle});
  final String title;
  final String subtitle;

  @override
  State<ErrorModal> createState() => _ErrorModalState();
}

class _ErrorModalState extends State<ErrorModal> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(
        child: Text(
          widget.title,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Lottie.asset('assets/lotties/error.json'),
          Center(child: Text(widget.subtitle)),
        ],
      ),
      actions: [
        Center(
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: AppColors.secondaryColor,
              padding: EdgeInsets.symmetric(horizontal: 80),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Tente Novamente',
              style: TextStyle(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
