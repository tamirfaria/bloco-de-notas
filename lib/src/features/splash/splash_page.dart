// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:bloco_de_notas/src/shared/constants/app_colors.dart';
import 'package:bloco_de_notas/src/shared/constants/app_images.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: AppColors.blueGradient,
        ),
        child: Stack(
          children: [
            Align(
              alignment: const Alignment(
                0.0,
                -0.18,
              ),
              child: Image.asset(AppImages.logoNotes),
            ),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "journal",
                    style: TextStyle(
                      fontSize: 72,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontFamily: "Montserrant",
                      letterSpacing: -0.05,
                    ),
                  ),
                  const Text(
                    "YOUR ACADEMY'S BEST FRIEND",
                    style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                      fontFamily: "Montserrat",
                      letterSpacing: 0.165,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
