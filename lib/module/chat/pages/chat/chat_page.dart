import 'package:my_assistance/app_import.dart';

class ChatPage extends GetView<ChatController> {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: _bodyView(controller),
      appBar: const CommonAppBar(title: StringConstant.ralaAi),
    );
  }

  Widget _bodyView(ChatController controller) {
    return Padding(
      padding: const EdgeInsets.all(24.0).copyWith(top: 0),
      child: Column(
        children: [
          Expanded(
            child: controller.chatList.isEmpty
                ? Center(child: emptyChatView())
                : Column(
                    children: [
                      Expanded(child: chatView(controller)),
                      stopTextGeneratingView(),
                    ],
                  ),
          ),
          _textFieldView(controller),
        ],
      ),
    );
  }

  Widget chatView(ChatController controller) {
    return ListView.builder(
        shrinkWrap: true,
        controller: controller.scrollController,
        itemCount: controller.chatList.length,
        itemBuilder: (context, index) {
          String chat = controller.chatList[index];
          return index.isOdd ? senderChatView(chat) : userChatView(chat);
        });
  }

  Widget userChatView(String chat) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20, left: 30),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
      decoration: const BoxDecoration(
          color: ColorConstant.colorDarkBlue,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(5))),
      child: AppText(
        chat,
        fontColor: ColorConstant.colorWhite,
      ),
    );
  }

  Widget senderChatView(String chat) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0, right: 20),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
              decoration: const BoxDecoration(
                  color: ColorConstant.colorGrey,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(5))),
              child: AppText(chat),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          const Column(
            children: [
              AppImage(image: AssetConstant.icCopy, height: 15, width: 15),
              SizedBox(
                height: 10,
              ),
              AppImage(
                image: AssetConstant.icShare,
                height: 15,
                width: 15,
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _textFieldView(ChatController controller) {
    return Row(
      children: [
        Expanded(
          child: AppTextField(
            controller: controller.searchController,
            fillColor: ColorConstant.colorGreyScale100,
            textColor: ColorConstant.colorMediumGray,
            cursorColor: ColorConstant.colorMediumGray,
          ),
        ),
        const SizedBox(width: 10),
        Container(
          padding: const EdgeInsets.all(13),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: ColorConstant.appPrimary,
          ),
          child: const AppImage(
            image: AssetConstant.icSend,
            height: 20,
            width: 20,
          ),
        )
      ],
    );
  }

  Widget emptyChatView() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppImage(image: AssetConstant.imgLogo),
        AppText(
          StringConstant.welcomeToRALAAi,
          fontColor: ColorConstant.colorMediumGray,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        )
      ],
    );
  }

  Widget stopTextGeneratingView() {
    return InkWell(
      onTap: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: ColorConstant.colorLightPeach)),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 18,
                  width: 18,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: const LinearGradient(colors: [
                        ColorConstant.colorAmber,
                        ColorConstant.colorLightPeach
                      ], begin: Alignment.bottomLeft, end: Alignment.topRight)),
                ),
                const SizedBox(
                  width: 10,
                ),
                const AppText(
                  StringConstant.stopGeneratingText,
                  fontColor: ColorConstant.colorDarkGray,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
