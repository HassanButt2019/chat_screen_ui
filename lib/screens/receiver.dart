import 'package:flutter/material.dart';
import 'package:flutter_reaction_button/flutter_reaction_button.dart';
import 'package:system_test/example_data.dart' as Example;
import 'package:system_test/model/chatmsg.dart';

class ReceiverMsg extends StatefulWidget {
 ReceiverMsg({Key key,this.chatMessage}) : super(key: key);

  ChatMessage chatMessage;

  @override
  _ReceiverMsgState createState() => _ReceiverMsgState();
}

class _ReceiverMsgState extends State<ReceiverMsg> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 55, top: 5, bottom: 5),
      child: Align(
        alignment: Alignment.topLeft,
        child: Row(
          children: [
            CircleAvatar(
              radius: 20,
              child: Text("BM"),
            ),
            SizedBox(
              width: 8,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 20),
                  child: Text("Bhavesh Mehra, 11:02 Am"),
                ),
                SizedBox(
                  height: 5,
                ),
                Stack(children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      color: (widget.chatMessage.messageType == "receiver"
                          ? Colors.blue
                          : Colors.grey[300]),
                    ),
                    padding: EdgeInsets.all(16),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 40.0),
                      child: Text(
                        widget.chatMessage.messageContent,
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 1,
                    right: 2,
                    child: Builder(
                      builder: (ctx) => FlutterReactionButton(
                        onReactionChanged: (reaction, index) {},
                        reactions: Example.reactions,
                        initialReaction: Reaction(
                            icon: Icon(Icons.emoji_emotions_outlined,
                                color: Colors.white)),
                        boxColor: Colors.white,
                        boxRadius: 10,
                        boxDuration: Duration(milliseconds: 500),
                        boxAlignment: AlignmentDirectional.bottomEnd,
                      ),
                    ),
                  )
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
