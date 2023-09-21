import 'package:flutter/material.dart';
class SnackBarWidger extends StatelessWidget {
  const SnackBarWidger({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("SnackBar"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Show SnackBar Now"),
              duration: const Duration(seconds: 3),
              backgroundColor: Colors.blue[200],
              behavior: SnackBarBehavior.floating,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              action: SnackBarAction(
                label: 'undo',
                textColor: Colors.blueAccent,
                onPressed: (){},
              ),
            ));
          },
          child: Text('Show SnackBar'),
        ),
      ),
    );
  }
}
