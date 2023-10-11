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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("Nevin Jojo", style: GoogleFonts.publicSans(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 24, fontStyle: FontStyle.normal )),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                  Flexible(
                    flex: 8,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("I'm a software developer who builds immersive and user-friendly applications", style: TextStyle( fontWeight: FontWeight.w400, fontSize:24),),
                        Text("Check out what books I'm reading, find me on Twitter/ Github/ LinkedIn, or just send me an email saying hi")
                      ],
                    ),
                  ),
                Flexible(
                  flex:2,
                  child: Image.asset('assets/notion_avatar.png') ,
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}
