import 'package:flutter/material.dart';
class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            showModalBottomSheet(context: context, builder: (context){
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    title: Text('Ganesh'),
                    subtitle: Text('orange'),
                  ),
                  ListTile(
                    title: Text('mahesh'),
                    subtitle: Text('grapes'),
                  ),
                  ListTile(
                    title: Text('srikanth'),
                    subtitle: Text('banana'),
                  ),
                  ListTile(
                    title: Text('karan'),
                    subtitle: Text('mango'),
                  ),
                  ListTile(
                    title: Text('ritesh'),
                    subtitle: Text('apple'),
                  ),
                ],
              );
            },
              backgroundColor: Colors.blue[100],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(topRight: Radius.circular(22),topLeft: Radius.circular(22)),
              ),
              elevation: 20,
              enableDrag: true,
            );
          },
          child: Text('Show Bottom Sheet'),
        ),
      ),
    );
  }
}
