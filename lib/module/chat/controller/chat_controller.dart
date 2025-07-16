import 'package:my_assistance/app_import.dart';

class ChatController extends GetxController {
  TextEditingController searchController = TextEditingController();
  ScrollController scrollController = ScrollController();
  RxList<String> chatList = <String>[
    'Hello',
    'How are you',
    'Fine',
    'Can you work perfectly',
    'hdi',
    'hi',
    'hi',
    'hi',
    'hi',
    'hi',
    'hi',
    'hi',
    'hi'
  ].obs;
  @override
  void onInit() {
    super.onInit();
    WidgetsBinding.instance.addPostFrameCallback((_) {
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
    scrollController.animateTo(scrollController.position.maxScrollExtent,
        duration: const Duration(seconds: 1), curve: Curves.bounceIn);
  }

  @override
  void onClose() {
    searchController.dispose();
    scrollController.dispose();
    super.onClose();
  }

  // void getResponse() async {
  //   try {
  //     Map<String, dynamic> data = {
  //       "model": "deepseek/deepseek-chat:free",
  //       "messages": [
  //         {"role": "user", "content": "What is the meaning of life?"}
  //       ]
  //     };
  //
  //     var response = await http.post(
  //       Uri.parse('https://openrouter.ai/api/v1/chat/completions'),
  //       headers: {
  //         "Content-Type": "application/json", // Ensure JSON content type
  //         "Authorization": "Bearer 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" // Add your API key
  //       },
  //       body: jsonEncode(data), // Convert Map to JSON string
  //     );
  //
  //     print('Response body is ---> ${response.body}');
  //   } catch (error) {
  //     print('Error is ---> ${error.toString()}');
  //   }
  // }
}
