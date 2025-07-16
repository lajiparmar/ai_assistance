import 'package:my_assistance/app_import.dart';

class AiAssistancePage extends GetView<AiAssistantController> {
  const AiAssistancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: _bodyView(),
    );
  }

  Widget _bodyView() {
    return Column(
      children: [
        const SizedBox(height: 40),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: LogoAppbar(
            title: StringConstant.aiAssistants,
          ),
        ),
        const SizedBox(height: 20),
        categoryView(),
        const SizedBox(height: 20),
        Expanded(child: assistanceListView()),
      ],
    );
  }

  Widget categoryView() {
    return SizedBox(
      height: 40,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: controller.categoryList.length,
          itemBuilder: (context, index) {
            String category = controller.categoryList[index];
            bool isSelected = controller.selectedCategory.value == category;
            bool isFirst = index == 0;
            bool isLast = index == controller.categoryList.length - 1;
            return InkWell(
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                    left: isFirst ? 20 : 10, right: isLast ? 20 : 0),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                decoration: BoxDecoration(
                  color: isSelected
                      ? ThemeHelper.primaryColor
                      : ColorConstant.colorWhite,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    color: isSelected
                        ? ThemeHelper.primaryColor
                        : ColorConstant.colorLightBlueGray,
                  ),
                ),
                child: AppText(
                  category,
                  fontColor: isSelected
                      ? ColorConstant.colorWhite
                      : ColorConstant.colorDarkBlue,
                  fontWeight: FontWeight.w600,
                ),
              ),
            );
          }),
    );
  }

  Widget assistanceListView() {
    return ListView.builder(
        itemCount: controller.dataList.length,
        padding: const EdgeInsets.all(15),
        itemBuilder: (context, index) {
          AiAssistanceModel aiAssistanceModel = controller.dataList[index];
          return assistanceView(aiAssistanceModel);
        });
  }

  Widget assistanceView(AiAssistanceModel aiAssistanceModel) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          aiAssistanceModel.title,
          fontWeight: FontWeight.w600,
          fontSize: 22,
        ),
        const SizedBox(height: 10),
        GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: aiAssistanceModel.categoryList.length,
            padding: EdgeInsets.zero,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.78,
                crossAxisSpacing: 20),
            itemBuilder: (context, index) {
              CategoryModel model = aiAssistanceModel.categoryList[index];
              return featuresView(model);
            })
      ],
    );
  }

  Widget featuresView(CategoryModel model) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: ColorConstant.colorVeryLightGray,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  border: Border.all(color: ColorConstant.colorLightBlueGray),
                  borderRadius: BorderRadius.circular(16)),
              child: AppImage(
                image: model.image,
                height: 35,
                width: 35,
              )),
          const SizedBox(height: 8),
          AppText(
            model.title,
            fontWeight: FontWeight.w600,
            fontSize: 14,
            maxLine: 2,
          ),
          const SizedBox(height: 8),
          AppText(
            model.subTitle,
            fontColor: ColorConstant.colorDarkGray,
            fontSize: 12,
            maxLine: 4,
          )
        ],
      ),
    );
  }
}
