import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:google_fonts/google_fonts.dart';

class LiquidSwipeExample extends StatefulWidget {
  const LiquidSwipeExample({Key key}) : super(key: key);

  @override
  _LiquidSwipeExampleState createState() => _LiquidSwipeExampleState();
}

class _LiquidSwipeExampleState extends State<LiquidSwipeExample> {
  // Photos from google
  final pages = [
    Container(
      height: double.infinity,
      child: Stack(
        children: [
          Container(
            // color: Colors.black,
            height: double.infinity,
            child: Image.network(
              'https://w0.peakpx.com/wallpaper/432/1/HD-wallpaper-el-juego-del-calamar-netflix-squid-game.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 400),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Center(
                //   child: Text(
                //     'Squid Games',
                //     style: GoogleFonts.roboto(
                //       textStyle: TextStyle(
                //           color: Colors.white,
                //           fontWeight: FontWeight.bold,
                //           fontSize: 40),
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    'You don\'t trust people because they are trustworthy.',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    Container(
      height: double.infinity,
      child: Image.network(
        'http://m.gettywallpapers.com/wp-content/uploads/2021/10/Squid-Game-Phone-Wallpaper.jpg',
        fit: BoxFit.cover,
      ),
    ),
    Container(
      height: double.infinity,
      child: Image.network(
        'http://m.gettywallpapers.com/wp-content/uploads/2021/10/Wallpaper-Squid-Game.jpeg',
        fit: BoxFit.cover,
      ),
    ),
    Container(
      height: double.infinity,
      child: Image.network(
        'http://m.gettywallpapers.com/wp-content/uploads/2021/10/Squid-Game-iPhone-Wallpaper.jpg',
        fit: BoxFit.cover,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          return LiquidSwipe(
            pages: pages,
            enableLoop: true,
            fullTransitionValue: 300,
            enableSlideIcon: true,
            waveType: WaveType.liquidReveal,
            positionSlideIcon: 0.5,
            slideIconWidget: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPageChangeCallback: (page) {
              print(page);
            },
            liquidController: LiquidController(),
          );
        },
      ),
    );
  }
}
