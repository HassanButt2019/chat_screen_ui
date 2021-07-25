import 'package:flutter/material.dart';
import 'package:system_test/chatpage.dart';

void main() {
  runApp(ChatApp());
}



class ChatApp extends StatefulWidget {

  @override
  _ChatAppState createState() => _ChatAppState();
}

class _ChatAppState extends State<ChatApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        
        appBar: AppBar(
          flexibleSpace: Container(
          decoration: new BoxDecoration(
            gradient: new LinearGradient(
                colors: [
                  const Color(0xFF3366FF),
                  const Color(0xFF00CCFF),
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(2.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
        ),
      
          title: Column(
            children:[
              Text("Group Member",style:TextStyle(fontWeight: FontWeight.bold , fontSize: 16.0)),
              SizedBox(height:5.0),
            ]  
          ),
          leading: IconButton (icon:Icon(Icons.arrow_back), onPressed: () {  },),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right:15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.video_call_outlined,color: Colors.white, size: 30,),
                  SizedBox(width:15),
                  Icon(Icons.call_outlined ,color: Colors.white, size: 30)
                ],
              ),
            ),
          ],
        ),
        body: ChatPage(),
      ),

    ) ;
  }
}
