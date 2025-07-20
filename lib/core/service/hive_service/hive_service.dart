import 'package:hive/hive.dart';
import 'package:my_assistance/data/hive_model/chat_model/chat_model.dart';


mixin HiveHelper{
  static void registerTypeAdaptor(){
    Hive.registerAdapter(ChatMessageModelAdapter());
    Hive.registerAdapter(ConversationModelAdapter());
  }
  static Future<void> openBox()async{
    await Hive.openBox<ConversationModel>('conversations');
  }

}