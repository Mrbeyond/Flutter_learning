import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';

class Utility{
  BuildContext context;
  Utility({this.context});


  double get deviceHeight{
    return MediaQuery.of(context).size.height;
  }

  double get paddingTop{
    return MediaQuery.of(context).padding.top;
  }

  double get paddingBottom{
    return MediaQuery.of(context).padding.bottom;
  }

  double safeHeight(){
    return deviceHeight - paddingBottom - paddingTop;
  }

  double get safeWidth{
    return MediaQuery.of(context).size.width;
  }
}

class DartHttp{
  static final  HttpClient http = new HttpClient();
  dynamic getJson() async {
    http.getUrl(Uri.parse("http://192.168.43.41:5050/data.json"))
    .then((HttpClientRequest request) => request.close())
    .then((HttpClientResponse response) => {
      response.transform(Utf8Decoder())
      .listen((event) {
        print(event);
        Map data = json.decode(event) as Map;
        print(data['education']);
        for(dynamic arr in data['education']){
          print(arr.runtimeType);
        }
        // forEach()

      })
    })
    .catchError((e) {
      print(e);
    });
  }
}