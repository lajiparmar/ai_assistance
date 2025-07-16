class AiAssistanceModel {
  String title;
  List<CategoryModel> categoryList;
  AiAssistanceModel({
    required this.title,
    required this.categoryList,
  });
}

class CategoryModel {
  String title;
  String subTitle;
  String image;
  CategoryModel({
    required this.title,
    required this.image,
    required this.subTitle,
  });
}
