import 'package:flutter/material.dart';
class InstaPortfolio extends StatelessWidget {
  const InstaPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Ganesh_kendre_28'),
        leading: Icon(Icons.arrow_back_ios_new),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16,right: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(radius: 50,),
                Column(
                  children: [
                    Text('50',style: TextStyle(fontSize: 19),),
                    Text('Posts',style: TextStyle(color: Colors.grey,fontSize: 17))
                  ],
                ),
                Column(
                  children: [
                    Text('150',style: TextStyle(fontSize: 19),),
                    Text('Followers',style: TextStyle(color: Colors.grey,fontSize: 17))
                  ],
                ),
                Column(
                  children: [
                    Text('650',style: TextStyle(fontSize: 19),),
                    Text('following',style: TextStyle(color: Colors.grey,fontSize: 17))
                  ],
                ),
              ],
            ),
            Row(

            children: [
              Container(
                padding: EdgeInsets.only(left: 120,right: 30),
                child: ElevatedButton(onPressed: (){}, child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text('Follow'),
                )),
              ),
              CircleAvatar(
                 child: Center(child: Icon(Icons.arrow_drop_down),),
              )
            ],),
             SizedBox(height: 20,),
            Container(
              height: 140,
              // color: Colors.blue,
              child: ListView.builder(itemBuilder: (context,index){
                return Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(8),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,color: Colors.green,image:DecorationImage(image: NetworkImage('https://imgv3.fotor.com/images/gallery/Realistic-Male-Profile-Picture.jpg'))
                      ),
                    ),
                    Text('Ganesh')
                  ],
                );
              },itemCount: 10,scrollDirection: Axis.horizontal,),
            ),
            Container(
              height: 80,
              // color: Colors.blue,
              child: TabBarWidget(),
            ),
            Expanded(child: Container(
              // color: Colors.green,
              child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(

                      decoration: BoxDecoration(
                        // color: Colors.red,
                        image: DecorationImage(image: NetworkImage('https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg'),fit: BoxFit.cover)
                      ),
                    ),
                  ),
                );
              },itemCount: 20,),
            ))
          ],
        ),
      ),
    );
  }
}
class TabBarWidget extends StatefulWidget {
  const TabBarWidget({super.key});

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, child:Column(
      children: [
        TabBar(tabs: [
          Tab(icon: Icon(Icons.home,color: Colors.black,),text: 'Home',),
          Tab(icon: Icon(Icons.favorite,color: Colors.black,),text: 'Like',),
          Tab(icon: Icon(Icons.save,color: Colors.black,),text: 'Save',),
        ],
        ),
      ],
    ),
    );
  }
}

