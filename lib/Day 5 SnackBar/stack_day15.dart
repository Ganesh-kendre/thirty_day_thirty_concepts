import 'package:flutter/material.dart';
class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        color: Colors.grey[100],
        child: Stack(
          children: [
            Positioned(
              top:90,
                right:  MediaQuery.of(context).size.width *0.1,
                left: MediaQuery.of(context).size.width *0.1,
                child: Card(
                  elevation: 21,
                  shadowColor: Colors.red.shade200,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  child: Container(

                  height:MediaQuery.of(context).size.height*0.6,

             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(12),
               color: Colors.white,
               boxShadow: [

               ]
             ),
            ),
                ))
          ],
        ),

      ),
    );
  }
}
