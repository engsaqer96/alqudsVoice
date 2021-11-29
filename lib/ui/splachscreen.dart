import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'home.dart';

class SplachScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5)).then((value) {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        return Home();
      }));
    });
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            top: 0,
            bottom: 0,
            right: 0,
            child: SvgPicture.asset(
              'assets/images/splash_.svg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            child: SvgPicture.asset('assets/images/logo.svg'),
            left: 0,
            right: 0,
            top: MediaQuery.of(context).size.height / 4,
          ),
          Positioned(
            child: Column(
              children: [
                Text(
                  'أهلاً بكم ',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 24,
                      fontWeight: FontWeight.w700                                                                                                                                                                           ,
                      fontFamily: 'FFShamelFamily-SansOneBold'),
                ),
                SizedBox(
                  height: 5,
                ),
                Text('إذاعة صوت القدس',
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        fontFamily: 'FFShamelFamily-SansOneBook'))
              ],
            ),
            bottom: MediaQuery.of(context).size.height / 10,
            left: 0,
            right: 0,
          )
        ],
      ),
    );
  }
}
