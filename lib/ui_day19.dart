import 'package:flutter/material.dart';
class MyUiDesign extends StatelessWidget {
  const MyUiDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 490,
                    child: Stack(
                      children: [
                        Container(
                          height: 450,
                          color: Colors.blue,
                          child: Image.network('https://www.pixelstalk.net/wp-content/uploads/2016/08/Best-Amazing-Images-For-Desktop.jpg',fit: BoxFit.cover,),
                        ),
                        Positioned(
                          top: 48,
                            left: 20,
                            child: Icon(Icons.arrow_back_ios_new,size: 30,color: Colors.white,)),
                        Positioned(
                            top: 48,
                            right: 20,
                            child: Icon(Icons.favorite_border,size: 30,color: Colors.white,)),
                        Positioned(
                          bottom: 0,
                            right: 70,
                            child: CircleAvatar(
                              radius: 40,
                              backgroundImage: NetworkImage('https://www.pixelstalk.net/wp-content/uploads/2016/08/Best-Amazing-Images-For-Desktop.jpg'),
                            )),
                      ],
                    ),
                  )
                ],
              ),
             Padding(
               padding: const EdgeInsets.only(left: 20,right: 20,top: 0),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text('Madried City Tour',style: TextStyle(fontSize: 28),),
                   Text('For Designers ',style: TextStyle(fontSize: 28),),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Row(
                         children: [
                           Text('20'),
                           SizedBox(width: 10,),
                           Icon(Icons.favorite),
                         ],
                       ),
                       Row(
                         children: [
                           Text('30'),
                           SizedBox(width: 10,),
                           Icon(Icons.comment_bank),
                         ],
                       ),
                       Row(
                         children: [
                           Text('50'),
                           SizedBox(width: 10,),
                           Icon(Icons.share),
                         ],
                       ),
                       Row(
                         children: [
                           Text('30'),
                           SizedBox(width: 10,),
                           Icon(Icons.save),
                         ],
                       ),
                     ],
                   ),
                   SizedBox(height: 20,),
                   Text('This Story is About Serial Killer',style: TextStyle(color: Colors.grey,fontSize: 19),),
SizedBox(height: 20,),
                   Text('A serial killer is typically a person who murders three or more people, with the murders taking place over more than a month and including a significant period of time between them. While most authorities set a threshold of three murders, others extend it to four or lessen it to two.'
                   ,style: TextStyle(fontSize: 19),)
                 ],
               ),
             )
            ],
          ),
        ),
      )
    );
  }
}
