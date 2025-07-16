import 'package:my_assistance/app_import.dart';
import 'chat_model.g.dart';
@HiveType(typeId: 0)
class UserModel {
  @HiveField(0)
  final String chat;

  @HiveField(1)
  final String time;

  @HiveField(2)
  final bool isUser;

  @HiveField(3)
  final bool chatId;

  const UserModel(this.time, this.chat, this.isUser, this.chatId);
}
