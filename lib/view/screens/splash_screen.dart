import 'dart:async';

import 'package:app/view/widgets/bit_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/dimensionScale.dart';
import 'bottom_nav_bar_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),()=>Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>BottomNavBarScreen()) ));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [Colors.orangeAccent, Colors.white])),
      child: Scaffold(

        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  imagesBuilder(),
                  SizedBox(height: Dimension.scaleHeight(100),),
                  textBuilder(),
                  SizedBox(height: Dimension.scaleHeight(20),),

                  logoBuilder()

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget textBuilder()
  {
    return Column(
      children: [
        BigText(text: "Powred by"),
        BigText(text: "The Sparks Foundation")
      ],
    );
  }

  Widget imagesBuilder() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
            height: Dimension.scaleWidth(100),
            width: Dimension.scaleWidth(100) ,
            child: SvgPicture.asset("assets/images/Bank.svg", fit:BoxFit.fill,semanticsLabel: 'Acme Logo')),
        SizedBox(width: Dimension.scaleWidth(20),),
        Container(
            height: Dimension.scaleWidth(50),
            width: Dimension.scaleWidth(100) ,
            child: SvgPicture.asset("assets/images/arrow.svg", fit:BoxFit.fill,semanticsLabel: 'Acme Logo')),
        SizedBox(width: Dimension.scaleWidth(20),),
        Container(
            height: Dimension.scaleWidth(170),
            width: Dimension.scaleWidth(120) ,
            child: SvgPicture.asset("assets/images/mobile.svg", fit:BoxFit.fill,semanticsLabel: 'Acme Logo')),

      ],
    );
  }
  Widget logoBuilder()
  {
    return   Container(
      height: Dimension.scaleWidth(170),
      width: Dimension.scaleWidth(170),
      child: Image.asset("assets/images/sparks.png"),
    );
  }
}

