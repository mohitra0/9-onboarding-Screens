import 'package:concentric_transition/page_view.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ConcentricTransition extends StatefulWidget {
  const ConcentricTransition({Key key}) : super(key: key);

  @override
  _ConcentricTransitionState createState() => _ConcentricTransitionState();
}

class _ConcentricTransitionState extends State<ConcentricTransition> {
  List<dynamic> pages = [
    {
      'image': 'https://assets9.lottiefiles.com/packages/lf20_wdqlqkhq.json',
    },
    {'image': 'https://assets10.lottiefiles.com/packages/lf20_dacnbi4x.json'},
    {'image': 'https://assets9.lottiefiles.com/packages/lf20_ipxjas7d.json'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ConcentricPageView(
      radius: 30,
      verticalPosition: 0.85,
      colors: [Colors.white, Colors.blueAccent, Colors.pinkAccent],
      itemBuilder: (index, value) {
        int pageIndex = (index % pages.length);
        return Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.network(
                pages[pageIndex]['image'],
                width: 300,
              )
            ],
          ),
        );
      },
    ));
  }
}
