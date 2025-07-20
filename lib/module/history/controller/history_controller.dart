import 'package:my_assistance/app_import.dart';

class HistoryController extends GetxController {
  List<ConversationModel> historyList = [];
  ChatService chatService = ChatService();
  @override
  void onInit() {
    super.onInit();
  }

  void getChatList() {
    historyList = chatService.getChatList();
  }
}
