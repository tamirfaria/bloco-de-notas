import 'package:bloco_de_notas/src/shared/constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:bloco_de_notas/src/shared/constants/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: AppColors.blueGradient,
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Hero(
                tag: "notes_logo",
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Image.asset(AppImages.logoNotes),
                ),
              ),
              const Hero(
                tag: "jornal",
                child: Text(
                  "jornal",
                  style: TextStyle(
                    fontSize: 48.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontFamily: "Montserrat",
                    letterSpacing: -0.05,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
