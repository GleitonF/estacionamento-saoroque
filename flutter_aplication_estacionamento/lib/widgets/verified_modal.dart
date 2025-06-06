import 'package:flutter/material.dart';
import 'package:flutter_aplication_estacionamento/_core/app_colors.dart';
import 'package:lottie/lottie.dart';

class VerifiedModal extends StatefulWidget {
  const VerifiedModal({
    super.key,
    required this.title,
    required this.navigation,
    required this.confirm,
  });
  final String title;
  final String confirm;

  final VoidCallback navigation;

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
        Center(
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: AppColors.secondaryColor,
              padding: EdgeInsets.symmetric(horizontal: 110),
            ),
            onPressed: () {
              Navigator.pop(context);
              widget.navigation();
            },
            child: Text(
              widget.confirm,
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
