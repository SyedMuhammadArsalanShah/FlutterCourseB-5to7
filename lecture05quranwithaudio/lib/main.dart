import 'dart:async';
import 'package:just_audio/just_audio.dart';
import 'package:quran/quran.dart' as quran;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(
      Duration(seconds: 5),
      () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => QuranIndex(),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[900],
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          child: Center(
            child: Image.asset("assets/images/i.png"),
          ),
        ),
      ),
    );
  }
}

class QuranIndex extends StatefulWidget {
  const QuranIndex({super.key});

  @override
  State<QuranIndex> createState() => _QuranIndexState();
}

class _QuranIndexState extends State<QuranIndex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Mushaf"),
        ),
        body: ListView.builder(
          itemCount: 114,
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
              title: Text(
                quran.getSurahNameArabic(index + 1).toString() +
                    " | " +
                    quran.getSurahName(index + 1).toString(),
              ),
              subtitle: Text(quran.getSurahNameEnglish(index + 1)),
            );
          },
        ));
  }
}

class DetailSurah extends StatefulWidget {
  var numsurah;
  DetailSurah(this.numsurah, {super.key});

  @override
  State<DetailSurah> createState() => _DetailSurahState();
}

class _DetailSurahState extends State<DetailSurah> {



AudioPlayer audioPlayer = AudioPlayer();
  IconData playpauseButton = Icons.play_circle_fill_rounded;
  bool isplaying = true;

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  Future<void> togglebutton() async {
    try {
      final audiourl = await quran.getAudioURLBySurah(widget.numsurah );
      print(audiourl);
      audioPlayer.setUrl(audiourl);

      // if isplaying == true
      if (isplaying) {
        audioPlayer.play();

        setState(() {
          playpauseButton = Icons.pause_circle_rounded;
          isplaying = false;
        });
      } else {
        audioPlayer.pause();
        setState(() {
          playpauseButton = Icons.play_circle_fill_rounded;
          isplaying = true;
        });
      }
    } catch (e) {
      print(e);
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: ListView.builder(
                itemCount: quran.getVerseCount(widget.numsurah),
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      quran.getVerse(widget.numsurah, index + 1,
                          verseEndSymbol: true),
                      textAlign: TextAlign.right,
                      style: GoogleFonts.amiri(),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      
             Card(
                elevation: 6,
                shadowColor: Colors.brown[900],
                child: Center(
                  child: IconButton(
                      icon: Icon(
                        playpauseButton,
                        color: Colors.brown[900],
                      ),
                      onPressed: togglebutton),
                ),
              ),
      ]  
      ),
    );
  }
}
