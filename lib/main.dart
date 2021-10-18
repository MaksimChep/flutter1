import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> imglink = ['https://upload.wikimedia.org/wikipedia/ru/4/41/Luffy_Before_Timeskip.png',
                 'https://upload.wikimedia.org/wikipedia/ru/d/d5/NAMI_ONE_PIECE.png',
                 'https://upload.wikimedia.org/wikipedia/ru/9/90/ZORO_RORONOA.png',
                 'https://static.wikia.nocookie.net/onepiece/images/c/ca/Manga_Sanji_Pre_Timeskip_Infobox.png/revision/latest/scale-to-width-down/270?cb=20170605215639&path-prefix=ru',
                 'https://static.wikia.nocookie.net/onepiece/images/2/2f/Anime_Usopp_Pre_Timeskip_Infobox.png/revision/latest/scale-to-width-down/270?cb=20130309123432&path-prefix=ru'];
  int index = 2;
  void _incrementIndex() {
    setState(() {

      if(index < 4) {
        index++;
      }
      else {
        index = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:
       SafeArea(
        child: Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        image: DecorationImage(
            image:NetworkImage(imglink[index])
        ),
      ),
            child: Text('Hello, World!',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20))
    )
      ),
          

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementIndex,

        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
