import 'package:bloco_de_notas/src/features/new_note/new_note_page.dart';
import 'package:bloco_de_notas/src/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:bloco_de_notas/src/shared/constants/app_colors.dart';
import 'package:bloco_de_notas/src/shared/constants/app_images.dart';

class AllNotesPage extends StatefulWidget {
  const AllNotesPage({Key? key}) : super(key: key);

  @override
  _AllNotesPageState createState() => _AllNotesPageState();
}

class _AllNotesPageState extends State<AllNotesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: AppColors.blueGradient,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        title: Image.asset(
          AppImages.journalWhiteNotesPage,
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 18.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Pesquisar',
                    hintStyle: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      fontSize: 16.0,
                      letterSpacing: 0.15,
                      color: Colors.black38,
                    ),
                    labelStyle: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      fontSize: 16.0,
                      letterSpacing: 0.15,
                      color: Colors.black38,
                    ),
                    suffixIcon: Icon(Icons.search_rounded),
                  ),
                ),
              ),
            ],
          ),
        ),
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
        child: const ButtonWidget(),
      ),
    );
  }
}
