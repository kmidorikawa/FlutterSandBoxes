import 'package:flutter/material.dart';
import 'sand1.dart';
import 'sand2.dart';
import 'sand3.dart';
import 'sand4.dart';
import 'sand5.dart';
import 'sand6.dart';
import 'sand7.dart';
import 'sand8.dart';
import 'sand9.dart';
import 'sand10.dart';
import 'sand11.dart';
import 'sand12.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter sand boxes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => FlutterSandBoxes(),
      },
    );
  }
}

class FlutterSandBoxes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Select Sand Box'),
        ),
        body: GridView.count(
            crossAxisCount: 4,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            children: <Widget>[
              Button_(context, "sand1"),
              Button_(context, "sand2"),
              Button_(context, "sand3"),
              Button_(context, "sand4"),
              Button_(context, "sand5"),
              Button_(context, "sand6"),
              Button_(context, "sand7"),
              Button_(context, "sand8"),
              Button_(context, "sand9"),
              Button_(context, "sand10"),
              Button_(context, "sand11"),
              Button_(context, "sand12"),
            ]),
      ),
    );
  }
}

RaisedButton Button_(context, text) {
  return RaisedButton(
    child: Text(text),
    onPressed: () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => getPage(text)));
    },
  );
}

getPage(text) {
  switch (text) {
    case 'sand1':
      return Sand1();
    case 'sand2':
      return Sand2();
    case 'sand3':
      return Sand3();
    case 'sand4':
      return Sand4();
    case 'sand5':
      return Sand5();
    case 'sand6':
      return Sand6();
    case 'sand7':
      return Sand7();
    case 'sand8':
      return Sand8();
    case 'sand9':
      return Sand9();
    case 'sand10':
      return Sand10();
    case 'sand11':
      return Sand11();
    case 'sand12':
      return Sand12();

    default:
      return Sand1();
  }
}
