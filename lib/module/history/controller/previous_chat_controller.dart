import 'package:my_assistance/app_import.dart';

class PreviousChatController extends GetxController {
  TextEditingController searchController = TextEditingController();
  ScrollController scrollController = ScrollController();
  String chatID = DateTime.now().microsecondsSinceEpoch.toString();
  RxBool isAdding = false.obs;
  RxList<ChatMessageModel> chatList = <ChatMessageModel>[].obs;
  @override
  void onInit() {
    print('previous_chat list empty or not ${chatList.isEmpty}');
    super.onInit();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      getChatList();
      scrollToBottom();
      //  controller.getResponse();
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  void scrollToBottom() {
    if(chatList.isNotEmpty) {
      scrollController.animateTo(scrollController.position.maxScrollExtent,
          duration: const Duration(seconds: 1), curve: Curves.bounceIn);
    }
  }

  @override
  void onClose() {
    searchController.dispose();
    scrollController.dispose();
    super.onClose();
  }
 void getChatList(){
    ConversationModel model=Get.arguments;
    print('model is ${model.messages.length}');
 }
  void addChat(String chat) {
    String senderChat = chat * 10;
    ChatService().addMessage(chatID, ChatMessageModel(message: chat,sender:true ));
    ChatService().addMessage(chatID, ChatMessageModel(message: senderChat,sender:false ));

    isAdding.value = true;
    chatList.add(ChatMessageModel( sender: true, message: chat));
    chatList.add(ChatMessageModel( sender: false, message: senderChat));
    Future.delayed(const Duration(seconds: 2), () {
      isAdding.value = false;
    });
    searchController.clear();
  }
}
