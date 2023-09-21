import 'package:flutter/material.dart';
class DismissableWidger extends StatefulWidget {
  const DismissableWidger({super.key});

  @override
  State<DismissableWidger> createState() => _DismissableWidgerState();
}

class _DismissableWidgerState extends State<DismissableWidger> {
  List<String> fruits =['mango','banana','orange','papaya','apple'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(itemBuilder: (context,index){
          final fruit = fruits[index];
          return Dismissible
            (key: Key(fruit),
              onDismissed: (direction){
              if(direction==DismissDirection.startToEnd){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Deleted Sucessfully'),backgroundColor: Colors.red,behavior: SnackBarBehavior.floating,));
              }
              else{
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Sucessfully added'),backgroundColor: Colors.green,behavior: SnackBarBehavior.floating,));

              }
              },
              background: Container(
                color: Colors.red,
                child: Icon(Icons.delete,color: Colors.white,),
              ),
              secondaryBackground: Container(
                color: Colors.green,
                child: Icon(Icons.done,color: Colors.white,),
              ),

              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                shadowColor: Colors.red[200],
                child: ListTile(
                  title: Text(fruit),
                ),
              ));
        },itemCount:fruits.length ,),
      ),
    );
  }
}
