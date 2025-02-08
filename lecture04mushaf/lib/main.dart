import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran/quran.dart' as quran;

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: SurahNameScreen());
  }
}

class SurahNameScreen extends StatefulWidget {
  const SurahNameScreen({super.key});
  @override
  State<SurahNameScreen> createState() => _SurahNameScreenState();
}

class _SurahNameScreenState extends State<SurahNameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: quran.totalSurahCount,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailSurah(index + 1),
                ));
          },
          leading: CircleAvatar(
            child: Text("${index + 1}"),
          ),
          title: Text(quran.getSurahNameArabic(index + 1) ,
                  style: GoogleFonts.amiriQuran(),),
          subtitle: Text(quran.getSurahName(index + 1)),
        );
      },
    ));
  }
}

class DetailSurah extends StatefulWidget {
  var snum;
  DetailSurah(this.snum, {super.key});

  @override
  State<DetailSurah> createState() => _DetailSurahState();
}

class _DetailSurahState extends State<DetailSurah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(quran.getSurahName(widget.snum)),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: ListView.builder(
            itemCount: quran.getVerseCount(widget.snum),
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  quran.getVerse(widget.snum, index + 1, verseEndSymbol: true),
                  textAlign: TextAlign.right,
                  style: GoogleFonts.amiri(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
