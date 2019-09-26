import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TwoActivity',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Two Activity'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _textInputController = new TextEditingController();
  String _showText = '';
  _onPressed(){
     setState(() {
      _showText = _textInputController.text;
      _textInputController.text="";
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('Message Recived', style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.w500),),
                Text('$_showText', style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w400),),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[

            Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  controller: _textInputController,
                  autocorrect: true,
                  maxLines: 2,
                  decoration: InputDecoration(hintText: 'Enter a Messages'),
                ),
              ),
              Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: RaisedButton(
                      onPressed: _onPressed,
                      color: Colors.red[200],
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                        Text('Send', style: TextStyle(color:Colors.black),),
                      ],),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    ),
                  )
              ],
            )
          ],
        ),
      ),
    );
  }
}
