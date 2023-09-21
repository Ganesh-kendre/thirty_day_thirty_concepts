import 'package:flutter/material.dart';
class ListViewAndGridView extends StatelessWidget {
  const ListViewAndGridView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> fruits = ['mango','banana','orange','papaya','promagranet'];
    Map person_fruits = {
      'fruits': ['grapes','banana','orange','papaya','promagranet'],
      'person':['ram','sham','gita','babita','shruthi'],
    };
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[100],
        centerTitle: true,
        elevation: 0,
        title: Text("ListView And GridView"),
      ),
      // body: Container(
      //   child: ListView.builder(itemBuilder: (context ,index){
      //     return Padding(
      //       padding: const EdgeInsets.only(top: 4,left: 20,right: 20),
      //       child: Card(
      //         elevation: 10,
      //         shadowColor: Colors.red,
      //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
      //
      //         child: ListTile(
      //           title: Text(person_fruits['person'][index]),
      //           subtitle: Text(person_fruits['fruits'][index]),
      //         ),
      //       ),
      //     );
      //   },itemCount: fruits.length,),
      // ),

      body: Container(
        child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
         crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10

        ), itemBuilder: (context,index){
          return Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
            shadowColor: Colors.red,
            elevation: 10,
            color: Colors.black,
            child: Center(child: Text(fruits[index],style: TextStyle(color: Colors.white),),),
          );
        },itemCount: fruits.length,),
      ),
    );
  }
}
