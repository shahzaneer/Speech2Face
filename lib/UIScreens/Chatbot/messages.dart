import 'package:flutter/material.dart';
import 'package:speech2face/Utils/colors.dart';

class MessagesScreen extends StatefulWidget {
  final List messages;

  const MessagesScreen({super.key, required this.messages});

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    return ListView.separated(
        itemBuilder: ((context, index) {
          return Container(
            margin: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: widget.messages[index]["isUserMessage"]
                  ? MainAxisAlignment.end
                  : MainAxisAlignment.start,
                  crossAxisAlignment: widget.messages[index]["isUserMessage"]
                  ? CrossAxisAlignment.end
                  : CrossAxisAlignment.start,
              
              children: [
                Expanded(
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: const Radius.circular(20),
                        topRight: const Radius.circular(20),
                        topLeft: Radius.circular(
                            widget.messages[index]['isUserMessage'] ? 20 : 0),
                        bottomRight: Radius.circular(
                            widget.messages[index]['isUserMessage'] ? 0 : 20),
                      ),
                      color: widget.messages[index]["isUserMessage"]
                          ? Colors.grey.withOpacity(0.2)
                          : Coloors.kPrimaryColor.withOpacity(0.8),
                    ),
                    constraints: BoxConstraints(minWidth: w * 2 / 3),
                    child: Text(widget.messages[index]["message"].text.text[0]),
                  ),
                )
              ],
            ),
          );
        }),
        separatorBuilder: ((context, index) => const Padding(
              padding: EdgeInsets.only(top: 10),
            )),
        itemCount: widget.messages.length);
  }
}
