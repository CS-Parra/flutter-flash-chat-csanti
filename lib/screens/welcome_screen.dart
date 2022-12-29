import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../components/rounded_button.dart';

class WelcomeScreen extends StatefulWidget {

  //to associate the value to the class, not to the object
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin {

  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    /*
        To change the background changing color
        //In the backgroundColor of the scaffold:
        //          backgroundColor: animation.value,

    controller = AnimationController( 
        vsync: this,
        //upperBound: 100.0,
        duration: Duration(seconds: 6),
    );

    animation = ColorTween(begin: Colors.red, end: Colors.blue).animate(controller);


    controller.forward();

    animation.addStatusListener((status) {
      if(status == AnimationStatus.completed){
        controller.reverse(from: 1.0);
      }else if(status == AnimationStatus.dismissed){
        controller.forward();
      }
    });

     */
    /*
    To print the state of the color each cycle
    controller.addListener(() {
      setState(() {
        print(animation.value);
      });
    });

     */
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60.0,
                    //animation.value * 100 tamano
                  ),
                ),
                //${controller.value.toInt()}%
                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'Flash Chat',
                      textStyle: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                      ),
                      speed: Duration(milliseconds: 200),
                    ),
                  ],
                  totalRepeatCount: 4,
                  pause: const Duration(milliseconds: 1000),
                  displayFullTextOnTap: true,
                  stopPauseOnTap: true,
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(
                colorButton: Colors.lightBlueAccent,
                textButton: "Log in",
                onPressedFunction: () {
                  Navigator.pushNamed(context, LoginScreen.id);
                }),
            RoundedButton(
              colorButton: Colors.blueAccent,
              textButton: "Register",
              onPressedFunction: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              }),
          ],
        ),
      ),
    );
  }
}


