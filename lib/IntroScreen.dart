import 'package:flutter/material.dart';
import 'package:flutter_ui/HomePage.dart';
import 'package:flutter_ui/SignIn.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IntroductionScreen(
          scrollPhysics: BouncingScrollPhysics(),
          globalBackgroundColor: Colors.white,
          done: Text(
            "Skip",
            style: TextStyle(
              color: Color.fromARGB(255, 243, 155, 22),
            ),
          ),
          onDone: () => goToSignIn(context),
          next: Text(
            "Next",
            style: TextStyle(
              color: Color.fromARGB(255, 243, 155, 22),
            ),
          ),
          dotsDecorator: DotsDecorator(
            size: const Size.square(10.0),
            activeSize: const Size(20.0, 10.0),
            activeColor: Color.fromARGB(255, 243, 155, 22),
            color: Color.fromARGB(66, 219, 2, 2),
            spacing: const EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0)),
          ),
          pages: [
            PageViewModel(
              titleWidget: Text(
                "Quick Organize",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                ),
              ),
              bodyWidget: Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s been the industry's standard dummy text ever since the 1500s",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey.shade400, fontSize: 14),
                ),
              ),
              image: Image.asset("assets/images/4753177.jpg"),
            ),
            PageViewModel(
              titleWidget: Text(
                "Easy to  Share",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                ),
              ),
              bodyWidget: Text(
                " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s been the industry's standard dummy text ever since the 1500s",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey.shade400, fontSize: 14),
              ),
              image: Image.asset("assets/images/6368627.jpg"),
            ),
            PageViewModel(
                titleWidget: Text(
                  "Simple to  Use",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
                bodyWidget: Text(
                  " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s been the industry's standard dummy text ever since the 1500s",
                  style: TextStyle(color: Colors.grey.shade400, fontSize: 14),
                ),
                image: Image.asset("assets/images/6502969.jpg"),
                footer: TextButton(
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      fixedSize: Size(800, 50),
                      padding: EdgeInsets.all(20),
                      backgroundColor: Color.fromARGB(255, 243, 155, 22),
                      foregroundColor: Colors.white),
                  onPressed: () {},
                  child: Text("Get Started"),
                )),
          ],
        ),
      ),
    );
  }
}

goToSignIn(context) => Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => HomePage(),
      ),
    );
