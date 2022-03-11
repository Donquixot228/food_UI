import 'dart:async';
import 'package:flutter/material.dart';
import 'package:native_splash_video/pages/home_page/home_page.dart';

import '../animations/page_transition.dart';
import '../utils/navigation.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    _next();
    super.initState();
  }

  _next() {
    Timer(
      const Duration(milliseconds: 450),
      () {
        Navigation.push(
          context,
          customPageTransition: PageTransition(
            child: const HomePage(),
            type: PageTransitionType.fadeIn,
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(),
    );
  }
}
