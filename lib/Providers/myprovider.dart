import 'package:finalradio/data/apiHelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_radio_player/flutter_radio_player.dart';

class MyProvider extends ChangeNotifier {
  Icon currentIcon = Icon(Icons.play_arrow, size: 20);
  FlutterRadioPlayer _flutterRadioPlayer = new FlutterRadioPlayer();
  bool flag = false, voiceFlag = false;
  String number;
  MyProvider() {
    initRadio();
    // number = ApiHelper.apiHelper.getCallNumber() as String;
  }
  FlutterRadioPlayer getRadio() {
    return _flutterRadioPlayer;
  }

  Future<bool> isPlaying() async {
    return await _flutterRadioPlayer.isPlaying();
  }

  void setUnSetMute() {
    _flutterRadioPlayer.setVolume(voiceFlag ? 100 : 0);
    voiceFlag = voiceFlag ? false : true;
    notifyListeners();
  }

  void isPlayerPlaying() {
    isPlaying().then((value) {
      flag = value;
    });
    notifyListeners();
  }

  void getCurrentIcon() {
    currentIcon = Icon(
      flag ? Icons.play_arrow : Icons.pause,
      size: 20,
    );
    notifyListeners();
  }

  initRadio() async {
    // String link = ApiHelper.apiHelper.getStreamLink() as String;
    await _flutterRadioPlayer.init(
        "إذاعة صوت القدس", "مباشر", "http://live.alboraq.ps:8000", "false");
  }

  play() async {
    try {
      await _flutterRadioPlayer.play();
      flag = true;
      notifyListeners();
    } on Exception catch (e) {
      flag = false;
      notifyListeners();
    }
  }

  pause() async {
    try {
      await _flutterRadioPlayer.pause();
      flag = false;
      notifyListeners();
    } on Exception catch (e) {
      // TODO
      print(">>>> pause");
      flag = true;
      notifyListeners();
    }
  }
}
