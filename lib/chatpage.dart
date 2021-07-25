import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:system_test/model/chatmsg.dart';
import 'package:system_test/model/chatmsg.dart';

import 'package:system_test/screens/receiver.dart';
import 'package:system_test/screens/sender.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {

  List<ChatMessage> messages = [
     ChatMessage(messageContent: "Hello,r", messageType: "receiver"),
     ChatMessage(messageContent: "How have you been?How have you been?How have you been?How have you been?How have you been?", messageType: "sender"),
    ChatMessage(messageContent: "Hey Kriss, I am doing fine dude. wbu?", messageType: "sender"),
    ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
    ChatMessage(messageContent: "Is there any thing wrong?", messageType: "sender"),
     ChatMessage(messageContent: "Hello, Will", messageType: "receiver"),
    ChatMessage(messageContent: "How have you been?", messageType: "receiver"),
    ChatMessage(messageContent: "Hey Kriss, I am doing fine dude. wbu?", messageType: "sender"),
    ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
   ChatMessage(messageContent: "How have you been?How have you been?How have you been?How have you been?How have you been?", messageType: "receiver"),

    ChatMessage(messageContent: "Is there any thing wrong?", messageType: "sender"),
     ChatMessage(messageContent: "Hello, Will", messageType: "receiver"),
    ChatMessage(messageContent: "How have you been?", messageType: "receiver"),
    ChatMessage(messageContent: "Hey Kriss, I am doing fine dude. wbu?", messageType: "sender"),
    ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
    ChatMessage(messageContent: "Is there any thing wrong?", messageType: "sender"),
     ChatMessage(messageContent: "Hello, Will", messageType: "receiver"),
    ChatMessage(messageContent: "How have you been?", messageType: "receiver"),
    ChatMessage(messageContent: "Hey Kriss, I am doing fine dude. wbu?", messageType: "sender"),
    ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
    ChatMessage(messageContent: "Is there any thing wrong?", messageType: "sender"),
     ChatMessage(messageContent: "Hello, Will", messageType: "receiver"),
    ChatMessage(messageContent: "How have you been?", messageType: "receiver"),
    ChatMessage(messageContent: "Hey Kriss, I am doing fine dude. wbu?", messageType: "sender"),
    ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
    ChatMessage(messageContent: "Is there any thing wrong?", messageType: "sender"),
     ChatMessage(messageContent: "Hello, Will", messageType: "receiver"),
    ChatMessage(messageContent: "How have you been?", messageType: "receiver"),
    ChatMessage(messageContent: "Hey Kriss, I am doing fine dude. wbu?", messageType: "sender"),
    ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
    ChatMessage(messageContent: "Is there any thing wrong?", messageType: "sender"),
     ChatMessage(messageContent: "Hello, Will", messageType: "receiver"),
    ChatMessage(messageContent: "How have you been?", messageType: "receiver"),
    ChatMessage(messageContent: "Hey Kriss, I am doing fine dude. wbu?", messageType: "sender"),
    ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
    ChatMessage(messageContent: "Is there any thing wrong?", messageType: "sender"),
     ChatMessage(messageContent: "Hello, Will", messageType: "receiver"),
    ChatMessage(messageContent: "How have you been?", messageType: "receiver"),
    ChatMessage(messageContent: "Hey Kriss, I am doing fine dude. wbu?", messageType: "sender"),
    ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
    ChatMessage(messageContent: "Is there any thing wrong?", messageType: "sender"),
  ];



final ScrollController _scrollController = ScrollController();
  bool loading = false , alloweded = false;

  mockFetch() async{
    if(alloweded){
      return;
    }
    setState(() {
      loading = true;
    });
    //  messages.length >=70 ?[] :
    await Future.delayed(Duration(milliseconds: 6));
    // print("HELLO AFTER DELAY");
    

 
    List<ChatMessage> newData = messages.length>= 150 ? [] : List<ChatMessage>.generate(30, (model) =>
       ChatMessage(messageContent: 'Hello ? $model', messageType: model % 2 ==0 ?"receiver":"sender") , 
       
);
if(newData.isNotEmpty){

//   print(alloweded);
// print("HELLO AFTER newdata");

setState(() {
   messages.addAll(newData);
});
 
  // print(messages.length);

}

setState(() {
  loading = false;
  alloweded = newData.isEmpty;
});
  }
  


  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  void initState() {
  
    super.initState();
    // print(messages.length);
    // setState(() {
       mockFetch();
    // });
   
    _scrollController.addListener(() {
      if(_scrollController.position.pixels >= 1500 && !loading ){
         print("New DATA CALL");
        // print(_scrollController.position.pixels);
        // print(_scrollController.position.minScrollExtent);
        // print(_scrollController.position.maxScrollExtent*0.80);
        mockFetch();
      }


    });
  }


  TextEditingController text = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                  
                  child: Column(

                    children: [
                      Expanded(
                                              child: ListView.builder(
                                                controller: _scrollController,
                                                reverse: true,    
                                                itemCount: messages.length,
                                                shrinkWrap: true,
                                                padding: EdgeInsets.only(top: 10, bottom: 10),
                                                physics: ScrollPhysics(),
                                                itemBuilder: (context, index) {
                                                  // print("LISt MESf $index");
                                                  // print(messages.length);
                                                  


                                                  
                                                  if(messages[index] != null ){
                                                    // print("in condition");
                                                    // print(messages);
                                                    // print("index");
                                                    // print(index);
                                                    if(messages[index].messageType == 'receiver'){
                                                      
                                                    return ReceiverMsg(chatMessage:messages[index],key: UniqueKey(),);
                                                   } else
                                                  {
                                                    return  SenderMsg(chatMessage:  messages[index] , key: UniqueKey());
                                                  }
                                                   
                                                  }


                                              
                                                },
                          ),
                      ),
                                  Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color.fromRGBO(37, 143, 213, 1),
                                      // Color.fromRGBO(25 ,136 ,216, 1),

                                      Color.fromRGBO(226, 98, 166, 1),
                                    ],
                                  ),
                                  color: Colors.black),
                              child: Center(
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.add, color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(width:10),
                            Container(
                                width: MediaQuery.of(context).size.width * 0.60,
                                child: Card(
                                    color: Colors.grey[200],
                                    margin:
                                        EdgeInsets.only(right: 2, left: 2, bottom: 8),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25)),
                                    child: TextFormField(
                                      controller: text,
                                      textAlignVertical: TextAlignVertical.center,
                                      keyboardType: TextInputType.multiline,
                                      minLines: 1,
                                      
                                      decoration: InputDecoration(
                                        border: InputBorder.none,

                                        hintText: "Type a message here...",
                                        contentPadding: EdgeInsets.all(10),
                                        // ignore: missing_required_param
                                      ),
                                    ))),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                    icon: Icon(
                                      Icons.mic_outlined,
                                      size: 30,
                                    ),
                                    onPressed: () {}),
                                IconButton(
                                    icon: Icon(
                                      Icons.camera_alt_outlined,
                                      size: 30,
                                    ),
                                    onPressed: () {}),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
          }
        )
    );
          // }
          // else{
          //   return Container(
          //     child:Center(child:CircularProgressIndicator())
          //   );
          // }
          }
}
    
