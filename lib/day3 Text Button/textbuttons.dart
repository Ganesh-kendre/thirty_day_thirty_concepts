import 'package:flutter/material.dart';
class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.yellow),
                elevation: MaterialStateProperty.all(20),
                overlayColor: MaterialStateProperty.all(Colors.orange),
                shadowColor: MaterialStateProperty.all(Colors.blue)
              ),
                onPressed: (){},
                child:const  Text("Text Button",style: TextStyle(fontSize: 20),),
            ),
            const SizedBox(height: 20,),
            Container(
              height: 70,
              width: 200,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
                  elevation: MaterialStateProperty.all(20),
                  // shadowColor: MaterialStateProperty.all(Colors.deepPurple[100]),
                    overlayColor: MaterialStateProperty.all(Colors.red),
                  backgroundColor: MaterialStateProperty.all(Colors.deepPurple[100],
                  )
                ),
                  onPressed: (){},
                  child: const Text('ElevatedButton',style: TextStyle(fontSize: 20),
                  ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
