import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions:[
            IconButton(icon: Icon(Icons.menu,color:Colors.tealAccent),onPressed: (){},)
          ]
        ),
        body:Padding(
          padding: const EdgeInsets.only(top:25.0,left: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            FlatButton(
              shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20)),
              color: Colors.tealAccent,
              onPressed: (){
              print("I am flat button");
            }, child: Text("Flat Button")),
            SizedBox(height:10),
            FlatButton.icon(
              shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20)),
              color: Colors.tealAccent, 
              onPressed: (){},
             icon: Icon(Icons.settings), label: Text("Flat Icon Button")),
             SizedBox(height:10),
             RaisedButton.icon(
               icon: Icon(Icons.ac_unit,color:Colors.white),
               shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(80)),
               elevation: 20,
               color: Colors.tealAccent,
               label:Text("AC +"),
               onPressed: (){
                 print("raised button");
               }),
               InkWell(
                 onTap: (){print("I am inkwell bro");},
                                child: Container(
                   height:100,width:200,
                   color:Colors.tealAccent,
                   child:Center(child: Text("Hello I am Inkwell"))
                 ),
               ),
               SizedBox(height:20),
           GestureDetector(
            onTap: (){print("I am Tapped");},
            //onHorizontalDragEnd:(value)=>print(value) ,
            onVerticalDragDown: (value)=>print(value),
             child:Container(
               height: 100,width: 200,
               decoration: BoxDecoration(
                 color:Colors.tealAccent,
                 shape:BoxShape.circle
               ),
               child: Center(child:Text("Gestures")),)
           )
          ],),
        )
      ),
   );
  }

}