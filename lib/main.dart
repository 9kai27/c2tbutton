import 'package:flutter/material.dart';
//assets_audio_player
import 'package:assets_audio_player/assets_audio_player.dart';
//For make icon package.
import 'package:flutter_launcher_icons/android.dart';
import 'package:flutter_launcher_icons/constants.dart';
import 'package:flutter_launcher_icons/custom_exceptions.dart';
import 'package:flutter_launcher_icons/ios.dart';
import 'package:flutter_launcher_icons/main.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'c2tbutton',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AppMain(title: 'c2tbutton'),
    );
  }
}

class AppMain extends StatefulWidget {
  AppMain({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _AppMainState createState() => _AppMainState();
}

class _AppMainState extends State<AppMain> {

  final assetsAudioPlayer = AssetsAudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Text(''),
            Text(''),
            Text(''),
            Text(''),
            Text(''),
            Text(''),
            FlatButton(
              onPressed: () {
                assetsAudioPlayer.open(
                  Audio('assets/sounds/circle.mp3'),
                  autoStart: true,
                );
              },
              child: Text('○'),
              color: Colors.blue,
              textColor: Colors.white,
            ),
            Text(''),
            Text(''),
            Text(''),
            FlatButton(
              onPressed: () {
                assetsAudioPlayer.open(
                  Audio('assets/sounds/triangle.mp3'),
                  autoStart: true,
                );
              },
              child: Text('△'),
              color: Colors.yellow,
              textColor: Colors.white,
            ),
            Text(''),
            Text(''),
            Text(''),
            FlatButton(
              onPressed: () {
                assetsAudioPlayer.open(
                  Audio('assets/sounds/cross.mp3'),
                  autoStart: true,
                );
              },
              child: Text('×'),
              color: Colors.red,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}