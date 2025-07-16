import 'package:my_assistance/app_import.dart';

class AiAssistantController extends GetxController {
  RxString selectedCategory = 'All'.obs;
  List<String> categoryList = [
    StringConstant.all,
    StringConstant.writing,
    StringConstant.creative,
    StringConstant.business,
    StringConstant.socialMedia,
    StringConstant.developer,
    StringConstant.personal,
    StringConstant.others
  ];
  List<AiAssistanceModel> dataList = [
    AiAssistanceModel(
      title: StringConstant.writing,
      categoryList: [
        CategoryModel(
            title: StringConstant.writeAnArticles,
            image: AssetConstant.imgWriteArticles,
            subTitle: StringConstant.generateWellWrittenArticlesOnAnyTopic),
        CategoryModel(
            title: StringConstant.summarizeTLDR,
            image: AssetConstant.imgWriteArticles,
            subTitle: StringConstant.extractKeyPointsFromLongText)
      ],
    ),   AiAssistanceModel(
      title: StringConstant.creative,
      categoryList: [
        CategoryModel(
            title: StringConstant.storyTeller,
            image: AssetConstant.imgWriteArticles,
            subTitle: StringConstant.generateStoriesFromAnyGivenTopic),
        CategoryModel(
            title: StringConstant.poems,
            image: AssetConstant.imgWriteArticles,
            subTitle: StringConstant.generatePoemsFromAnyGivenTopic)
      ],
    ),   AiAssistanceModel(
      title: StringConstant.business,
      categoryList: [
        CategoryModel(
            title: StringConstant.emailWriter,
            image: AssetConstant.imgWriteArticles,
            subTitle: StringConstant.generateTemplatesForEmail),
        CategoryModel(
            title: StringConstant.answerInterviewer,
            image: AssetConstant.imgWriteArticles,
            subTitle: StringConstant.generateAnswersToInterviewQuestions)
      ],
    ),   AiAssistanceModel(
      title: StringConstant.socialMedia,
      categoryList: [
        CategoryModel(
            title: StringConstant.linkedIn,
            image: AssetConstant.imgWriteArticles,
            subTitle: StringConstant.createAttentionPostsOnLinkedIn),
        CategoryModel(
            title: StringConstant.instagram,
            image: AssetConstant.imgWriteArticles,
            subTitle: StringConstant.writeCaptionsTatAttractAudience)
      ],
    ),   AiAssistanceModel(
      title: StringConstant.developer,
      categoryList: [
        CategoryModel(
            title: StringConstant.writeCode,
            image: AssetConstant.imgWriteArticles,
            subTitle: StringConstant.writeAppAndWebsitesInAnyLanguage),
        CategoryModel(
            title: StringConstant.explainCode,
            image: AssetConstant.imgWriteArticles,
            subTitle: StringConstant.explainComplicatedCodeSnippests)
      ],
    ),   AiAssistanceModel(
      title: StringConstant.personal,
      categoryList: [
        CategoryModel(
            title: StringConstant.birthDay,
            image: AssetConstant.imgWriteArticles,
            subTitle: StringConstant.createSincereBirthdayWishesForLoved),
        CategoryModel(
            title: StringConstant.apology,
            image: AssetConstant.imgWriteArticles,
            subTitle: StringConstant.makeAnApologyForTheMistakes)
      ],
    ), AiAssistanceModel(
      title: StringConstant.others,
      categoryList: [
        CategoryModel(
            title: StringConstant.createConversation,
            image: AssetConstant.imgWriteArticles,
            subTitle: StringConstant.createConversationTemplates),
        CategoryModel(
            title: StringConstant.tellAJoke,
            image: AssetConstant.imgWriteArticles,
            subTitle: StringConstant.writeFunnyJokesToTellFriends)
      ],
    ),
  ];


  void categoryOnTap(String category) {
    selectedCategory.value = category;
  }
}
