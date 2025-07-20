import 'package:hive/hive.dart';
part 'chat_model.g.dart';
@HiveType(typeId: 0)
class ChatMessageModel extends HiveObject {
  @HiveField(0)
  bool sender;

  @HiveField(1)
  String message;


  ChatMessageModel({
    required this.sender,
    required this.message,
  });
}

@HiveType(typeId: 1)
class ConversationModel extends HiveObject {
  @HiveField(0)
  String id;

  @HiveField(1)
  String title;

  @HiveField(2)
  DateTime createdAt;

  @HiveField(3)
  List<ChatMessageModel> messages;

  ConversationModel({
    required this.id,
    required this.title,
    required this.createdAt,
    required this.messages,
  });
}
