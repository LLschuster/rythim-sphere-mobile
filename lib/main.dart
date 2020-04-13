import 'package:flutter/material.dart';
import './IdScreen.dart';
import 'routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluter Demo',
      initialRoute: '/',
      routes: {
        AppRoutes.homescreen: (context) =>  MyHomePage(title: 'Filter Demo Home Page'),
        AppRoutes.idscreen: (context) => IdScreen(),
      },
      theme: ThemeData(
        primarySwatch: Colors.grey,
        accentColor: Colors.blue,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  static const String routeName = '/';
  @override
  Widget build(BuildContext context) {

    Widget mainTitle = Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: const Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore" +  
              "et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata.",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),),)
          ],
        ),
      );

    Widget infoCard = Container(
      height: 200.0,
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: 
      Card(
      semanticContainer: true,
      elevation: 24.0,
      child:  Column(
        children: <Widget>[
          const ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
            title: const Text("Los gehts", textAlign: TextAlign.center,) ,
          ),
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text('ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.'
          , style: TextStyle(fontSize: 14),
          ),) ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
            FlatButton(child: const Text('jetzt auslösen'),
                              onPressed: () {
                                /*do something */
                                Navigator.push(context, MaterialPageRoute(builder: (context) => IdScreen()));
                                },
            ),
            ]
          )
        ]
      ),
    )
    ); 
    return Scaffold(
      appBar: AppBar(title: Row(children: <Widget>[ Padding(padding: EdgeInsets.symmetric(horizontal: 70.0), child: const Text("Rythim Sphere"))],),),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(child: const Text('Rythim Sphere'),),
            ListTile(
              title: const Text('Main Screen'),
              onTap: () => Navigator.pushNamed(context, AppRoutes.homescreen),
            ),
            ListTile(
              title: const Text('Second Screen'),
              onTap: () => Navigator.pushNamed(context, AppRoutes.idscreen),
            ),
          ]
        ),
        ),
      body: SafeArea(child: ListView(
        children: [
        mainTitle,
        infoCard,
        infoCard
      ]
      ) ) 
    );
  }
}

