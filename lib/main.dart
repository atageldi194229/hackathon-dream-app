import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/pages/home_page.dart';


void main()=>runApp(Bilelikde());


class Bilelikde extends StatelessWidget {
  const Bilelikde({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // localizationsDelegates: AppLocalization.localizationDelegates,
      // supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('En',''),
        const Locale('Ру',''),
      ],
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.white,
        textTheme:GoogleFonts.marmeladTextTheme(Theme.of(context).textTheme,
        ),
        ),
        home: MyHomePage(),
    );
  }
}