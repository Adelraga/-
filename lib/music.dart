import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class MusicSharingPage extends StatefulWidget {
  @override
  _MusicSharingPageState createState() => _MusicSharingPageState();
}

class _MusicSharingPageState extends State<MusicSharingPage> {
  final AudioPlayer _audioPlayer = AudioPlayer();

  Future<void> _playMusicClip() async {
    // Copy the asset to a temporary directory
    Directory tempDir = await getTemporaryDirectory();
    String filePath = '${tempDir.path}/sound.mp4';

    final ByteData bytes = await rootBundle.load('assets/sound.mp4');
    final File file = File(filePath);
    await file.writeAsBytes(bytes.buffer.asUint8List(), flush: true);

    // Display a message to the user and wait for 5 seconds before playing the audio
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Audio will start playing in 5 seconds. Go to WhatsApp and get ready to record it using the mic button.',
        ),
        duration: Duration(seconds: 5),
      ),
    );

    // Wait for 5 seconds before playing the audio
    await Future.delayed(Duration(seconds: 5));

    // Play the audio file
    await _audioPlayer.play(DeviceFileSource(filePath));

    // Optional message after audio starts playing
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Audio is now playing in the background. Go to WhatsApp and record it using the mic button.',
        ),
        duration: Duration(seconds: 5),
      ),
    );
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Share Music as Voice Message')),
      body: Center(
        child: ElevatedButton(
          onPressed: _playMusicClip,
          child: Text('Play and Record as Voice Message'),
        ),
      ),
    );
  }
}
