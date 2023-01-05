import 'package:dialog_flowtter/dialog_flowtter.dart';
import 'package:flutter/material.dart';
import 'package:speech2face/Utils/colors.dart';
import 'package:speech2face/Widgets/oval_design_logo.dart';
import 'messages.dart';

class ChatbotScreen extends StatefulWidget {
  const ChatbotScreen({super.key});

  @override
  State<ChatbotScreen> createState() => _ChatbotScreenState();
}

class _ChatbotScreenState extends State<ChatbotScreen> {
  late DialogFlowtter
      _dialogFlowtter; // late Initialization of the dialogflowtter

  final TextEditingController _controller = TextEditingController();

  List<Map<String, dynamic>> messages = [];
  // aik list jismay Map aye yani {:} aur isme first string ho second kuch bhi hoskta hai so dynamic lelia

  @override
  void initState() {
    // initializing the dialogflowtter
    DialogFlowtter.fromFile().then((instance) => _dialogFlowtter = instance);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          const OvalDesignLogo(
              description: "   Let's Chat!",
              assetlocation: "assets/vectors/chat.svg"),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: MessagesScreen(messages: messages),
          ),
          Container(
            color: Coloors.kSecondaryColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 14,
              ),
              child: Row(children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {
                    sendMessage(_controller.text);
                    _controller.clear();
                  },
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }

  sendMessage(String text) async {
    if (text.isEmpty) {
      // debugPrint('Message is empty');
    } else {
      setState(() {
        // print("men msg apka add krne lga hun vroo");
        addMessage(Message(text: DialogText(text: [text])), true);
      });

      // print("abhi tk code chal rha hai");
      DetectIntentResponse response = await _dialogFlowtter.detectIntent(
          queryInput: QueryInput(text: TextInput(text: text)));

      if (response.message == null) return;
      setState(() {
        addMessage(response.message!);
      });
    }
  }

  void addMessage(Message message, [bool isUserMessage = false]) {
    messages.add({
      'message': message,
      'isUserMessage': isUserMessage,
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _dialogFlowtter.dispose();
    super.dispose();
  }
}
