import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_another_portfolio/NewHomePage.dart';
import 'package:url_launcher/url_launcher.dart';

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
      title: 'Thomas the Maker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Thomas the Maker',),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<void> _launchUrl() async {
    final Uri _url = Uri.parse('https://github.com/ThomasVuNguyen');
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      body: Center(
          child: FutureBuilder(
            future: Future.delayed(const Duration(seconds: 2)),
            builder: (c,s){
              if (s.connectionState ==ConnectionState.done){
                _launchUrl();
                window.close();
                SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                return Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/Ducky.gif'),
                      SizedBox(height: 20,),
                      Text("Enjoy!", style: GoogleFonts.inter(fontWeight: FontWeight.bold, fontSize: 20),),
                    ],
                  ),
                );

              }
              else{
                return Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/Ducky.gif'),
                      SizedBox(height: 20,),
                      Text("Loading portfolio...",style: GoogleFonts.inter(fontWeight: FontWeight.bold, fontSize: 20),),
                    ],
                  ),
                );
              }
            }
          )
      )
    );
  }
}
