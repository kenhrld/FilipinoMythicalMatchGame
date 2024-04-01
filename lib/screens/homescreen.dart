import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:memorygame/screens/iconlist.dart';
import 'package:memorygame/screens/matchinggame.dart';

class homeScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<homeScreen> {
  late AudioPlayer _audioPlayer;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
    _playBackgroundMusic();
  }

  Future<void> _playBackgroundMusic() async {
    try {
      await _audioPlayer.setAsset('assets/bgmusic2.mp3');

      await _audioPlayer.play();
    } catch (e) {
      print("Error playing start screen background music: $e");
    }
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Filipino Mythical Match",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 30),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                // Stop the start screen background music before navigating to Home
                _audioPlayer.stop();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => matchingGame()),
                );
              },
              child: Text('Start Game'),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => iconListScreen()),
                );
              },
              child: Text('View Characters'),
            ),
          ],
        )),
      ),
    );
  }
}
