class ChatModel {
  String chat;
  bool isUser;
  ChatModel({
    required this.chat,
    required this.isUser,
  });
  ChatModel fromJson(Map<String, dynamic> json) {
    return ChatModel(
      chat: json['previous_chat'],
      isUser: json['isUser'],
    );
  }

  Map<String, dynamic> toJson(ChatModel model) {
    return {
      'previous_chat': chat,
      'isUser': isUser,
    };
  }
}
