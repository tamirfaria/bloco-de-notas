// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:bloco_de_notas/src/features/new_note/new_note_page.dart';
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
      body: Stack(
        children: [
          SafeArea(
            top: true,
            child: Image.asset(
              AppImages.boy,
              fit: BoxFit.fitHeight,
            ),
          ),
          Align(
            alignment: Alignment(Alignment.center.x, -0.33),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Hero(
                  tag: "notes_logo",
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Image.asset(AppImages.logoNotes),
                  ),
                ),
                const Hero(
                  tag: "journal",
                  child: Text(
                    "journal",
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
          Align(
            alignment: Alignment.bottomCenter,
            child: Card(
              margin: EdgeInsets.zero,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
              ),
              // ignore: sized_box_for_whitespace
              child: Container(
                height: MediaQuery.of(context).size.height * 0.4,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 24.0,
                    right: 40.0,
                    bottom: 60.0,
                    left: 40.0,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Não importa onde você esteja! Guarde suas ideias pra depois ;)",
                        style: TextStyle(
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w400,
                          fontSize: 24.0,
                          color: AppColors.purple,
                        ),
                      ),
                      const SizedBox(height: 24.0),
                      const Text(
                        "Comece agora a criar as suas notas!",
                        style: TextStyle(
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w400,
                          fontSize: 16.0,
                          color: AppColors.cyan,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) => const NewNotePage(),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.only(bottom: 56.0),
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
        ),
      ),
    );
  }
}
