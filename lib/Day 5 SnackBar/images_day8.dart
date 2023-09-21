import 'package:flutter/material.dart';
class ImagesWidget extends StatelessWidget {
  const ImagesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 250,
          width: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                spreadRadius: 7,

              )
            ],
            color: Colors.blue,
            image: DecorationImage(
              image: NetworkImage('https://e0.pxfuel.com/wallpapers/109/883/desktop-wallpaper-shinchan-for-war.jpg'),
              fit: BoxFit.cover,
            ),

          ),
        ),
      ),
    );
  }
}
