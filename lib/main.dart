import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/pages/home_page.dart';
import 'package:hackathon/pages/profil_page.dart';
import 'package:hackathon/pages/uslugi_page.dart';
import 'package:hackathon/widgets/widget.dart';

void main() => runApp(Bilelikde());

class Bilelikde extends StatelessWidget {
  const Bilelikde({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        primarySwatch:Colors.blue,
        backgroundColor: Colors.white,
        textTheme: GoogleFonts.marmeladTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: BilelikdeApp(),
    );
  }
}
