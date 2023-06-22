import '../../../app/index.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorManager.primary,
        title: Utils.popinMedText(
          'Chat',
          color: ColorManager.white,
          fontSize: 18.sp,
        ),
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            child: Consumer<ChatViewModel>(
              builder: (context, viewModel, _) => ListView.builder(
                reverse: true,
                itemCount: viewModel.messages.length,
                itemBuilder: (_, int index) =>
                    ChatMessage(message: viewModel.messages[index]),
              ),
            ),
          ),
          const Divider(height: 1.0),
          Consumer<ChatViewModel>(
            builder: (context, viewModel, _) => _buildTextComposer(viewModel),
          ),
        ],
      ),
    );
  }

  Widget _buildTextComposer(ChatViewModel viewModel) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0.r),
      child: Row(
        children: <Widget>[
          Flexible(
            child: TextField(
              controller: viewModel.textController,
              decoration: const InputDecoration.collapsed(
                hintText: 'Send a message',
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: () => viewModel.handleSubmitted(),
          ),
        ],
      ),
    );
  }
}

class ChatMessage extends StatelessWidget {
  final String message;
  final bool isMessageSent;
  final bool isMessageSeen;

  const ChatMessage({
    Key? key,
    required this.message,
    this.isMessageSent = false,
    this.isMessageSeen = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isUserMessage = message.startsWith('You:');

    return Container(
      margin: EdgeInsets.all(15.0.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: isUserMessage
                  ? CrossAxisAlignment.end
                  : CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  isUserMessage ? 'Username' : 'Kitchen',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: isUserMessage ? TextAlign.end : TextAlign.start,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          message,
                          textAlign:
                              isUserMessage ? TextAlign.end : TextAlign.start,
                        ),
                      ),
                      if (isUserMessage) const SizedBox(width: 5.0),
                      if (isUserMessage && isMessageSent)
                        const Icon(
                          Icons.done,
                          size: 16.0,
                          color: Colors.grey,
                        ),
                      if (isUserMessage && isMessageSeen)
                        const Icon(
                          Icons.done_all,
                          size: 16.0,
                          color: Colors.blue,
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChatViewModel extends ChangeNotifier {
  TextEditingController textController = TextEditingController();
  List<String> messages = [];

  void handleSubmitted() {
    String text = textController.text;
    textController.clear();

    // Prefix user message with "You:"
    String userMessage = 'You: $text';

    messages.insert(0, userMessage);

    // Simulating dummy response
    Future.delayed(const Duration(seconds: 1), () {
      String reply = 'This is a dummy reply.';
      messages.insert(0, reply);
      notifyListeners();
    });
  }
}
