import 'package:flutter/material.dart';
class AlertDailogWidget extends StatelessWidget {
  const AlertDailogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDailog'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            _showMyDailog(context);
          },
          child: Text("Click to Alert"),
        ),
      ),
    );
  }
}
Future <void> _showMyDailog(BuildContext context)async{
  return showDialog(context: context, builder: (BuildContext context){
    return Center(
      child: SingleChildScrollView(
        child: AlertDialog(
          elevation: 20,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          backgroundColor: Colors.blue[100],
          title: Text('This is AlertDailogBox'),
          content:  Text('This is an message showing you is that ok'),

          actions: [
            IconButton(
            onPressed: (){
              Navigator.pop(context);
            }
                , icon: Icon(Icons.delete)),
            IconButton(
                onPressed: (){
                  Navigator.pop(context);
                }
                , icon: Icon(Icons.add))
          ],
        ),
      ),
    );
  });
}
