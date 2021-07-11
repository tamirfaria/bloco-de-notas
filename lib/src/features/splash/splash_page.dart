// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:bloco_de_notas/src/features/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:animated_card/animated_card.dart';
import 'package:bloco_de_notas/src/shared/constants/app_colors.dart';
import 'package:bloco_de_notas/src/shared/constants/app_images.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback(
      (timeStamp) {
        Future.delayed(const Duration(seconds: 2)).then(
          (value) => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) => const HomePage(),
            ),
          ),
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: AppColors.blueGradient,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            AnimatedCard(
              direction: AnimatedCardDirection.top,
              duration: const Duration(seconds: 1),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: (MediaQuery.of(context).size.height / 2) - 100,
                    child: Hero(
                      tag: "notes_logo",
                      child: Image.asset(AppImages.logoNotes),
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Hero(
                          tag: "journal",
                          child: Material(
                            color: Colors.transparent,
                            child: Text(
                              "journal",
                              style: TextStyle(
                                fontSize: 72.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                fontFamily: "Montserrat",
                                letterSpacing: -0.05,
                              ),
                            ),
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
                          textAlign: TextAlign.end,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            AnimatedCard(
              direction: AnimatedCardDirection.bottom,
              duration: const Duration(seconds: 1),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "powered by",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 12.0,
                        fontStyle: FontStyle.italic,
                        fontFamily: "Roboto",
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Image.asset(AppImages.logoRaro),
                    const SizedBox(height: 40.0),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
