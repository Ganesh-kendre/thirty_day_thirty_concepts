import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[100],
        title: Text("Drawer"),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue[100],
       child: Column(
         children: [
           Container(
             width: double.infinity,
               color: Colors.blue[100],
               child: DrawerHeader(
             padding: EdgeInsets.only(left: 10),
               child:Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage('https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg'),
                    ),
                    SizedBox(height: 12,),
                    Text('Ganesh kendre',style: TextStyle(color: Colors.white,fontSize: 19),),
                    SizedBox(height: 8,),
                    Text('Ganesh kendre',style: TextStyle(color: Colors.white,fontSize: 19),),
                  ],
               ) ,
           ),
           ),
           ListTile(
             leading: Icon(Icons.home,),
             title: Text('Home'),
           ),
           ListTile(
             leading: Icon(Icons.home),
             title: Text('Home'),
           ),
           ListTile(
             leading: Icon(Icons.home),
             title: Text('Home'),
           ),
           ListTile(
             leading: Icon(Icons.home),
             title: Text('Home'),
           ),
         ],
       ),
      ),
      body: Center(child: Text('Drawer'),),
    );
  }
}
