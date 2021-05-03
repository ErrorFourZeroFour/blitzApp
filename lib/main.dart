import 'package:blitzapp/drawer/drawer.dart';
import 'package:blitzapp/listScreen/blitzerlist.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final homeTitle = 'Blitzapp';
  final appTitle = 'Flutter Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: homeTitle),
      routes: {
        MainDrawer.routeName: (ctx) => MainDrawer(),
        BlitzerListe.routeName: (ctx) => BlitzerListe()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final imagePath1 = 'res/images/firsttry.jpeg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        drawer: MainDrawer(),
        body: SingleChildScrollView(
          child: Row(
            children: [
              Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 5, vertical: 5),
                    child: Stack(
                      children: [
                        Image.asset(imagePath1),
                        Positioned(
                          bottom: 0,
                          child: Container(
                            width: 210,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.black,
                                    Colors.black
                                        .withOpacity(0.3)
                                  ]),
                            ),
                            child: const Text(
                              "Blitzer melden!",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
              Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed('blitzerliste');
                  },
                  child: Stack(
                    children: [
                      // ignore: sized_box_for_whitespace
                      Container(
                        height: 150,
                        child: Image.asset(
                            'res/images/blitzerliste.jpeg'),
                      ),
                      Positioned(
                          top: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black,
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.black,
                                    Colors.black
                                        .withOpacity(0.3)
                                  ]),
                            ),
                            child: const Text(
                              "Blitzerliste",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white),
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
