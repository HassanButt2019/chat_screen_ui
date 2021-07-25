import 'package:flutter/material.dart';
import 'package:system_test/model/chatmsg.dart';

class SenderMsg extends StatelessWidget {

 
   SenderMsg({Key key,this.chatMessage}) : super(key: key);

  ChatMessage chatMessage;
  @override
  Widget build(BuildContext context) {
    return Container(
               padding:
                            EdgeInsets.only(left: 95, right: 14, top: 5, bottom: 0),
      child: Align(
        alignment: Alignment.topRight,
        
            child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(right: 10.0),
                                            child: Text("11:02 Am"),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                topRight: Radius.circular(10),
                                                bottomLeft: Radius.circular(10),
                                                bottomRight: Radius.circular(0),
                                              ),
                                              color: (chatMessage.messageType ==
                                                      "receiver"
                                                  ? Colors.blue
                                                  : Colors.grey[300]),
                                            ),
                                            padding: EdgeInsets.all(16),
                                            child: Text(
                                              chatMessage.messageContent,
                                              style: TextStyle(fontSize: 15),
                                            ),
                                          ),
                                        ],
                                      ),
      ),
    );
  }
}