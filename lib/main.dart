import 'package:finalradio/ui/home.dart';
import 'package:finalradio/ui/splachscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Providers/myprovider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (BuildContext context) {
        return MyProvider();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplachScreen(),
      )));
}
