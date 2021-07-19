import 'package:bloco_de_notas/src/shared/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Container(
        height: 56.0,
        width: 56.0,
        decoration: BoxDecoration(
          gradient: AppColors.blueGradient,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.12),
              offset: const Offset(0.0, 1.0),
              blurRadius: 18.0,
            ),
            BoxShadow(
              color: Colors.black.withOpacity(0.14),
              offset: const Offset(0.0, 6.0),
              blurRadius: 10.0,
            ),
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: const Offset(0.0, 3.0),
              blurRadius: 5.0,
              spreadRadius: -1.0,
            ),
          ],
        ),
        child: const Center(
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
