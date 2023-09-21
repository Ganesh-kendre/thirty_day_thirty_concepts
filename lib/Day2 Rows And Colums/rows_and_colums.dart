import 'package:flutter/material.dart';
class RowsAndColumns extends StatelessWidget {
  const RowsAndColumns({super.key});

  @override
  Widget build(BuildContext context) {
    var h= MediaQuery.of(context).size.height;
    var w=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[100],
        centerTitle: true,
        title: Text("Rows and Columns"),
      ),
      body: Scaffold(
        body: Container(
          height: h,
          width:  w,
          color: Colors.grey,
          // child: Wrap(
          //   direction: Axis.vertical,
          //   alignment:WrapAlignment.center,
          //   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     Container(height: 60,width: 60,color:Colors.red,),
          //     Container(height: 60,width: 60,color:Colors.blue,),
          //     Container(height: 60,width: 60,color:Colors.yellow,),
          //     Container(height: 60,width: 60,color:Colors.green,),
          //     Container(height: 60,width: 60,color:Colors.orange,),
          //   ],
          // ),
    // child: Row(
    //
    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //   children: [
    //     Container(height: 60,width: 60,color:Colors.red,),
    //     Container(height: 60,width: 60,color:Colors.blue,),
    //     Container(height: 60,width: 60,color:Colors.yellow,),
    //     Container(height: 60,width: 60,color:Colors.green,),
    //     Container(height: 60,width: 60,color:Colors.orange,),
    //   ],
    // ),

          child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(height: 60,width: 60,color:Colors.red,),
              Container(height: 60,width: 60,color:Colors.blue,),
              Container(height: 60,width: 60,color:Colors.yellow,),
              Container(height: 60,width: 60,color:Colors.green,),
              Container(height: 60,width: 60,color:Colors.orange,),
            ],
          ),
        ),
      ),
    );
  }
}
