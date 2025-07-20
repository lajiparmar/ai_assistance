import 'package:my_assistance/app_import.dart';

class ChatService{

  void addInitialChat(String chatId,String chatTitle,String chat,bool isUser) async{
    var conversation = ConversationModel(
      id: chatId, // Unique ID
      title: chatTitle,
      createdAt: DateTime.now(),
      messages: [
        ChatMessageModel(
          sender: isUser,
          message: chat,
        ),
      ],
    );

    var box = Hive.box<ConversationModel>('conversations');
    await box.put(conversation.id, conversation);
  }
  void addMessage(String conversationId, ChatMessageModel newMsg) async {
    var box = Hive.box<ConversationModel>('conversations');
    var conversation = box.get(conversationId);

    if (conversation != null) {
      conversation.messages.add(newMsg);
      await conversation.save();
    }
  }
 List<ConversationModel> getChatList() {
   var box = Hive.box<ConversationModel>('conversations');
   var conversations = box.values.toList();
   print('conversations length is ${conversations.length}');
   for(var data in conversations){
     print('conver data is ${data.title}');
     print('conver data is ${data.messages.length}');
   }
   return conversations;
 }
}