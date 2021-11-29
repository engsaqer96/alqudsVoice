import 'package:finalradio/Providers/myprovider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<MyProvider>(
      builder: (context, provider, x) => provider.getRadio == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Scaffold(
              appBar: AppBar(
                title: Text(
                  'إذاعة صوت القدس',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'FFShamelFamily-SansOneBold',
                      color: Color(0xFF2F3239)),
                ),
                centerTitle: true,
                automaticallyImplyLeading: false,
                backgroundColor: Color(0xFFF9FAFB),
              ),
              body: Container(
                color: Color(0xFFE5E5E5),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    SvgPicture.asset('assets/images/home.svg'),
                    SizedBox(
                      height: 80,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            height: 70,
                            width: 70,
                            child: MaterialButton(
                              onPressed: () async {
                                // await provider.isPlaying();
                                // provider.play();
                                provider.flag
                                    ? provider.pause()
                                    : provider.play();
                              },
                              color: Color(0xFF07617C),
                              textColor: Colors.white,
                              child: Icon(
                                !provider.flag ? Icons.play_arrow : Icons.pause,
                                size: 30,
                              ),
                              shape: CircleBorder(),
                            )
                            // Container(
                            //     color: Color(0xFF2D254C),
                            //     child:
                            //     IconButton(
                            //         color: Color(0xFFE5E5E5),
                            //         onPressed: () {
                            //           provider.flag
                            //               ? provider.pause()
                            //               : provider.play();
                            //         },
                            //         icon: provider.flag
                            //             ? Icon(Icons.play_arrow)
                            //             : Icon(Icons.pause)),

                            ),
                        SizedBox(
                          width: 50,
                        ),
                        SizedBox(
                          height: 30,
                          width: 30,
                          child: GestureDetector(
                            onTap: () {
                              provider.setUnSetMute();
                            },
                            child: SvgPicture.asset(
                              provider.voiceFlag
                                  ? 'assets/images/sound_mute.svg'
                                  : 'assets/images/sound_max.svg',
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 90,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        'الأن بامكان الجالية العربية بامريكا الاستماع مجانا من أي  هاتف على الرقم المجاني',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'FFShamelFamily-SansOneBook',
                            color: Color(0xFF2F3239),
                            fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '(610) 400-0331',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'FFShamelFamily-SansOneBook',
                          color: Color(0xFFC88319),
                          fontSize: 16),
                    )
                  ],
                ),
              )
              // Stack(children: <Widget>[
              //   Positioned(child: SvgPicture.asset('assets/images/mic.svg'),
              //   left: 0,
              //   right: 0,
              //   bottom: MediaQuery.of(context).size.height/2,
              //   ),
              //   // Positioned(child: SvgPicture.asset('assets/images/cir.svg'),
              //   // left: 0,
              //   // right: 0,
              //   // bottom: MediaQuery.of(context).size.height/2,),
              //   // Positioned(child:  SvgPicture.asset('assets/images/mic.svg'),
              //   // left: 0,
              //   // right: 0,
              //   // bottom: MediaQuery.of(context).size.height/2,),

              // ],)
              ),
    );
  }
}
