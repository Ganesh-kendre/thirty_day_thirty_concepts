import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextLiquidFill(
          text: 'GANESH KENDRE',
          waveColor: Colors.blue,
          textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),

        ),

      ),
    );
  }
}
