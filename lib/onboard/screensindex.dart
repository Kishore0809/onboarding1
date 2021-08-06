import 'package:flutter/material.dart';
import 'package:flutter_onboarding/onboard/myscreen3widget.dart';
import 'package:flutter_onboarding/onboard/myscreenlast.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'mypage1widget.dart';
import 'mypage3Widget.dart';
class ScreenIndex extends StatefulWidget {
  int initial=0;

  ScreenIndex({required this.initial});

  @override
  _ScreenIndexState createState() => _ScreenIndexState();
}

class _ScreenIndexState extends State<ScreenIndex> {
  late PageController controller ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller= PageController(
      initialPage: widget.initial,
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
      children: [
        PageView(
          controller: controller,
          children: [
            MyPage1Widget(),
            MyPage3Widget(),
            MyScreen3Widget(),
            MyScreenLast(),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 120),
              child:Container(
                alignment: Alignment.centerRight,
                child: FlatButton(
                  onPressed: () => print('Skip'),
                  child: Text(
                    'Skip',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 650,),
              child: Container(
                padding: const EdgeInsets.all(10),
                child: SmoothPageIndicator(
                  controller: controller,
                  count: 4,
                  effect:  WormEffect(
                    // // spacing: 8.0,
                    // radius: 4.0,
                    // dotWidth: 20.0,
                    // // dotHeight: 4.0,
                    // //6y paintStyle: PaintingStyle.fill,
                    // // strokeWidth: 2.5,
                    dotColor: Colors.white,
                    activeDotColor: Colors.blue,
                  ),
                  onDotClicked: (index) => controller.animateToPage(
                      index,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInOut),
                ),
              ),
            ),

          ],
        ),
          ],
      ),
    );
  }
}
