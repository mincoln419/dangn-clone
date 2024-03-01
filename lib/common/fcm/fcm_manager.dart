import 'package:fast_app_base/app.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';

class FcmManager{
  static void requestPermission(){
    FirebaseMessaging.instance.requestPermission();
  }

  static void initialize() async{
    final token = await FirebaseMessaging.instance.getToken();
    //print(token);



    FirebaseMessaging.onMessage.listen((message) {
      final title = message.notification?.title;
      print('title : $title');
      if(title == null){
        return;
      }
      App.navigatorKey.currentContext!.showSnackbar(title);
    });
  }
}